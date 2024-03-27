import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class New extends StatefulWidget {
  New({super.key});

  @override
  State<New> createState() => StateChild();
}

class NewState extends State<New> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      // floatingActionButton: FloatingActionButtonKit(),
      child: const Text("New View")
          .textStyle(Theme.of(context).textTheme.displaySmall!)
          .fontWeight(FontWeight.bold)
          .textAlignment(TextAlign.center)
          .center(),
    ).height(300).width(1.sw);
  }
}

main() async {
  return buildApp(appHome: New());
}
