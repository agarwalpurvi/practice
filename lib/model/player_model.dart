class Player {
  var IsCurrentUser;
  final String username;
  final String name;
  final bool isFollowing;
  final bool isCurrentUser;

  Player({
    required this.username,
    required this.name,
    this.isFollowing = false,
    this.isCurrentUser=false,
  });
}
