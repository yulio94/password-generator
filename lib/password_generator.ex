defmodule PasswordGenerator do
  @moduledoc """
  Documentation for `PasswordGenerator`.
  """

  @doc """
  Generate random password within the minimum strong password policy.

  ## Examples

      iex> PasswordGenerator.generate()
      ""

  """
  @lowercase Enum.map(?a..?z, &<<&1>>)
  @uppercase Enum.map(?A..?Z, &<<&1>>)
  @number Enum.map(0..9, &Integer.to_string(&1))
  @symbols String.split("! # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~", " ",
             trim: true
           )
  def generate(options) do
    password = ""
  end
end
