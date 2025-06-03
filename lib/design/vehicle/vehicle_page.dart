import 'package:flutter/material.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/vehicle/vehicle_list.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dispatcher by kiparo.com',
          style: TextStyle(
            color: promaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: surfaceColor,
      ),
      body: Container(color: backgraoudColor, child: const VehicleList()),
    );
  }
}
