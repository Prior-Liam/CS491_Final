defmodule StoreManagementWeb.EmployeeApiJSON do
  def index(%{employees: employees}) do
    %{data:
      for (employee <- employees) do
        [%{last_name: employee.last_name},
        %{first_name: employee.first_name},
        %{department: employee.department},
        %{employee_id: employee.employee_id},
        %{hire_date: employee.hire_date}]
      end
    }
  end
end
