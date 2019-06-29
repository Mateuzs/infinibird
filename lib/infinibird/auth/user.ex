defmodule Infinibird.Auth.User do
  use Ecto.Schema
  require Logger
  import Ecto.Changeset

  # alias Comeonin.Bcrypt
  alias Infinibird.Auth.AuthService

  schema "users" do
    field :email, :string
    field :encrypted_password, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:email, :username, :encrypted_password])
    |> validate_required([:email, :username, :encrypted_password])
    |> unique_constraint(:email)
    |> unique_constraint(:username)
  end

  @spec sign_in(any()) :: any()
  def sign_in(key) do
    case AuthService.authorise(key) do
      :authorised ->
        {:ok, "user_id"}

      :unauthorised ->
        {:error, :wrong_key}
    end
  end

  def authenticate_user(conn) do
    current_user_token = Plug.Conn.get_session(conn, :current_user_id)

    !!current_user_token
  end

  def sign_out(conn) do
    Infinibird.Cache.delete(Plug.Conn.get_session(conn, :current_user_id))
    Logger.info("Deleted cached user data")

    Plug.Conn.configure_session(conn, drop: true)
  end
end
