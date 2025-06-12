import 'package:flutter/material.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/images.dart';
import 'package:new_app/design/style.dart';

class DriverItem extends StatelessWidget {
  final String driverName;
  final bool isSelected;
  final Function() onTap;

  const DriverItem({
    super.key,
    required this.onTap,
    required this.driverName,
    required this.isSelected,
  });

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
              children: [
                accountCircleImages,
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    driverName,
                    style: body2TextStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 16),
                if (isSelected) checkImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
