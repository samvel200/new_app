import 'package:flutter/material.dart';

import 'package:new_app/design/pages/driver/driver_item.dart';
import 'package:new_app/design/utils/size_utils.dart';
import 'package:new_app/design/widgets/accent_button.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectDriverIndex;
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
        final bool isSelected = _selectDriverIndex == index;
        return DriverItem(
          driverName: 'Paul',
          isSelected: isSelected,
          onTap: () {
            _selectDriverIndex = index;
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
