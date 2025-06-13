import 'package:flutter/material.dart';
import 'package:new_app/design/images.dart';

import 'package:new_app/design/utils/size_utils.dart';
import 'package:new_app/design/widgets/accent_button.dart';
import 'package:new_app/design/widgets/selectable_item.dart';

class VehicleStateList extends StatefulWidget {
  const VehicleStateList({super.key});

  @override
  State<VehicleStateList> createState() => _VehicleStateListState();
}

class _VehicleStateListState extends State<VehicleStateList> {
  int? _selectStateIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(),
        Align(alignment: Alignment.bottomCenter, child: _saveButton()),
      ],
    );
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 2,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: getListBottomPadding(context),
        top: 16,
      ),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (BuildContext context, int index) {
        final bool isSelected = _selectStateIndex == index;
        return SelectableItem(
          image: statePickupImage,
          title: 'Pickup',
          isSelected: isSelected,
          onTap: () {
            _selectStateIndex = index;
            setState(() {});
          },
        );
      },
    );
  }

  Widget _saveButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: AccentButton(tittle: 'Save', onTap: () {}),
      ),
    );
  }
}
