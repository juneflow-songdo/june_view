import 'package:flutter/material.dart';

import '../../../../../../../../../../../../main.dart';
import '../../_/params.dart';
import '../../state.dart';

readyStateAction(NewParams params, {String? tag, String? slug}) {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
