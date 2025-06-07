import 'package:flutter/material.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/style.dart';

class AccentButton extends StatelessWidget {
  final String tittle;
  final Function() onTap;
  const AccentButton({super.key, required this.tittle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 40),
        maximumSize: const Size.fromHeight(40),
        backgroundColor: promaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.only(left: 16, right: 16),
      ),
      child: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        tittle,
        style: accentButtonTextStyle,
      ),
    );
  }
}
