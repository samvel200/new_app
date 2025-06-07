import 'package:flutter/material.dart';
import 'package:new_app/design/dialog/error_dialog.dart';

import 'package:new_app/design/vehicle/vehicle_item.dart';
import 'package:new_app/design/widgets/accent_button.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton(context)),
      ],
    );
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + 8) * 2 + 40;

    return ListView.separated(
      itemCount: 2,
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: bottomPadding,
        top: 16,
      ),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (BuildContext context, int index) {
        return const VehicleItem();
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
        child: AccentButton(
          tittle: 'Update',
          onTap: () {
            _showErrorDialog(context);
          },
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(
          description: 'Server is unavailable. Please try again later',
        );
      },
    );
  }
}
