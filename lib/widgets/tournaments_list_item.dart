import 'package:flutter/material.dart';
import 'package:practice/model/tournament_model.dart';

import '../model/tournament_model.dart';

class TournamentsListItem extends StatelessWidget {
  final Tournament tournament;

  TournamentsListItem({required this.tournament});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(tournament.username[1]), // Get first letter
      ),
      title: Text(tournament.name),
      subtitle: Text(tournament.username),

      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: index == 1 ? Colors.black : Colors.black,
        ),
        child: Text(index == 1 ? "Unfollow" : "Follow Back"),
      ),
    );
  }
}