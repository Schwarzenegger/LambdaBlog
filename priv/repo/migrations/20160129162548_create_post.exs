defmodule LambdaBlog.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :text, :string
      add :user_id, :integer

      timestamps
    end

  end
end
