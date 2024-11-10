import 'package:flutter/material.dart';

class DetalleCitaPage extends StatelessWidget {
  final String especialidad = 'Cardiología';
  final String doctor = 'Dr. Juan Pérez';
  final String fecha = '15 de noviembre de 2024';
  final String hora = '10:00 AM';
  final String ubicacion = 'Clínica Central, Consultorio 203';
  final String paciente = 'Ana Gómez';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Cita Médica',style: TextStyle(fontFamily: 'Poppins'),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Especialidad: $especialidad',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Doctor: $doctor',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Fecha: $fecha',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Hora: $hora',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Ubicación: $ubicacion',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              'Detalles del Paciente',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Nombre del Paciente: $paciente',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Número de Contacto: 123-456-7890',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text(
              'Correo Electrónico: io@gmail.com',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              'Instrucciones Especiales:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '• Llegar con 15 minutos de antelación.\n'
                  '• Presentar identificación oficial.\n'
                  '• Traer resultados de exámenes previos.',
              style: TextStyle(fontSize: 16,fontFamily: 'Poppins'),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción para confirmar la cita
                },
                child: Text('Confirmar Cita',style: TextStyle(fontFamily: 'Poppins'),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
