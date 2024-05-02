
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class text extends StatelessWidget {
  String data;
  Color color;
  double f_size;
  FontWeight f_weight;
  text(
      {super.key,
      required this.data,
      required this.f_size,
      required this.color,
      required this.f_weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.raleway(
        fontSize: f_size,
        color: color,
        fontWeight: f_weight,
      ),
    );
  }
}
