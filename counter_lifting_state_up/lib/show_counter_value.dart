import 'package:flutter/cupertino.dart';

class ShowCounterValue extends StatelessWidget {
  final int _cpt;

  const ShowCounterValue({super.key, required int cpt}) : _cpt = cpt;

  @override
  Widget build(BuildContext context) {
    return Text("cpt value:$_cpt");
  }
}
