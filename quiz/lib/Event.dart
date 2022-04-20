import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class EventList extends StatefulWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'StemPreneur Day',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                4.height,
                const Text(
                  'Ayo Ikuti ICASTEM 2021: The 2nd Internaational Conference on Applied Sciences, Technology, Engineering, and Mathematics',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                10.height,
              ],
            ).expand(flex: 2),
            4.width,
            Container(
              height: 100,
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
               
              ),
            ).cornerRadiusWithClipRRect(16).expand(flex: 1)
          ],
        ),
        18.height,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Innofair 2022',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                4.height,
                const Text(
                  'Ayo Ikuti Innofair dan pamerkan inovasimu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ).expand(flex: 2),
            4.width,
            Container(
              height: 100,
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
               
              ),
            ).cornerRadiusWithClipRRect(16).expand(flex: 1)
          ],
        ),
      ]),
    );
  }
}
