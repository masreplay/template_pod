import 'package:flutter/material.dart';
import 'package:starter/common_lib.dart';

class DoubleBackToExit extends StatefulWidget {
  const DoubleBackToExit({super.key, required this.child});

  final Widget child;

  @override
  State<DoubleBackToExit> createState() => _DoubleBackToExitState();
}

class _DoubleBackToExitState extends State<DoubleBackToExit> {
  DateTime? _lastBackPressed;
  static const duration = Duration(seconds: 2);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        if (_lastBackPressed == null ||
            now.difference(_lastBackPressed!) > duration) {
          _lastBackPressed = now;
          onBackPressed();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: widget.child,
    );
  }

  void onBackPressed() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(context.l10n.pressBackAgainToExit),
        duration: duration,
      ),
    );
  }
}
