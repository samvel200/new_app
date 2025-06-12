import 'package:flutter/widgets.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  return (safeBottomPadding + 8) * 2 + 40;
}
