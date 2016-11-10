defmodule NF.PageController do
  use NF.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
