import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_01/src/app_module.dart';
import 'package:projeto_01/src/app_widget.dart';
import 'package:projeto_01/src/shared/themes/themes.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
