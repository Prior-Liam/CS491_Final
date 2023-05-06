defmodule StoreManagementSystem.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :vendor_name, :string
      add :whole_sale_price, :integer
      add :retail_price, :integer
      add :inventory_count, :integer
      add :store_id, references(:stores, on_delete: :nothing)

      timestamps()
    end

    create index(:products, [:store_id])
  end
end