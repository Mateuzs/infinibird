defmodule InfinibirdWeb.MapController do
  use InfinibirdWeb, :controller
  alias InfinibirdEngine.Api

  @spec index(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def index(conn, _params) do
    {:ok, data} = Api.get_trip_data()

    render(conn, "index.html", trip_data: data)
  end
end
