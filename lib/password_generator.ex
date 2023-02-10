defmodule PasswordGenerator do
  @moduledoc """
  Documentation for `PasswordGenerator`.
   Strong password generator meeting top industry recommendation.
  """

  @doc """
  Generate random strong password.

  ## Examples

      iex> PasswordGenerator.generate(length)
      ""

  """
  @minimum_password_length 6
  @lowercase Enum.map(?a..?z, &<<&1>>)
  @uppercase Enum.map(?A..?Z, &<<&1>>)
  @number Enum.map(0..9, &Integer.to_string(&1))
  @symbols String.split("! # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~", " ",
             trim: true
           )
  def password_generator(length) do
    case length >= @minimum_password_length do
      false ->
        validate_password_length(false)

      true ->
        nil
    end
  end

  defp generator(length) do
  end

  defp validate_password_length(false, _options) do
    {:error, "Only integer are allowed"}
  end

  defp validate_password_length(length, options) do
    length = options["length"] |> String.trim() |> String.to_integer()
  end
end
