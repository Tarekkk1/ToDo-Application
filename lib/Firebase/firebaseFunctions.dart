import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_application/Models/taskModel.dart';

class FirebaseFunctions {
  static CollectionReference<TaskModel> getTasksCollections() {
    return FirebaseFirestore.instance
        .collection('Tasks')
        .withConverter<TaskModel>(fromFirestore: (snapshot, options) {
      return TaskModel.fromJson(snapshot.data()!);
    }, toFirestore: (value, options) {
      return value.toJson();
    });
  }

 static void addTaskToFirestore(TaskModel taskModel) {
    var collection = getTasksCollections();
    var docRef = collection.doc();
    taskModel.id = docRef.id;
    docRef.set(taskModel);
  }
}
