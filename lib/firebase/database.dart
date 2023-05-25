import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/auth/authentication.dart';

import '../model/review.dart';
import '../model/user.dart';

class Database{
  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static Future<List<Review>> fetchReviews(int idEntity, int entityOrigin, int categoryIndex) async {
    Query query = db.collection("reviews");
    query = query.where("idEntity", isEqualTo: idEntity);
    query = query.where("entityOrigin", isEqualTo: entityOrigin);
    query = query.where("categoryIndex", isEqualTo: categoryIndex);
    List<Review> reviews = [];

    QuerySnapshot querySnapshot = await query.get();
    for (var doc in querySnapshot.docs){
      Map<String, dynamic> reviewData = doc.data() as Map<String, dynamic>;
      Review review = reviewFromMap(reviewData, doc.id);
      reviews.add(review);
    }
    return reviews;
  }

  static void addReview(Review review) {
    db.collection('reviews').add({
      'title': review.title,
      'rating': review.rating,
      'review': review.review,
      'authorId': review.authorId,
      'idEntity': review.idEntity, // Add the companyId field
      'categoryIndex': review.categoryIndex,
      'entityOrigin': review.entityOrigin,
      'votes': review.votes,
    });
  }

  static void updateVoteReview(Review review, int increment) {
    db.collection("reviews").doc(review.reviewRef).update(
        {"votes": FieldValue.increment(increment)}
    );

  }

  static Future<User> getUser(String uid) async {
    var val = await db.collection("users").doc(uid).get();
    Map<String,dynamic> map = val.data()!;
    User user = userFromMap(map);
    return user;
  }

  static void addUser(User user) {
    String uid = Authentication.auth.currentUser!.uid;
    db.collection('users').doc(uid).set({
      'uid': user.uid,
      'username': user.username,
      'firstName': user.firstName,
      'lastName': user.lastName,
      'email': user.email,
      'photoURL': user.photoURL,
    });
  }

  static Future<bool> isUsernameInUse(String username) async {
    Query query = db.collection("users");
    query = query.where("username", isEqualTo: username);
    QuerySnapshot querySnapshot = await query.get();
    return querySnapshot.docs.isNotEmpty;
  }

  static void updateUsername(String uid, String username) {
    db.collection("users").doc(uid).update({"username": username});
  }

  static void updateEmail(String uid, String email) {
    db.collection("users").doc(uid).update({"email": email});
  }

  static Future<bool> isEmailInUse(String email) async {
    Query query = db.collection("users");
    query = query.where("email", isEqualTo: email);
    QuerySnapshot querySnapshot = await query.get();
    return querySnapshot.docs.isNotEmpty;
  }

  static void updateName(String uid, String firstName, String lastName) {
    db.collection("users").doc(uid).update({"firstName": firstName, "lastName": lastName});
  }

  static void updateUserPhotoURL(String uid, String url){
    db.collection("users").doc(uid).update(
        {"photoURL": url}
    );
  }

  static Stream<List<Review>> getUserReviewsStream(String uid, int categoryIndex) {
    Query query = db.collection("reviews");
    query = query.where("categoryIndex", isEqualTo: categoryIndex);
    query = query.where("authorId", isEqualTo: uid);

    return query.snapshots().map((querySnapshot) {
      List<Review> lr = [];
      for (var doc in querySnapshot.docs) {
        Map<String, dynamic> reviewData = doc.data() as Map<String, dynamic>;
        Review review = reviewFromMap(reviewData, doc.id);
        lr.add(review);
      }
      return lr;
    });
  }


  static Future<int> getVoting(String reviewRef) async {
    String uid = Authentication.auth.currentUser!.uid;
    var query = db.collection("reviews").doc(reviewRef).collection("updownvotes").doc(uid);
    var snapshot = await query.get();
    if(snapshot.exists){
      Map<String,dynamic> map = snapshot.data()!;
      return map['voting'];
    }
    else {
      return 0;
    }
  }

  static void setVoting(String reviewRef, int voting){
    String uid = Authentication.auth.currentUser!.uid;
    if (voting != 0) {
      db.collection('reviews').doc(reviewRef)
          .collection("updownvotes").doc(uid).set({'voting': voting, 'uid':uid}, SetOptions(merge: true));
    } else {
      db.collection('reviews').doc(reviewRef)
          .collection("updownvotes").doc(uid).delete();
    }
  }
}