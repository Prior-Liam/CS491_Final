defmodule HumanResources.Hr.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do
    field :department, :string
    field :employee_id, :integer
    field :first_name, :string
    field :hire_date, :date
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:first_name, :last_name, :department, :employee_id, :hire_date])
    |> validate_required([:first_name, :last_name, :department, :employee_id, :hire_date])
  end
end
