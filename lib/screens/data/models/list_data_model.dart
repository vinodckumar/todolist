class ListData {

  String userID;
  int id;
  String title;
  bool completed;

  ListData({this.userID, this.id, this.title, this.completed});

  factory ListData.fromJson(Map<String, dynamic> json) {
    ListData listData = ListData(
        userID: json['userID'],
        title: json['title'],
        completed: json['completed'],
        id: json['id']);
    return listData;
  }
}
