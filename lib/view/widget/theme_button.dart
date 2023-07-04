import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/app_view_model.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppViewModel>(context);
    return IconButton(
        onPressed: () {
          theme.toggleTheme();
        },
        padding: EdgeInsets.symmetric(horizontal: 20),
        icon: theme.isDark ? Icon(Icons.dark_mode) : Icon(Icons.light_mode));
  }
}
