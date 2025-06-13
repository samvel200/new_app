import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_app/design/color.dart';
import 'package:new_app/design/images.dart';
import 'package:new_app/design/style.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final String title;
  final bool isSelected;
  final Function() onTap;

  const SelectableItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
    required this.image,
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
                image,
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
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
