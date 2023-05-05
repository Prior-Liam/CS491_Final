defmodule HumanResources.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :first_name, :string
      add :last_name, :string
      add :department, :string
      add :employee_id, :integer
      add :hire_date, :date

      timestamps()
    end
  end
end
