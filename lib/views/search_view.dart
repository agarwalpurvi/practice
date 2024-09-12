// search_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search_controllers.dart';
import '../widgets/player_list_item.dart';
import '../widgets/teams_list_item.dart';
import '../widgets/tournaments_list_item.dart';


class SearchPage extends StatelessWidget {
   Search  controller = Get.put(Search ());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Define the action for the back button
          },
        ),
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type and tap search icon to see the results",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Spacing between the text field and the button
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow, // Background color
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0)// Circular shape
                  ),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black, // Icon color
                    onPressed: () {
                      // Define the action for the search button
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 8), // Spacing between the search bar and the text
            Text(
              "Type and tap search icon to see the results",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ],),



      ),

      body: Column(
        children: [
          // Tab Bar
          Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabButton(
                text: "Players",
                index: 0,
                isSelected: controller.selectedTab.value == 0,
                onTap: () => controller.changeTab(0),
              ),
              TabButton(
                text: "Teams",
                index: 1,
                isSelected: controller.selectedTab.value == 1,
                onTap: () => controller.changeTab(1),
              ),
              TabButton(
                text: "Tournaments",
                index: 2,
                isSelected: controller.selectedTab.value == 2,
                onTap: () => controller.changeTab(2),
              ),
            ],
          )),

          // Tab Content
          Expanded(
            child: Obx(() {
              if (controller.selectedTab.value == 0) {
                return ListView.builder(
                  itemCount: controller.players.length,
                  itemBuilder: (context, index) {
                    return PlayerListItem(player: controller.players[index]);
                  },
                );
              } else if (controller.selectedTab.value == 1) {
                return ListView.builder(
                  itemCount: controller.teams.length,
                  itemBuilder: (context, index) {
                    return TeamsListItem(team: controller.teams[index]);
                  },
                );
              } else {
                return ListView.builder(
                  itemCount: controller.tournaments.length,
                  itemBuilder: (context, index) {
                    return TournamentsListItem(tournament: controller.tournaments[index]);
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}




// Custom TabButton widget
class TabButton extends StatelessWidget {
  final String text;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  TabButton({
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(text, style: TextStyle(color: isSelected ? Colors.black : Colors.grey)),
          if (isSelected)
            Container(
              height: 2,
              width: 60,
              color: Colors.black,
            ),
        ],
      ),
    );
  }
}
