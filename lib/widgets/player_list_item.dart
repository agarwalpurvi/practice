import 'package:flutter/material.dart';
import '../model/player_model.dart';


class PlayerListItem extends StatelessWidget {
  final Player player;

  PlayerListItem({required this.player});

  get index => null;




  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(player.username[1]), // Get first letter
      ),
      title: Text(player.name),
      subtitle: Text(player.username),

   
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
