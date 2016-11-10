defmodule NF.Repo.Migrations.CreateUserSurvey do
  use Ecto.Migration

  def change do
    create table(:user_surveys) do
      add :question, :string
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:user_surveys, [:user_id])

  end
end
