class Tournament {
  final String username;
  final String name;
  final bool isFollowing;
  final bool isCurrentTournament;

  var isCurrentUser;

  Tournament({
    required this.username,
    required this.name,
    this.isFollowing = true,
    this.isCurrentTournament = false,
    this.isCurrentUser= true,

  });




}


