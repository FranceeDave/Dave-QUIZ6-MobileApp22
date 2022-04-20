import 'dart:io';
import 'dart:async';
import 'dart:convert';



import 'package:http/http.dart' as http;

Future<EventsLists> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://api.nextgenapp.net/api-nextgen/event/'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: '1a2f563a88755bd45fe93f797dc5e179d175db6d ',
    },
  );
  final responseJson = jsonDecode(response.body);

  return EventsLists.fromJson(responseJson);
}

List<EventsLists> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<EventsLists>((json) => EventsLists.fromJson(json)).toList();
}

class EventsLists {
  final String eventname;
  final String eventimage;
  final String eventdescription;

  const EventsLists({
    required this.eventname,
    required this.eventimage,
    required this.eventdescription,
  });

  factory EventsLists.fromJson(Map<String, dynamic> json) {
    return EventsLists(
      eventname: json['name'],
      eventimage: json['image'],
      eventdescription: json['description'],
    );
  }
}