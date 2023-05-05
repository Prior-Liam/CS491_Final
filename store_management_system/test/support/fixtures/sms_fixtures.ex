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
end
