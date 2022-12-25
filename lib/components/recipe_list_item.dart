import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/$imageName.jpg",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("Do you like $title?",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
