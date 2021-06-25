defmodule Wabanex.UserTest do
  use Wabanex.DataCase, async: true

  alias Wabanex.User

  describe "changeset/1" do
    test "When all params are valid, returns the user" do
      params = %{name: "User", email: "email@s.com", password: "123123"}

      response = User.changeset(params)

      assert %Ecto.Changeset{valid?: true, changes: %{
        email: "email@s.com",
        name: "User",
        password: "123123"
      }, errors: []} = response

    end

    test "When there are invalid params, returns error" do
      params = %{name: "User"}

      response = User.changeset(params)

      assert errors_on(response) == %{email: ["can't be blank"], password: ["can't be blank"]}

    end

  end
end
