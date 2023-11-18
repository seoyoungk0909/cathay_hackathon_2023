import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MakeEventPage extends StatefulWidget {
  @override
  _MakeEventPageState createState() => _MakeEventPageState();
}

class _MakeEventPageState extends State<MakeEventPage> {
  Future<void> uploadEvent() async {
    DocumentReference newEvent =
        await FirebaseFirestore.instance.collection("event").add({
      'title': eventTitle.text.trim(),
      'eventTime': Timestamp.fromDate(
        DateTime(date.year, date.month, date.day, time.hour, time.minute),
      ),
      'language': language,
      'category': categories,
      'gender': trueGender,
      'startAge': startAge,
      'endAge': endAge,
      'capacity': capacity,
      'location': eventLocation.text.trim(),
      'photoLink': eventPhotoLink.text.trim(),
      'views': 0,
    });
  }

  late TimeOfDay time;
  late DateTime date;

  DateTime? _selectedDate;
  String? _selectedTime;

  String getDate() {
    if (_selectedDate == null) {
      return 'DD/MM/YYYY';
    } else {
      return DateFormat('dd-MM-yyyy').format(_selectedDate!);
    }
  }

  String getTime() {
    if (_selectedTime == null) {
      return '--:--AM';
    } else {
      return '$_selectedTime';
    }
  }

  Future _pickDateDialog(BuildContext context) async {
    final initialDate = DateTime.now();
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      initialEntryMode: DatePickerEntryMode.calendar,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 3),
    );
    if (pickedDate == null) return;
    date = pickedDate;
    setState(() => _selectedDate = pickedDate);
  }

  Future _pickTimeDialog(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (pickedTime == null) return;
    time = pickedTime;
    setState(() => _selectedTime = pickedTime.format(context));
  }

  final TextEditingController eventTitle = TextEditingController();
  final TextEditingController eventCategory = TextEditingController();
  final TextEditingController tags = TextEditingController();
  final TextEditingController eventPhotoLink = TextEditingController();
  final TextEditingController eventLocation = TextEditingController();
  final TextEditingController trueGender = TextEditingController();
  final TextEditingController startAge = TextEditingController();
  final TextEditingController endAge = TextEditingController();
  final TextEditingController capacity = TextEditingController();
  final TextEditingController language = TextEditingController();

  Map<String, bool> categories = {
    "Attractions": true,
    "Food": false,
    "Activities": false,
    "Bar": false,
  };

  String trueCategories = "";
  bool urlValidity = true;
  Future<void> checkURL(String url) async {
    if (url != '') {
      try {
        final response = url.contains('https://')
            ? await http.get(Uri.parse(url))
            : await http.get(Uri.parse('https://$url'));
        urlValidity = (response.statusCode == 200);
      } on Exception {
        urlValidity = false;
      } on Error {
        urlValidity = false;
      }
    } else {
      urlValidity = true;
    }
  }

  void createEvent(BuildContext context) {
    for (var category in categories.keys) {
      categories[category] == true ? trueCategories = category : {};
    }
    uploadEvent();
    setState(() {});
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).highlightColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, 'buddyExpress');
            },
          ),
          title: SizedBox(
            width: 48,
            height: 45,
            child: SvgPicture.asset('assets/icons/logo-white.svg'),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 20,
              height: 20,
              child: SvgPicture.asset('icons/share.svg'),
            ),
          ],
        ),
        body: Center(
            child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Image.asset('imgs/hoian.png', fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 230,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset('icons/subtract.svg'),
                ),
              ),

            ],
          ),
        )));
  }
}
