defmodule HumanResources.HrFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HumanResources.Hr` context.
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
        hire_date: ~D[2023-05-04],
        last_name: "some last_name"
      })
      |> HumanResources.Hr.create_employee()

    employee
  end
end
