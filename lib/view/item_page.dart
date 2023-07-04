import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviews_app/view/widget/theme_button.dart';
import 'package:reviews_app/view_model/app_view_model.dart';

class ItemPage extends StatelessWidget {
  int i;
  ItemPage({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, value, child) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Review'),
            actions: [
              ThemeButton(),
            ],
          ),
          body: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Column(
                                children: [
                                  Container(
                                      child: Text(value.categories[i]
                                          .itemlist[index].title)),
                                  Divider(),
                                  Container(
                                    child: Text(value.categories[i]
                                        .itemlist[index].description),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Expanded(
                          child: ListView.builder(
                        itemBuilder: (context, index1) {
                          return Container(
                            child: Column(
                              children: [
                                Card(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Text(value
                                            .categories[i]
                                            .itemlist[index]
                                            .reviewList[index1]
                                            .username),
                                      ),
                                      Container(
                                        child: Text('Rating: ${value.categories[i].itemlist[index]
                                                .reviewList[index1].rating}'),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.topCenter,
                                  child: Card(
                                    child: Text(value.categories[i].itemlist[index]
                                        .reviewList[index1].dateTime
                                        .toString()),
                                  ),
                                ),
                                ListTile(
                                  
                                  title: Card(
                                    child: Text(value.categories[i].itemlist[index]
                                        .reviewList[index1].description),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: value
                            .categories[i].itemlist[index].reviewList.length,
                      ))
                    ],
                  ),
                );
              },
              itemCount: value.categories[i].itemlist.length));
    });
  }
}
