defmodule StoreManagementWeb.EmployeeApiController do
  alias StoreManagement.Hr
  use StoreManagementWeb, :controller
  def index(conn, _params) do
    employees = Hr.list_employees()
    render(conn,:index,employees: employees)
  end
end
