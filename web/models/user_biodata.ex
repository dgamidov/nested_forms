defmodule NF.UserBiodata do
  use NF.Web, :model

  schema "user_biodata" do
    field :weight, :float
    field :height, :float
    belongs_to :user, NF.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:weight, :height])
    |> validate_required([:weight, :height])
  end
end
