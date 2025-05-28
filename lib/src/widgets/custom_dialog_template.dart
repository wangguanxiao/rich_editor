import 'package:flutter/material.dart';

class CustomDialogTemplate extends StatelessWidget {
  final List<Widget>? body;
  final Function? onDone;
  final Function? onCancel;

  CustomDialogTemplate({this.body, this.onDone, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: body!,
      ),
      actions: [
        TextButton(
          onPressed: () => onDone!(),
          child: Text('确定'),
        ),
        TextButton(
          onPressed: () => onCancel!(),
          child: Text('取消'),
        ),
      ],
    );
  }
}
