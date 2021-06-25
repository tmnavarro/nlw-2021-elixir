defmodule WabanexWeb.IMCControllerTest do
  use WabanexWeb.ConnCase, async: true

  describe "index/2" do
    test "return imc info", %{conn: conn} do

      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      assert %{
        "result" => %{
          "User1" => 25.53544639152223,
          "User2" => 21.874999999999996,
          "User3" => 35.50295857988165,
          "User4" => 37.03703703703704
        }
      } == response
    end
  end
end
