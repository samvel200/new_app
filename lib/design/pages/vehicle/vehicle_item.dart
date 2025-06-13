import 'package:flutter/material.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/images.dart';
import 'package:new_app/design/style.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;
  final Function() onStateTap;
  const VehicleItem({super.key, required this.onTap, required this.onStateTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        margin: EdgeInsets.zero,
        color: surfaceColor,
        elevation: 0.06,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'BMW GS-7638',
              style: body2TextStyle,
            ),

            RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Driver: ', style: hint1TextStyle),
                  TextSpan(text: 'Paul', style: body2TextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: onStateTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          statePickupImage,
          const Text('pickup', style: hint2TextStyle),
        ],
      ),
    );
  }
}
