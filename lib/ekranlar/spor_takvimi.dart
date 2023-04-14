import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class gunluk extends StatefulWidget {
  const gunluk({Key? key}) : super(key: key);

  @override
  State<gunluk> createState() => _gunlukState();
}

class _gunlukState extends State<gunluk> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPOR TAKVİMİ", style: TextStyle(fontSize: 26)),
        centerTitle: true,
        backgroundColor: Colors.white30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 82, 11, 3),
      ),
      body: Column(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TableCalendar(
              rowHeight: 55,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 10),
              lastDay: DateTime.utc(2031, 2, 28),
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Color.fromARGB(255, 82, 11, 3),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
