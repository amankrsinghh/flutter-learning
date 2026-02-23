import 'package:flutter/material.dart';

class Gesturedetector extends StatelessWidget {
  const Gesturedetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// gesture detector gives verious getsure for performing action
              GestureDetector(
                onTap: () {
                  print("clickedd...........................");
                },
                child: Text("hello aman", style: TextStyle(fontSize: 29)),
              ),
              SizedBox(height: 20),

              /// inkwell gives ripple effect on tap
              InkWell(
                onTap: () {
                  print("cliking with ripple effect");
                },
                child: Text("button", style: TextStyle(fontSize: 29)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
