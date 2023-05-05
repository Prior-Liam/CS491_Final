defmodule StoreManagementSystem.Repo.Migrations.CreateStores do
  use Ecto.Migration

  def change do
    create table(:stores) do
      add :store_id, :string
      add :location, :string

      timestamps()
    end
  end
end
