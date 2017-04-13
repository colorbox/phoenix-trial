defmodule Web.UserView do
  use Web.Web, :view

  def render("index.json", %{users: users}) do
    users
    # %{data: render_many(users, Web.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Web.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,  name: user.name}
      # "uwaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  end
end
