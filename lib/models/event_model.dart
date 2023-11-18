import 'package:cloud_firestore/cloud_firestore.dart';
import 'user_model.dart';

const List EVENT_CATEGORY = [
  "Attractions",
  "Food",
  "Activities",
  "Bar",
];

const List EVENT_LANGUAGE = ["English", "Cantonese", "Mandarin"];

class Event {
  // User writer = User();
  String title = "Join me for a walk@Asia Park";
  String category = "Attractions";
  String location = "Asia Park";
  int capacity = 3;
  String gender = "No Preference";
  int startAge = 20;
  int endAge = 30;
  bool expired = false;
  List language = ["English", "Cantonese"];
  late DateTime eventTime;
  String photoLink =
      "https://i0.wp.com/billypenn.com/wp-content/uploads/2022/07/ovalferriswheel-sunsetcrop.jpg?fit=2400%2C1350&ssl=1";
  int views = 0;
  DocumentReference<Map<String, dynamic>>? firebaseDocRef;

  Event({
    // User? eventWriter,
    String? eventTitle,
    String? eventCategory,
    String? eventLocation,
    int? eventCapacity,
    String? eventGender,
    int? eventStartAge,
    int? eventEndAge,
    List? eventLanguage,
    DateTime? eventHeldTime,
    String? eventPhotoLink,
    bool? eventExpired,
    int? eventViews = 0,
    DocumentReference<Map<String, dynamic>>? docRef,
  }) {
    // writer = eventWriter ?? writer;
    title = eventTitle ?? title;
    category = eventCategory ?? category;
    location = eventLocation ?? location;
    capacity = eventCapacity ?? capacity;
    gender = eventGender ?? gender;
    startAge = eventStartAge ?? startAge;
    endAge = eventEndAge ?? endAge;
    language = eventLanguage ?? language;
    eventTime = eventHeldTime ?? DateTime.now();
    photoLink = eventPhotoLink ?? photoLink;
    views = eventViews ?? views;
    expired = eventExpired ?? expired;
    firebaseDocRef = docRef;
  }

  // factory for events
  static Future<Event> fromDocRef(
      {DocumentReference<Map<String, dynamic>>? firebaseDoc,
      QueryDocumentSnapshot<Map<String, dynamic>>? firebaseSnap,
      bool expired = false}) async {
    DocumentSnapshot<Map<String, dynamic>> eventData;

    if (firebaseSnap == null) {
      assert(firebaseDoc != null);
      eventData = await firebaseDoc!.get();
    } else {
      eventData = firebaseSnap;
      firebaseDoc ??= eventData.reference;
    }

    return Event(
        eventTitle: eventData.get('title'),
        eventCategory: eventData.get('category'),
        eventLocation: eventData.get('location'),
        eventCapacity: eventData.get('capacity'),
        eventStartAge: eventData.get('startAge'),
        eventEndAge: eventData.get('endAge'),
        eventGender: eventData.get('gender'),
        eventLanguage: eventData.get('language'),
        // eventWriter: await User.fromUserRef(eventData.get('writer')),
        eventExpired: expired,
        eventHeldTime: (eventData.get('eventTime') as Timestamp).toDate(),
        eventPhotoLink: eventData.get('photoLink'),
        eventViews: eventData.get('views'),
        docRef: firebaseDoc);
  }

  // factory for list of events, filter by formality
  static Future<List<Event>> getEventsFromFirebase() async {
    List<Event> events = [];
    Query<Map<String, dynamic>> firebaseQuery = getEventsQuery();
    // Query<Map<String, dynamic>> expiredQuery = getEventsQuery(expired: true);

    QuerySnapshot<Map<String, dynamic>> firebaseEvents =
        await firebaseQuery.get();
    // QuerySnapshot<Map<String, dynamic>> expiredEvents =
    //     await expiredQuery.get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> fbEvent
        in firebaseEvents.docs) {
      events.add(await Event.fromDocRef(firebaseDoc: fbEvent.reference));
    }
    // for (QueryDocumentSnapshot<Map<String, dynamic>> fbEvent
    //     in expiredEvents.docs) {
    //   events.add(await Event.fromDocRef(
    //       firebaseDoc: fbEvent.reference, expired: true));
    // }
    return events;
  }

  static Query<Map<String, dynamic>> getEventsQuery({bool expired = false}) {
    CollectionReference<Map<String, dynamic>> eventCollection =
        FirebaseFirestore.instance.collection('event');
    Query<Map<String, dynamic>> firebaseQuery;
    if (expired) {
      firebaseQuery = eventCollection
          .where('eventTime', isLessThan: DateTime.now())
          .orderBy('eventTime', descending: true)
          .limit(10);
    } else {
      firebaseQuery = eventCollection
          .where('eventTime', isGreaterThanOrEqualTo: DateTime.now())
          .orderBy('eventTime', descending: false)
          .limit(10);
    }
    return firebaseQuery;
  }
}
