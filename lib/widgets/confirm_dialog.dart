import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key key,
    this.title,
    this.content,
    @required this.okBtnChild,
    @required this.canBtnChild,
    this.okBtnStyle,
    this.canBtnStyle,
  }) : super(key: key);
  final Widget title;
  final Widget content;
  final Widget okBtnChild;
  final ButtonStyle okBtnStyle;
  final Widget canBtnChild;
  final ButtonStyle canBtnStyle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      actions: <Widget>[
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(false),
          style: canBtnStyle,
          child: canBtnChild,
        ),
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: okBtnStyle,
          child: okBtnChild,
        ),
      ],
    );
  }
}
