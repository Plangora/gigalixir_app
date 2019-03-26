defmodule GigalixirPhoenix.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :text
      add :title, :string

      timestamps()
    end

  end
end
