defmodule NF.UserBiodataTest do
  use NF.ModelCase

  alias NF.UserBiodata

  @valid_attrs %{height: "120.5", weight: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = UserBiodata.changeset(%UserBiodata{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = UserBiodata.changeset(%UserBiodata{}, @invalid_attrs)
    refute changeset.valid?
  end
end
