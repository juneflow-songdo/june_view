import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import 'state.dart';
import '_/params.dart';
import '_/config/navigator.dart';
import '_/config/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params, required this.slug});

  final String? tag;
  final NewParams params;
  final String? slug;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Text("New Page")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
        ),
        floatingActionButton: FloatingActionButtonKit(),
      ),
    );
  }
}

main() async {
  MyAppHome = NewView(params: NewParams());

  return buildApp();
}
