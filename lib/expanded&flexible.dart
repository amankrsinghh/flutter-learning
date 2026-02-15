import 'package:flutter/material.dart';

class Expandedandflexible_example extends StatelessWidget {
  const Expandedandflexible_example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded Example')),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.amber)),

          Expanded(child: Container(color: Colors.red)),

          Flexible(child: Container(color: Colors.blue)),


          ///////row///////

          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.green, height: 100),),
                Spacer(),
                Expanded(child: Container(color: Colors.yellow, height: 100),),
                Flexible(child: Container(color: Colors.orange, height: 100,width: 50,),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
