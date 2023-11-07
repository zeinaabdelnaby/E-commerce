import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hello worls',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w800),),
          ElevatedButton(onPressed: (){}, child: const Text("hwllo")),
          SwitchListTile(title: const Text("Theme"),value: false, onChanged: (value){})
        ],
      ),
    );
  }
}