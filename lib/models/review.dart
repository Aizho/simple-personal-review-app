class Review {
  String username;
  DateTime dateTime;
  final int rating;
  late String description;

  Review({
    required this.username,
    required this.dateTime,
    this.rating = 0,
    this.description = "sss",
  });
}
