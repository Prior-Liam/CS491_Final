defmodule StoreManagementSystem.Sms.Store do
  alias StoreManagementSystem.Sms.Product
  use Ecto.Schema
  import Ecto.Changeset


  schema "stores" do
    field :location, :string
    field :store_id, :string
    has_many :products, Product
    timestamps()
  end

  @doc false
  def changeset(store, attrs) do
    store
    |> cast(attrs, [:store_id, :location])
    |> validate_required([:store_id, :location])
  end
end
