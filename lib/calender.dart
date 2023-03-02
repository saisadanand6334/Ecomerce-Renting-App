import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const Cale());
}

class Cale extends StatefulWidget {
  const Cale({Key? key}) : super(key: key);

  @override
  State<Cale> createState() => _CaleState();
}

class _CaleState extends State<Cale> {
  DateTime today = DateTime.now();
  void _OnDayselected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(" Selected Day = " + today.toString().split("")[0]),
            Container(
              child: TableCalendar(
                locale: "en_US",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2012, 10, 16),
                lastDay: DateTime.utc(2032, 10, 16),
                onDaySelected: _OnDayselected,
              ),
            )
          ],
        ),
      ),
    );
  }
}
