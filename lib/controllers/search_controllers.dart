import 'package:get/get.dart';
import '../model/player_model.dart';
import '../model/team_model.dart';
import '../model/tournament_model.dart';

class Search extends GetxController {
  var selectedTab = 0.obs;

  List<Player> players = [
    Player(username: "@baskar", name: "Baskar"),
    Player(username: "@bellafruit", name: "Bella Fruitsia", isCurrentUser: true),
    Player(username: "@baskar", name: "Baskar"),
    Player(username: "@bellafruit", name: "Bella Fruitsia", isCurrentUser: true),
    Player(username: "@baskar", name: "Baskar"),
    Player(username: "@bellafruit", name: "Bella Fruitsia", isCurrentUser: true),
    Player(username: "@baskar", name: "Baskar"),
    Player(username: "@bellafruit", name: "Bella Fruitsia", isCurrentUser: true),

  ];

  List<Team> teams = [
    Team(username: "@teamcalifornia", name: "California Cricket Club"),
    Team(username: "@mumbaistreetteam", name: "Mumbai Street Cricket Team", isCurrentTeam: true),
    Team(username: "@teamcalifornia", name: "California Cricket Club"),
    Team(username: "@mumbaistreetteam", name: "Mumbai Street Cricket Team", isCurrentTeam: true),
    // Add more teams
  ];

  List<Tournament> tournaments = [
    Tournament(username: "@boxcricketleague", name: "Box Cricket League 2024"),
    Tournament(username: "@picassocup", name: "Picasso Cup", isCurrentTournament: true),
    Tournament(username: "@boxcricketleague", name: "Box Cricket League 2024"),
    Tournament(username: "@picassocup", name: "Picasso Cup", isCurrentTournament: true),

  ];

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
