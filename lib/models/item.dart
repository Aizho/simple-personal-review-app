import 'package:reviews_app/models/review.dart';

class Item{
  late String title;
  late String description;
  late List<Review> reviewList;

  Item({required this.title, required this.description, required this.reviewList});
}