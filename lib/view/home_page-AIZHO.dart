import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviews_app/view/item_page.dart';
import 'package:reviews_app/view/widget/fav_icon_button.dart';
import 'package:reviews_app/view/widget/theme_button.dart';
import 'package:reviews_app/view_model/app_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          primary: true,
          title: Text('Review'),
          actions: [
            ThemeButton(),
          ],
        ),
        body: Container(
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 5.0,
            childAspectRatio: 1.6,
          ),
          itemCount: value.categoriesLength,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(i: index),
                  )),
              child: GridTile(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: value.isDark ? Colors.black26 : Colors.red[400],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Container(
                            child: Image.asset(
                          'assets/download.jpg',
                          fit: BoxFit.fitWidth,
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: value.isDark ? Colors.red : Colors.black,
                              width: 0),
                        ),
                        margin: EdgeInsetsDirectional.only(bottom: 8),
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Text(
                                value.categories[index].title,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            FavButton(index: index),
                          ]),
                    ],
                  ),
                ),
              ),
            );
          },
        )),
      );
    });
  }
}
