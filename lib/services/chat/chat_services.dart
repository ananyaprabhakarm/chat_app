import 'package:cloud_firestore/cloud_firestore.dart';

class ChatServices {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firebaseFirestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = doc.data();
        return user;
      }).toList();
    });
  }
}
