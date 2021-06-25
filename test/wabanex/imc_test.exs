defmodule Wabanex.IMCTest do
  use ExUnit.Case, async: true

  alias Wabanex.IMC

  describe "calculate/1" do
    test "When file exist return data" do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      expected_response = {:ok, %{"User1" => 25.53544639152223, "User2" => 21.874999999999996, "User3" => 35.50295857988165, "User4" => 37.03703703703704}}

      assert response == expected_response
    end

    test "When file not exist return error" do
      params = %{"filename" => "not_found.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "File not found"}

      assert response == expected_response
    end
  end
end
