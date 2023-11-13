import 'package:cloud_firestore/cloud_firestore.dart';
final FirebaseFirestore firestore = FirebaseFirestore.instance;

CollectionReference reviewCollection = firestore.collection('riview');

void addReview(String APP, String name, String comment, String evaluation
) {
  reviewCollection.add(
      {
        'APP': APP,
        'name': name,
        'comment': comment,
        'evaluation': evaluation,
        'registration_data': DateTime.now(),
      }).then((value) => print('review added'));
}

Stream<QuerySnapshot> getReviews(String App) {
  return reviewCollection.where("APP", isEqualTo: App).snapshots();
}