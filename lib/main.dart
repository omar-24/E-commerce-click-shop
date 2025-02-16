import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gcamp_team10/core/service/app_router.dart';
import 'package:bloc/bloc.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const ClickShop(),
  ),);
}

class ClickShop extends StatelessWidget {
  const ClickShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: Approuter.router,
    );
  }
}
