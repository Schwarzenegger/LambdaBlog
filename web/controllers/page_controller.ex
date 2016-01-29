defmodule LambdaBlog.PageController do
  use LambdaBlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
