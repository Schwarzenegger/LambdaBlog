defmodule LambdaBlog.PostTest do
  use LambdaBlog.ModelCase

  alias LambdaBlog.Post

  @valid_attrs %{text: "some content", title: "some content", user_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
