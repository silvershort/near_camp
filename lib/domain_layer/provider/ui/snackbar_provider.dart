import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scaffoldProvider = NotifierProvider<ScaffoldNotifier, GlobalKey<ScaffoldMessengerState>>(ScaffoldNotifier.new);

class ScaffoldNotifier extends Notifier<GlobalKey<ScaffoldMessengerState>> {
  @override
  GlobalKey<ScaffoldMessengerState> build() {
    return GlobalKey<ScaffoldMessengerState>();
  }

  void showSnackBar(SnackBar snackBar) {
    state.currentState?.showSnackBar(snackBar);
  }
}