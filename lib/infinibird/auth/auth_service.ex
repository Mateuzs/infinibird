defmodule Infinibird.Auth.AuthService do
  # These values must be moved in a configuration file
  # good way to generate:
  # :crypto.strong_rand_bytes(30)
  # |> Base.url_encode64
  # |> binary_part(0, 30)
  @seed "user salt"
  @secret "faSlfzE4g8k7kTxvFAgeBvAVA0OR1vkPbTi8mZ5m"

  @spec generate_token(any()) :: any()
  def generate_token(id) do
    Phoenix.Token.sign(@secret, @seed, id, max_age: 86400)
  end

  @spec verify_token(nil | binary()) ::
          {:error, :expired | :invalid | :missing} | {:ok, nil | binary()}
  def verify_token(token) do
    case Phoenix.Token.verify(@secret, @seed, token, max_age: 86400) do
      {:ok, _id} -> {:ok, token}
      error -> error
    end
  end

  def get_auth_token(conn) do
    case extract_token(conn) do
      {:ok, token} ->
        verify_token(token)

      error ->
        error
    end
  end

  defp extract_token(conn) do
    case conn.assigns do
      map when map === %{} ->
        {:error, nil}

      map ->
        case map.auth do
          nil ->
            {:error, nil}

          token ->
            {:ok, token}
        end
    end
  end

  # defp get_token_from_header(auth_header) do
  #   {:ok, reg} = Regex.compile("Bearer\:?\s+(.*)$", "i")

  #   case Regex.run(reg, auth_header) do
  #     [_, match] -> {:ok, String.trim(match)}
  #     _ -> {:error, nil}
  #   end
  # end
end