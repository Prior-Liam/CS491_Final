defmodule StoreManagementSystem.SmsTest do
  use StoreManagementSystem.DataCase

  alias StoreManagementSystem.Sms

  describe "stores" do
    alias StoreManagementSystem.Sms.Store

    import StoreManagementSystem.SmsFixtures

    @invalid_attrs %{location: nil, store_id: nil}

    test "list_stores/0 returns all stores" do
      store = store_fixture()
      assert Sms.list_stores() == [store]
    end

    test "get_store!/1 returns the store with given id" do
      store = store_fixture()
      assert Sms.get_store!(store.id) == store
    end

    test "create_store/1 with valid data creates a store" do
      valid_attrs = %{location: "some location", store_id: "some store_id"}

      assert {:ok, %Store{} = store} = Sms.create_store(valid_attrs)
      assert store.location == "some location"
      assert store.store_id == "some store_id"
    end

    test "create_store/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sms.create_store(@invalid_attrs)
    end

    test "update_store/2 with valid data updates the store" do
      store = store_fixture()
      update_attrs = %{location: "some updated location", store_id: "some updated store_id"}

      assert {:ok, %Store{} = store} = Sms.update_store(store, update_attrs)
      assert store.location == "some updated location"
      assert store.store_id == "some updated store_id"
    end

    test "update_store/2 with invalid data returns error changeset" do
      store = store_fixture()
      assert {:error, %Ecto.Changeset{}} = Sms.update_store(store, @invalid_attrs)
      assert store == Sms.get_store!(store.id)
    end

    test "delete_store/1 deletes the store" do
      store = store_fixture()
      assert {:ok, %Store{}} = Sms.delete_store(store)
      assert_raise Ecto.NoResultsError, fn -> Sms.get_store!(store.id) end
    end

    test "change_store/1 returns a store changeset" do
      store = store_fixture()
      assert %Ecto.Changeset{} = Sms.change_store(store)
    end
  end
end
