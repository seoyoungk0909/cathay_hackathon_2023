import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/event_model.dart';

class EventController {
  Event event = Event();

  get category => event.category;

  void incrementView() {
    event.views++;
    event.firebaseDocRef?.update({"views": FieldValue.increment(1)});
  }

  EventController(this.event);
}
