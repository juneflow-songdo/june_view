import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';
import '../state.dart';

someAction({String? tag}) {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
