import 'package:flutter/material.dart';
import 'package:new_app/design/style.dart';
import 'package:new_app/design/widgets/accent_button.dart';

class ErrorDialog extends StatelessWidget {
  final String description;
  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Oops...', style: head1TextStyle),
            const SizedBox(height: 8),
            Text(description, style: body1TextStyle),
            const SizedBox(height: 20),
            Center(
              child: AccentButton(
                tittle: 'Ok',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
