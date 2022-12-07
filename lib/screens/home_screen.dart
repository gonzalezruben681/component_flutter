import 'package:componentflutter/router/app_routes.dart';
import 'package:componentflutter/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:componentflutter/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menuOptions[index].icon,
            color: AppTheme.primary,
          ),
          title: Text(menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(builder: (context) => CardScreen());
            // Navigator.push(context,route);

            Navigator.pushNamed(context, menuOptions[index].route);

            // destruye la ruta anterior
            // Navigator.pushReplacement(context,route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
