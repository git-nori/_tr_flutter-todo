import 'package:flutter/material.dart';

class DismissBackground extends StatelessWidget {
  const DismissBackground({
    Key key,
    this.colors,
    this.alignment,
    this.icon,
  }) : super(key: key);
  final Color colors;
  final AlignmentGeometry alignment;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      color: colors,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: icon,
      ),
    );
  }
}
