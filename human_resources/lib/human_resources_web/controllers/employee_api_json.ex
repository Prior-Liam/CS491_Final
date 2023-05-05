defmodule HumanResourcesWeb.EmployeeApiJSON do

  def index(%{employees: employees}) do
    %{data:
      for(employee <- employees) do
        %{first_name: employee.first_name, last_name: employee.last_name, delartment: employee.department, employee_id: employee.employee_id, hire_date: employee.hire_date}
      end
    }
  end
end
