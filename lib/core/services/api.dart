import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class FirestoreService {
  static final FirestoreService _firestoreService =
      FirestoreService._internal();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  FirestoreService._internal();

  factory FirestoreService() {
    return _firestoreService;
  }

  getCollection(String collectionID) {
    return _db.collection(collectionID);
  }

  Future<void> addDocument(collectionID, data) {
    return FirebaseFirestore.instance
        .collection(collectionID)
        .add(data)
        .then((value) => print("Document Added"))
        .catchError((error) => print("Failed to add document: $error"));
  }

  Future getDocuments(collectionID) async {
    return FirebaseFirestore.instance.collection(collectionID).get();
  }

  Future getDocument(collectionID, documentID) async {
    return FirebaseFirestore.instance
        .collection(collectionID)
        .doc(documentID)
        .get();
  }

  Future<void> updateDocument(collectionID, documentID, data) {
    return FirebaseFirestore.instance
        .collection(collectionID)
        .doc(documentID)
        .update(data)
        .then((value) => print("Document Updated"))
        .catchError((error) => print("Failed to updated document: $error"));
  }
}
