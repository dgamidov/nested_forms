defmodule NF.User do
  use NF.Web, :model

  schema "users" do
    field :name, :string
    has_one :user_survey, NF.UserSurvey
    has_many :user_biodata, NF.UserBiodata

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
    |> cast_assoc(:user_survey)
    |> cast_assoc(:user_biodata)
  end
end
