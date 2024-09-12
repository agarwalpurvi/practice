import 'package:flutter/material.dart';
import '../model/team_model.dart';

class TeamsListItem extends StatelessWidget {
  final Team team;

  TeamsListItem({required this.team});

  get index => null;

  @override
  Widget build(BuildContext context) {
  
       
      return ListTile(
        leading: CircleAvatar(
          child: Text(team.username[1]), // Get first letter
        ),
        title: Text(team.name),
        subtitle: Text(team.username),

        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: index == 1 ? Colors.black : Colors.black,
          ),
          child: Text(index == 1 ? "Unfollow" : "Follow Back"),
        ),
      );



    }
  }





