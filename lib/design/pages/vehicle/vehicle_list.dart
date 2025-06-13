import 'package:flutter/material.dart';
import 'package:new_app/design/dialog/error_dialog.dart';
import 'package:new_app/design/pages/driver/driver_page.dart';
import 'package:new_app/design/pages/driver/vehicle_state/vehicle_state_page.dart';

import 'package:new_app/design/pages/vehicle/vehicle_item.dart';
import 'package:new_app/design/utils/size_utils.dart';
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
        return VehicleItem(
          onTap: () async {
            await _showDriverPage(context);
          },
          onStateTap: () async {
            await _showVehicelStatePage(context);
          },
        );
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

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const DriverPage();
        },
      ),
    );
  }

  Future<void> _showVehicelStatePage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const VehicleStatePage();
        },
      ),
    );
  }
}
