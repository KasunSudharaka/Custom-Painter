import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class MyCustomPainter extends StatefulWidget {
  const MyCustomPainter({Key? key}) : super(key: key);

  @override
  State<MyCustomPainter> createState() => _MyCustomPainterState();
}

class _MyCustomPainterState extends State<MyCustomPainter> {
  String selectedCommand = '';
  List<String> commandsSet = [
    'Line',
    'Circle',
    'Rect',
    'Path',
    'Arc',
    'Oval',
    'Points'
  ];
  @override
  void initState() {
    selectedCommand = 'Line';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return (const Center(child: (Text("My Custom Painter"))));
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: const Text(
                "List of Commands",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            child: DropdownButton<String>(
              value: selectedCommand, // Initial value
              items: commandsSet.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCommand = newValue!;
                });
              },
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 40),
            height: MediaQuery.of(context).size.height * 0.55,
            color: Colors.transparent,
            padding: const EdgeInsets.all(30),
            child: CustomPaint(
              painter: MyPainter(selectedCommand),
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }

  void setPaintCommand(String command) {
    setState(() {
      selectedCommand = command;
    });
  }
}

class MyPainter extends CustomPainter {
  final String type;
  const MyPainter(this.type);
  @override
  void paint(Canvas canvas, Size size) {
    if (type == 'Line') {
      final paint = Paint()
        ..color = Colors.black
        ..strokeWidth = 2.0;
      canvas.drawLine(
          const Offset(0, 0), Offset(size.width, size.height), paint);
    }
    if (type == 'Rect') {
      final paint = Paint()
        ..color = Colors.blue
        ..style = PaintingStyle.fill;

      final rect = Rect.fromLTRB(50, 50, size.width - 50, size.height - 50);
      canvas.drawRect(rect, paint);
    }
    if (type == 'Circle') {
      final paint = Paint()
        ..color = Colors.red
        ..style = PaintingStyle.fill;

      final center = Offset(size.width / 2, size.height / 2);
      const radius = 100.0;
      canvas.drawCircle(center, radius, paint);
    }
    if (type == 'Path') {
      final paint = Paint()
        ..color = Colors.green
        ..style = PaintingStyle.fill;

      final path = Path()
        ..moveTo(0, size.height)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width / 2, 0)
        ..close();

      canvas.drawPath(path, paint);
    }
    if (type == 'Arc') {
      final rect = Rect.fromLTWH(50, 50, size.width - 100, size.height - 100);
      const startAngle = 0.0;
      const sweepAngle = 2.0 * pi * 0.4;

      final paint = Paint()
        ..color = Colors.orange
        ..style = PaintingStyle.fill;

      canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
    }
    if (type == 'Oval') {
      final rect = Rect.fromLTWH(50, 50, size.width - 100, size.height - 100);

      final paint = Paint()
        ..color = Colors.purple
        ..style = PaintingStyle.fill;

      canvas.drawOval(rect, paint);
    }
    if (type == 'Points') {
      final points = [
        const Offset(50, 50),
        Offset(size.width / 2, size.height / 2),
        Offset(size.width - 50, size.height - 50),
      ];

      final paint = Paint()
        ..color = Colors.teal
        ..strokeWidth = 5.0
        ..strokeCap = StrokeCap.round;

      canvas.drawPoints(PointMode.points, points, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
