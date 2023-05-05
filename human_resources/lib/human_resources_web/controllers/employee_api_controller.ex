defmodule HumanResourcesWeb.EmployeeApiController do
  alias HumanResources.Hr
use HumanResourcesWeb, :controller
def index(conn, _params) do
  employees = Hr.list_employees()
  render(conn,:index,employees: employees)
  end
end
