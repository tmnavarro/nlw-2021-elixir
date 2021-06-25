defmodule WabanexWeb.SchemaTest do
  use WabanexWeb.ConnCase, async: true

  alias Wabanex.User

  describe "index/2" do
    test "When a valid id is given, return user", %{conn: conn} do
      params = %{email: "user@server.com", name: "User", password: "123123"}

      {:ok, %User{id: user_id}} = Wabanex.Users.Create.call(params)

      query = """
        {
          getUser(id: "#{user_id}") {
            name,
            email
          }
        }
      """

      response =
        conn
        |> post("/api/graphql", %{query: query})
        |> json_response(:ok)

      assert  %{"data" => %{"getUser" => %{"name" => "User", "email" => "user@server.com"}}} = response

    end

    test "Create user Mutation", %{conn: conn} do

      matation = """
        mutation {
          createUser(input: {name: "user", email: "user2@email.com", password: "asdasd"}) {
            id,
            name,
            email
          }
        }
      """

      response =
        conn
        |> post("/api/graphql", %{query: matation})
        |> json_response(:ok)

      assert  %{
        "data" => %{
          "createUser" => %{
            "id" => _id,
            "email" => "user2@email.com",
            "name" => "user"
          }
        }
      } = response

    end
  end

end
