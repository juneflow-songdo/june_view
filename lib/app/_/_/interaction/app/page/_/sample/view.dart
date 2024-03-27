import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class Sample extends StatefulWidget {
  Sample({super.key});

  @override
  State<Sample> createState() => StateChild();
}

class SampleState extends State<Sample> with StateMother {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sample View")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
          Text("Counter: $counter")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
          Gap(20),
          ElevatedButton(
            onPressed: () {
              clickIncrementButtonEvent(context);
            },
            child: Text("Increment"),
          ),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: Sample());
}
