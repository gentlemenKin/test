

import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter{

  SignaturePainter(this.points);
  final List<Offset> points;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint()
          ..color = Colors.red
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5.0;
    for(int i = 0;i<points.length-1;i++){
      if(points[i]!=null && points[i+1]!=null){
        canvas.drawLine(points[i], points[i+1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

  }
}

class SignatureState extends StatefulWidget {
  @override
  _SignatureStateState createState() => _SignatureStateState();
}

class _SignatureStateState extends State<SignatureState> {
  List<Offset>_points = <Offset>[];

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onPanUpdate: (DragUpdateDetails details){
        setState(() {
          RenderBox reference = context.findRenderObject();
          Offset loacl = reference.globalToLocal(details.globalPosition);
          _points = new List.from(_points)..add(loacl);
        });
      },
      onPanEnd: (DragEndDetails detail )=>_points.add(null),
      child: new CustomPaint(painter: new SignaturePainter(_points),),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SignatureState(),
    );
  }
}

void main()=>runApp(new MaterialApp(home: new Demo(),));