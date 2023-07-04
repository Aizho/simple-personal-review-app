import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/app_view_model.dart';

class FavButton extends StatelessWidget {
  int index;
  FavButton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<AppViewModel>(context);
    return IconButton(
      onPressed: () {
        fav.toggleFav(index);
      },
      
      icon: fav.categories[index].fav ? Icon(Icons.favorite) : Icon(Icons.favorite_border) ,
    );
  }
}