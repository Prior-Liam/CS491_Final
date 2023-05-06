defmodule StoreManagementSystem.SmsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `StoreManagementSystem.Sms` context.
  """

  @doc """
  Generate a store.
  """
  def store_fixture(attrs \\ %{}) do
    {:ok, store} =
      attrs
      |> Enum.into(%{
        location: "some location",
        store_id: "some store_id"
      })
      |> StoreManagementSystem.Sms.create_store()

    store
  end

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        inventory_count: 42,
        name: "some name",
        retail_price: 42,
        vendor_name: "some vendor_name",
        whole_sale_price: 42
      })
      |> StoreManagementSystem.Sms.create_product()

    product
  end
end
