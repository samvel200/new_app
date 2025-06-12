import 'package:flutter/material.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/images.dart';
import 'package:new_app/design/pages/driver/driver_list.dart';
import 'package:new_app/design/style.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Driver', style: promaryTextStyle),
        centerTitle: true,
        backgroundColor: surfaceColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: arrowBackImage,
        ),
      ),
      body: Container(color: backgraoudColor, child: const DriverList()),
    );
  }
}
