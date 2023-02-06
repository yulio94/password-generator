defmodule PasswordGeneratorTest do
  alias ElixirLS.LanguageServer.Experimental.Protocol.Types.GeneralCapabilities
  use ExUnit.Case
  doctest PasswordGenerator

  def setup do
    options = %{
      "length" => "10"
    }

    options_type = %{
      lowercase: Enum.map(?a..?z, &<<&1>>),
      uppercase: Enum.map(?A..?Z, &<<&1>>),
      numbers: Enum.map(0..9, &Integer.to_string(&1)),
      symbols:
        String.split("! # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~", " ",
          trim: true
        )
    }

    {:ok, result} = PasswordGenerator.generate(options)

    %{options_type: options_type, result: result}
  end

  test "return a string", %{result: result} do
    assert is_bitstring(result)
  end

  test "return error when length isn't provided" do
    options = %{"invalid" => "false"}
    assert {:error, _error} = PasswordGenerator.generate(options)
  end

  test "return error when length isn't provided" do
    options = %{"length": => "bd"}

    assert {:error, _error} = PasswordGenerator.generate(options)
  end

  test "length of string returned is equals to option provided" do
    length_option = %{"length" => "5"}
    {:ok, result } = PasswordGenerator.generate(length_option)

    assert 5 = String.length(result)
  end

  test "string returned meets secure policy" %{options: options, options_type: options_type} do
    {:ok , result} = PasswordGenerator.generate(options)

    assert String.contains?(result, options_type.lowercase)
    assert String.contains?(result, options_type.uppercase)
    assert String.contains?(result, options_type.numbers)
    assert String.contains?(result, options_type.symbols)
  end

end
