import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: ListView(
                children: [
                  for (int i = 0; i <= 50; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 100,
                      color: Colors.amber,
                    ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 400,
              child: ListView(
                children: [
                  for (int i = 0; i <= 20; i++)
                    ListTile(
                      title: Text("This is Title"),
                      subtitle: Text("this is subtitle"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://dpemoji.com/wp-content/uploads/2024/03/memes-dp27.jpg",
                        ),
                      ),
                      trailing: Icon(Icons.details),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
