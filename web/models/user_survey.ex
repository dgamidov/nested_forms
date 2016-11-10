defmodule NF.UserSurvey do
  use NF.Web, :model

  schema "user_surveys" do
    field :question, :string
    belongs_to :user, NF.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:question])
    |> validate_required([:question])
  end
end
