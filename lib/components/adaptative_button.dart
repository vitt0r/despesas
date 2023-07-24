import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  const AdaptativeButton(
      {super.key, required this.label, required this.onPressed});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed(),
            color: Theme.of(context).colorScheme.primary,
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              textStyle: TextStyle(color: Theme.of(context).colorScheme.secondary)
            ),
            onPressed: onPressed(),
            child: Text(label),
          );
  }
}
