import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:untitled3/Cita_Confirmada.dart';

class CalendarioCitas extends StatefulWidget {
  const CalendarioCitas({super.key});

  @override
  State<CalendarioCitas> createState() => _CalendarioCitasState();
}

class _CalendarioCitasState extends State<CalendarioCitas> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  Map<DateTime, List<String>> _events = {};

  List<String> _getEventsForDay(DateTime day) {
    //evento aqui
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas',style: TextStyle(fontFamily: 'Poppins'),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
             /* Text('Selecciona un dia',style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18
              ),),*/
              // Calendario
              Container(
                child: TableCalendar(
                  focusedDay: _focusedDay,
                  firstDay: DateTime(2024, 1, 1),
                  lastDay: DateTime(2030, 12, 31),
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                  eventLoader: _getEventsForDay,
                  calendarStyle: CalendarStyle(

                    todayTextStyle: TextStyle(fontFamily: 'Poppins'),

                    defaultTextStyle: TextStyle(fontFamily: 'Poppins')
                  ),
                ),
              ),
              // Mostrar los eventos
              ..._getEventsForDay(_selectedDay).map(
                (event) => ListTile(
                  title: Text(event),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Horarios Disponibles',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Turno (Mañana)
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Turno Mañana',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    '08:00 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '08:30 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE3AADD),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '09:00 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '09:30 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '10:00 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE3AADD),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '10:30 AM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Poppins',
                                        color: Color(0xFFF4E7FB),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /*      height: 200,*/
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFF4E7FB),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Turno (Tarde)
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Turno Tarde',  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Center(
                                  child: Text(
                                    '01:00 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '01:30 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE3AADD),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '02:00 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '02:30 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '03:00 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE3AADD),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    '03:30 PM',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFF4E7FB),
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFC8A8E9),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /*      height: 200,*/
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFF4E7FB),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetalleCitaPage(),
                        ));
                  },
                  child: Text(
                    'Confirmar Cita',
                    style: TextStyle(
                          fontFamily: 'Poppins',
                        fontSize: 25, letterSpacing: 2),
                  ),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                ),
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
