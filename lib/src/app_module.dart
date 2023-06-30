import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_01/src/configuration/configurantion_page.dart';
import 'package:projeto_01/src/home/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/config',
            child: (context, args) => const ConfigurationPage()),
      ];
}
