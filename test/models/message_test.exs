defmodule Exchat.MessageTest do
  use Exchat.ModelCase

  doctest Exchat.Message

  alias Exchat.Message

  @valid_attrs %{text: "some content", channel_id: 123}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Message.changeset(%Message{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Message.changeset(%Message{}, @invalid_attrs)
    refute changeset.valid?
  end
end