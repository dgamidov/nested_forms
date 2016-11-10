defmodule NF.Repo.Migrations.CreateUserBiodata do
  use Ecto.Migration

  def change do
    create table(:user_biodata) do
      add :weight, :float
      add :height, :float
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:user_biodata, [:user_id])

  end
end
