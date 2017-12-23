defmodule PmApi.Projectmode do
  @moduledoc """
  The Projectmode context.
  """

  import Ecto.Query, warn: false
  alias PmApi.Repo

  alias PmApi.Projectmode.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a User.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{source: %User{}}

  """
  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  alias PmApi.Projectmode.Project

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ## Examples

      iex> get_project!(123)
      %Project{}

      iex> get_project!(456)
      ** (Ecto.NoResultsError)

  """
  def get_project!(id), do: Repo.get!(Project, id)

  @doc """
  Creates a project.

  ## Examples

      iex> create_project(%{field: value})
      {:ok, %Project{}}

      iex> create_project(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a project.

  ## Examples

      iex> update_project(project, %{field: new_value})
      {:ok, %Project{}}

      iex> update_project(project, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_project(%Project{} = project, attrs) do
    project
    |> Project.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Project.

  ## Examples

      iex> delete_project(project)
      {:ok, %Project{}}

      iex> delete_project(project)
      {:error, %Ecto.Changeset{}}

  """
  def delete_project(%Project{} = project) do
    Repo.delete(project)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking project changes.

  ## Examples

      iex> change_project(project)
      %Ecto.Changeset{source: %Project{}}

  """
  def change_project(%Project{} = project) do
    Project.changeset(project, %{})
  end

  alias PmApi.Projectmode.Team

  @doc """
  Returns the list of teams.

  ## Examples

      iex> list_teams()
      [%Team{}, ...]

  """
  def list_teams do
    Repo.all(Team)
  end

  @doc """
  Gets a single team.

  Raises `Ecto.NoResultsError` if the Team does not exist.

  ## Examples

      iex> get_team!(123)
      %Team{}

      iex> get_team!(456)
      ** (Ecto.NoResultsError)

  """
  def get_team!(id), do: Repo.get!(Team, id)

  @doc """
  Creates a team.

  ## Examples

      iex> create_team(%{field: value})
      {:ok, %Team{}}

      iex> create_team(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_team(attrs \\ %{}) do
    %Team{}
    |> Team.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a team.

  ## Examples

      iex> update_team(team, %{field: new_value})
      {:ok, %Team{}}

      iex> update_team(team, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_team(%Team{} = team, attrs) do
    team
    |> Team.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Team.

  ## Examples

      iex> delete_team(team)
      {:ok, %Team{}}

      iex> delete_team(team)
      {:error, %Ecto.Changeset{}}

  """
  def delete_team(%Team{} = team) do
    Repo.delete(team)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking team changes.

  ## Examples

      iex> change_team(team)
      %Ecto.Changeset{source: %Team{}}

  """
  def change_team(%Team{} = team) do
    Team.changeset(team, %{})
  end

  alias PmApi.Projectmode.Teammember

  @doc """
  Returns the list of teammembers.

  ## Examples

      iex> list_teammembers()
      [%Teammember{}, ...]

  """
  def list_teammembers do
    Repo.all(Teammember)
  end

  @doc """
  Gets a single teammember.

  Raises `Ecto.NoResultsError` if the Teammember does not exist.

  ## Examples

      iex> get_teammember!(123)
      %Teammember{}

      iex> get_teammember!(456)
      ** (Ecto.NoResultsError)

  """
  def get_teammember!(id), do: Repo.get!(Teammember, id)

  @doc """
  Creates a teammember.

  ## Examples

      iex> create_teammember(%{field: value})
      {:ok, %Teammember{}}

      iex> create_teammember(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_teammember(attrs \\ %{}) do
    %Teammember{}
    |> Teammember.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a teammember.

  ## Examples

      iex> update_teammember(teammember, %{field: new_value})
      {:ok, %Teammember{}}

      iex> update_teammember(teammember, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_teammember(%Teammember{} = teammember, attrs) do
    teammember
    |> Teammember.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Teammember.

  ## Examples

      iex> delete_teammember(teammember)
      {:ok, %Teammember{}}

      iex> delete_teammember(teammember)
      {:error, %Ecto.Changeset{}}

  """
  def delete_teammember(%Teammember{} = teammember) do
    Repo.delete(teammember)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking teammember changes.

  ## Examples

      iex> change_teammember(teammember)
      %Ecto.Changeset{source: %Teammember{}}

  """
  def change_teammember(%Teammember{} = teammember) do
    Teammember.changeset(teammember, %{})
  end

  alias PmApi.Projectmode.Teamproject

  @doc """
  Returns the list of teamprojects.

  ## Examples

      iex> list_teamprojects()
      [%Teamproject{}, ...]

  """
  def list_teamprojects do
    Repo.all(Teamproject)
  end

  @doc """
  Gets a single teamproject.

  Raises `Ecto.NoResultsError` if the Teamproject does not exist.

  ## Examples

      iex> get_teamproject!(123)
      %Teamproject{}

      iex> get_teamproject!(456)
      ** (Ecto.NoResultsError)

  """
  def get_teamproject!(id), do: Repo.get!(Teamproject, id)

  @doc """
  Creates a teamproject.

  ## Examples

      iex> create_teamproject(%{field: value})
      {:ok, %Teamproject{}}

      iex> create_teamproject(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_teamproject(attrs \\ %{}) do
    %Teamproject{}
    |> Teamproject.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a teamproject.

  ## Examples

      iex> update_teamproject(teamproject, %{field: new_value})
      {:ok, %Teamproject{}}

      iex> update_teamproject(teamproject, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_teamproject(%Teamproject{} = teamproject, attrs) do
    teamproject
    |> Teamproject.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Teamproject.

  ## Examples

      iex> delete_teamproject(teamproject)
      {:ok, %Teamproject{}}

      iex> delete_teamproject(teamproject)
      {:error, %Ecto.Changeset{}}

  """
  def delete_teamproject(%Teamproject{} = teamproject) do
    Repo.delete(teamproject)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking teamproject changes.

  ## Examples

      iex> change_teamproject(teamproject)
      %Ecto.Changeset{source: %Teamproject{}}

  """
  def change_teamproject(%Teamproject{} = teamproject) do
    Teamproject.changeset(teamproject, %{})
  end

  alias PmApi.Projectmode.Role

  @doc """
  Returns the list of roles.

  ## Examples

      iex> list_roles()
      [%Role{}, ...]

  """
  def list_roles do
    Repo.all(Role)
  end

  @doc """
  Gets a single role.

  Raises `Ecto.NoResultsError` if the Role does not exist.

  ## Examples

      iex> get_role!(123)
      %Role{}

      iex> get_role!(456)
      ** (Ecto.NoResultsError)

  """
  def get_role!(id), do: Repo.get!(Role, id)

  @doc """
  Creates a role.

  ## Examples

      iex> create_role(%{field: value})
      {:ok, %Role{}}

      iex> create_role(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_role(attrs \\ %{}) do
    %Role{}
    |> Role.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a role.

  ## Examples

      iex> update_role(role, %{field: new_value})
      {:ok, %Role{}}

      iex> update_role(role, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_role(%Role{} = role, attrs) do
    role
    |> Role.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Role.

  ## Examples

      iex> delete_role(role)
      {:ok, %Role{}}

      iex> delete_role(role)
      {:error, %Ecto.Changeset{}}

  """
  def delete_role(%Role{} = role) do
    Repo.delete(role)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking role changes.

  ## Examples

      iex> change_role(role)
      %Ecto.Changeset{source: %Role{}}

  """
  def change_role(%Role{} = role) do
    Role.changeset(role, %{})
  end

  alias PmApi.Projectmode.Userrole

  @doc """
  Returns the list of userroles.

  ## Examples

      iex> list_userroles()
      [%Userrole{}, ...]

  """
  def list_userroles do
    Repo.all(Userrole)
  end

  @doc """
  Gets a single userrole.

  Raises `Ecto.NoResultsError` if the Userrole does not exist.

  ## Examples

      iex> get_userrole!(123)
      %Userrole{}

      iex> get_userrole!(456)
      ** (Ecto.NoResultsError)

  """
  def get_userrole!(id), do: Repo.get!(Userrole, id)

  @doc """
  Creates a userrole.

  ## Examples

      iex> create_userrole(%{field: value})
      {:ok, %Userrole{}}

      iex> create_userrole(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_userrole(attrs \\ %{}) do
    %Userrole{}
    |> Userrole.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a userrole.

  ## Examples

      iex> update_userrole(userrole, %{field: new_value})
      {:ok, %Userrole{}}

      iex> update_userrole(userrole, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_userrole(%Userrole{} = userrole, attrs) do
    userrole
    |> Userrole.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Userrole.

  ## Examples

      iex> delete_userrole(userrole)
      {:ok, %Userrole{}}

      iex> delete_userrole(userrole)
      {:error, %Ecto.Changeset{}}

  """
  def delete_userrole(%Userrole{} = userrole) do
    Repo.delete(userrole)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking userrole changes.

  ## Examples

      iex> change_userrole(userrole)
      %Ecto.Changeset{source: %Userrole{}}

  """
  def change_userrole(%Userrole{} = userrole) do
    Userrole.changeset(userrole, %{})
  end

  alias PmApi.Projectmode.Skills

  @doc """
  Returns the list of skills.

  ## Examples

      iex> list_skills()
      [%Skills{}, ...]

  """
  def list_skills do
    Repo.all(Skills)
  end

  @doc """
  Gets a single skills.

  Raises `Ecto.NoResultsError` if the Skills does not exist.

  ## Examples

      iex> get_skills!(123)
      %Skills{}

      iex> get_skills!(456)
      ** (Ecto.NoResultsError)

  """
  def get_skills!(id), do: Repo.get!(Skills, id)

  @doc """
  Creates a skills.

  ## Examples

      iex> create_skills(%{field: value})
      {:ok, %Skills{}}

      iex> create_skills(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_skills(attrs \\ %{}) do
    %Skills{}
    |> Skills.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a skills.

  ## Examples

      iex> update_skills(skills, %{field: new_value})
      {:ok, %Skills{}}

      iex> update_skills(skills, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_skills(%Skills{} = skills, attrs) do
    skills
    |> Skills.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Skills.

  ## Examples

      iex> delete_skills(skills)
      {:ok, %Skills{}}

      iex> delete_skills(skills)
      {:error, %Ecto.Changeset{}}

  """
  def delete_skills(%Skills{} = skills) do
    Repo.delete(skills)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking skills changes.

  ## Examples

      iex> change_skills(skills)
      %Ecto.Changeset{source: %Skills{}}

  """
  def change_skills(%Skills{} = skills) do
    Skills.changeset(skills, %{})
  end

  alias PmApi.Projectmode.Projectrole

  @doc """
  Returns the list of projectroles.

  ## Examples

      iex> list_projectroles()
      [%Projectrole{}, ...]

  """
  def list_projectroles do
    Repo.all(Projectrole)
  end

  @doc """
  Gets a single projectrole.

  Raises `Ecto.NoResultsError` if the Projectrole does not exist.

  ## Examples

      iex> get_projectrole!(123)
      %Projectrole{}

      iex> get_projectrole!(456)
      ** (Ecto.NoResultsError)

  """
  def get_projectrole!(id), do: Repo.get!(Projectrole, id)

  @doc """
  Creates a projectrole.

  ## Examples

      iex> create_projectrole(%{field: value})
      {:ok, %Projectrole{}}

      iex> create_projectrole(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_projectrole(attrs \\ %{}) do
    %Projectrole{}
    |> Projectrole.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a projectrole.

  ## Examples

      iex> update_projectrole(projectrole, %{field: new_value})
      {:ok, %Projectrole{}}

      iex> update_projectrole(projectrole, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_projectrole(%Projectrole{} = projectrole, attrs) do
    projectrole
    |> Projectrole.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Projectrole.

  ## Examples

      iex> delete_projectrole(projectrole)
      {:ok, %Projectrole{}}

      iex> delete_projectrole(projectrole)
      {:error, %Ecto.Changeset{}}

  """
  def delete_projectrole(%Projectrole{} = projectrole) do
    Repo.delete(projectrole)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking projectrole changes.

  ## Examples

      iex> change_projectrole(projectrole)
      %Ecto.Changeset{source: %Projectrole{}}

  """
  def change_projectrole(%Projectrole{} = projectrole) do
    Projectrole.changeset(projectrole, %{})
  end

  alias PmApi.Projectmode.Userskill

  @doc """
  Returns the list of userskills.

  ## Examples

      iex> list_userskills()
      [%Userskill{}, ...]

  """
  def list_userskills do
    Repo.all(Userskill)
  end

  @doc """
  Gets a single userskill.

  Raises `Ecto.NoResultsError` if the Userskill does not exist.

  ## Examples

      iex> get_userskill!(123)
      %Userskill{}

      iex> get_userskill!(456)
      ** (Ecto.NoResultsError)

  """
  def get_userskill!(id), do: Repo.get!(Userskill, id)

  @doc """
  Creates a userskill.

  ## Examples

      iex> create_userskill(%{field: value})
      {:ok, %Userskill{}}

      iex> create_userskill(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_userskill(attrs \\ %{}) do
    %Userskill{}
    |> Userskill.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a userskill.

  ## Examples

      iex> update_userskill(userskill, %{field: new_value})
      {:ok, %Userskill{}}

      iex> update_userskill(userskill, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_userskill(%Userskill{} = userskill, attrs) do
    userskill
    |> Userskill.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Userskill.

  ## Examples

      iex> delete_userskill(userskill)
      {:ok, %Userskill{}}

      iex> delete_userskill(userskill)
      {:error, %Ecto.Changeset{}}

  """
  def delete_userskill(%Userskill{} = userskill) do
    Repo.delete(userskill)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking userskill changes.

  ## Examples

      iex> change_userskill(userskill)
      %Ecto.Changeset{source: %Userskill{}}

  """
  def change_userskill(%Userskill{} = userskill) do
    Userskill.changeset(userskill, %{})
  end

  alias PmApi.Projectmode.Interest

  @doc """
  Returns the list of interests.

  ## Examples

      iex> list_interests()
      [%Interest{}, ...]

  """
  def list_interests do
    Repo.all(Interest)
  end

  @doc """
  Gets a single interest.

  Raises `Ecto.NoResultsError` if the Interest does not exist.

  ## Examples

      iex> get_interest!(123)
      %Interest{}

      iex> get_interest!(456)
      ** (Ecto.NoResultsError)

  """
  def get_interest!(id), do: Repo.get!(Interest, id)

  @doc """
  Creates a interest.

  ## Examples

      iex> create_interest(%{field: value})
      {:ok, %Interest{}}

      iex> create_interest(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_interest(attrs \\ %{}) do
    %Interest{}
    |> Interest.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a interest.

  ## Examples

      iex> update_interest(interest, %{field: new_value})
      {:ok, %Interest{}}

      iex> update_interest(interest, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_interest(%Interest{} = interest, attrs) do
    interest
    |> Interest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Interest.

  ## Examples

      iex> delete_interest(interest)
      {:ok, %Interest{}}

      iex> delete_interest(interest)
      {:error, %Ecto.Changeset{}}

  """
  def delete_interest(%Interest{} = interest) do
    Repo.delete(interest)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking interest changes.

  ## Examples

      iex> change_interest(interest)
      %Ecto.Changeset{source: %Interest{}}

  """
  def change_interest(%Interest{} = interest) do
    Interest.changeset(interest, %{})
  end

  alias PmApi.Projectmode.Userinterest

  @doc """
  Returns the list of userinterests.

  ## Examples

      iex> list_userinterests()
      [%Userinterest{}, ...]

  """
  def list_userinterests do
    Repo.all(Userinterest)
  end

  @doc """
  Gets a single userinterest.

  Raises `Ecto.NoResultsError` if the Userinterest does not exist.

  ## Examples

      iex> get_userinterest!(123)
      %Userinterest{}

      iex> get_userinterest!(456)
      ** (Ecto.NoResultsError)

  """
  def get_userinterest!(id), do: Repo.get!(Userinterest, id)

  @doc """
  Creates a userinterest.

  ## Examples

      iex> create_userinterest(%{field: value})
      {:ok, %Userinterest{}}

      iex> create_userinterest(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_userinterest(attrs \\ %{}) do
    %Userinterest{}
    |> Userinterest.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a userinterest.

  ## Examples

      iex> update_userinterest(userinterest, %{field: new_value})
      {:ok, %Userinterest{}}

      iex> update_userinterest(userinterest, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_userinterest(%Userinterest{} = userinterest, attrs) do
    userinterest
    |> Userinterest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Userinterest.

  ## Examples

      iex> delete_userinterest(userinterest)
      {:ok, %Userinterest{}}

      iex> delete_userinterest(userinterest)
      {:error, %Ecto.Changeset{}}

  """
  def delete_userinterest(%Userinterest{} = userinterest) do
    Repo.delete(userinterest)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking userinterest changes.

  ## Examples

      iex> change_userinterest(userinterest)
      %Ecto.Changeset{source: %Userinterest{}}

  """
  def change_userinterest(%Userinterest{} = userinterest) do
    Userinterest.changeset(userinterest, %{})
  end

  alias PmApi.Projectmode.Projectstack

  @doc """
  Returns the list of projectstacks.

  ## Examples

      iex> list_projectstacks()
      [%Projectstack{}, ...]

  """
  def list_projectstacks do
    Repo.all(Projectstack)
  end

  @doc """
  Gets a single projectstack.

  Raises `Ecto.NoResultsError` if the Projectstack does not exist.

  ## Examples

      iex> get_projectstack!(123)
      %Projectstack{}

      iex> get_projectstack!(456)
      ** (Ecto.NoResultsError)

  """
  def get_projectstack!(id), do: Repo.get!(Projectstack, id)

  @doc """
  Creates a projectstack.

  ## Examples

      iex> create_projectstack(%{field: value})
      {:ok, %Projectstack{}}

      iex> create_projectstack(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_projectstack(attrs \\ %{}) do
    %Projectstack{}
    |> Projectstack.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a projectstack.

  ## Examples

      iex> update_projectstack(projectstack, %{field: new_value})
      {:ok, %Projectstack{}}

      iex> update_projectstack(projectstack, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_projectstack(%Projectstack{} = projectstack, attrs) do
    projectstack
    |> Projectstack.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Projectstack.

  ## Examples

      iex> delete_projectstack(projectstack)
      {:ok, %Projectstack{}}

      iex> delete_projectstack(projectstack)
      {:error, %Ecto.Changeset{}}

  """
  def delete_projectstack(%Projectstack{} = projectstack) do
    Repo.delete(projectstack)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking projectstack changes.

  ## Examples

      iex> change_projectstack(projectstack)
      %Ecto.Changeset{source: %Projectstack{}}

  """
  def change_projectstack(%Projectstack{} = projectstack) do
    Projectstack.changeset(projectstack, %{})
  end

  alias PmApi.Projectmode.Projectcategory

  @doc """
  Returns the list of projectcategories.

  ## Examples

      iex> list_projectcategories()
      [%Projectcategory{}, ...]

  """
  def list_projectcategories do
    Repo.all(Projectcategory)
  end

  @doc """
  Gets a single projectcategory.

  Raises `Ecto.NoResultsError` if the Projectcategory does not exist.

  ## Examples

      iex> get_projectcategory!(123)
      %Projectcategory{}

      iex> get_projectcategory!(456)
      ** (Ecto.NoResultsError)

  """
  def get_projectcategory!(id), do: Repo.get!(Projectcategory, id)

  @doc """
  Creates a projectcategory.

  ## Examples

      iex> create_projectcategory(%{field: value})
      {:ok, %Projectcategory{}}

      iex> create_projectcategory(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_projectcategory(attrs \\ %{}) do
    %Projectcategory{}
    |> Projectcategory.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a projectcategory.

  ## Examples

      iex> update_projectcategory(projectcategory, %{field: new_value})
      {:ok, %Projectcategory{}}

      iex> update_projectcategory(projectcategory, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_projectcategory(%Projectcategory{} = projectcategory, attrs) do
    projectcategory
    |> Projectcategory.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Projectcategory.

  ## Examples

      iex> delete_projectcategory(projectcategory)
      {:ok, %Projectcategory{}}

      iex> delete_projectcategory(projectcategory)
      {:error, %Ecto.Changeset{}}

  """
  def delete_projectcategory(%Projectcategory{} = projectcategory) do
    Repo.delete(projectcategory)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking projectcategory changes.

  ## Examples

      iex> change_projectcategory(projectcategory)
      %Ecto.Changeset{source: %Projectcategory{}}

  """
  def change_projectcategory(%Projectcategory{} = projectcategory) do
    Projectcategory.changeset(projectcategory, %{})
  end

  alias PmApi.Projectmode.Watchedproject

  @doc """
  Returns the list of watchedprojects.

  ## Examples

      iex> list_watchedprojects()
      [%Watchedproject{}, ...]

  """
  def list_watchedprojects do
    Repo.all(Watchedproject)
  end

  @doc """
  Gets a single watchedproject.

  Raises `Ecto.NoResultsError` if the Watchedproject does not exist.

  ## Examples

      iex> get_watchedproject!(123)
      %Watchedproject{}

      iex> get_watchedproject!(456)
      ** (Ecto.NoResultsError)

  """
  def get_watchedproject!(id), do: Repo.get!(Watchedproject, id)

  @doc """
  Creates a watchedproject.

  ## Examples

      iex> create_watchedproject(%{field: value})
      {:ok, %Watchedproject{}}

      iex> create_watchedproject(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_watchedproject(attrs \\ %{}) do
    %Watchedproject{}
    |> Watchedproject.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a watchedproject.

  ## Examples

      iex> update_watchedproject(watchedproject, %{field: new_value})
      {:ok, %Watchedproject{}}

      iex> update_watchedproject(watchedproject, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_watchedproject(%Watchedproject{} = watchedproject, attrs) do
    watchedproject
    |> Watchedproject.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Watchedproject.

  ## Examples

      iex> delete_watchedproject(watchedproject)
      {:ok, %Watchedproject{}}

      iex> delete_watchedproject(watchedproject)
      {:error, %Ecto.Changeset{}}

  """
  def delete_watchedproject(%Watchedproject{} = watchedproject) do
    Repo.delete(watchedproject)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking watchedproject changes.

  ## Examples

      iex> change_watchedproject(watchedproject)
      %Ecto.Changeset{source: %Watchedproject{}}

  """
  def change_watchedproject(%Watchedproject{} = watchedproject) do
    Watchedproject.changeset(watchedproject, %{})
  end
end
