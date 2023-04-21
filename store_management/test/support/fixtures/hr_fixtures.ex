defmodule StoreManagement.HrFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `StoreManagement.Hr` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        department: "some department",
        employee_id: 42,
        first_name: "some first_name",
        hire_date: ~D[2023-04-20],
        last_name: "some last_name"
      })
      |> StoreManagement.Hr.create_employee()

    employee
  end
end
