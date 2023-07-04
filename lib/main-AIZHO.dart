import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviews_app/view/home_page.dart';
import 'package:reviews_app/view_model/app_view_model.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) => AppViewModel(),
    child: Application(),
  ));
}

class Application extends StatelessWidget {
  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, value, child) {
        return MaterialApp(
          theme: value.isDark
              ? ThemeData.dark()
              : ThemeData(
                primarySwatch: Colors.red
              ),
          home: HomePage(),
        );
      },
    );
  }
}
