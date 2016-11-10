defmodule NF.UserBiodata do
  use NF.Web, :model

  schema "user_biodata" do
    field :weight, :float
    field :height, :float
    field :delete, :boolean, virtual: true

    belongs_to :user, NF.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:weight, :height, :delete])
    |> validate_required([:weight, :height])
    |> mark_for_deletion()
  end

  defp mark_for_deletion(changeset) do
    # If delete was set and it is true, let's change the action
    if get_change(changeset, :delete) do
      %{changeset | action: :delete}
    else
      changeset
    end
  end
end
