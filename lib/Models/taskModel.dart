class TaskModel {
  String id;

  String title;

  String description;
  bool status;
  int date;

  TaskModel({this.id = "",
    required this.title,
    required this.date,
    required this.description,
    required this.status});

  TaskModel.fromJson(Map<String, dynamic> json) :
        this(
        id: json['id'],
        title: json['title'],
        date: json['date'],
        description: json['description'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title, 'description': description,
      'status': status,
      'date': date
    };
  }




}

