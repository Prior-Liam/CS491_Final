defmodule StoreManagementSystem.Sms.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :inventory_count, :integer
    field :name, :string
    field :retail_price, :integer
    field :vendor_name, :string
    field :whole_sale_price, :integer
    belongs_to :store, Store
    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :vendor_name, :whole_sale_price, :retail_price, :inventory_count])
    |> validate_required([:name, :vendor_name, :whole_sale_price, :retail_price, :inventory_count])
  end
end
