import 'package:flutter/material.dart';

class Stack_example extends StatelessWidget {
  const Stack_example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  width: 400,
                  height: 400,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,

                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 100,

                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,

                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    color: Colors.blueGrey,
                    width: 100,
                    height: 100,

                  ),
                ),
                Positioned(
                  top: 110,
                  right: 110,
                  left: 110,
                  bottom: 110,
                  child: Container(
                    color: Colors.white,
                    width: 100,
                    height: 100,

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
