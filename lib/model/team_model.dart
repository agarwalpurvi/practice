class Team {
  final String username;
  final String name;
  final bool isFollowing;
  final bool isCurrentTeam;

  var isCurrentUser;

  Team({
    required this.username,
    required this.name,
    this.isFollowing = false,
    this.isCurrentTeam = false,
    this.isCurrentUser= true,
  });

}
