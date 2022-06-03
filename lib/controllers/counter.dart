import 'package:flutter/material.dart';
class CounterDesign extends StatefulWidget{
  const CounterDesign({Key? key}) : super(key:key);

  @override
  State<CounterDesign> createState()=> _CounterDesignState();
}
class _CounterDesignState extends State<CounterDesign> {
  int _n = 0;
  int _amt = 0;

  void add() {
    setState(() {
      _n++;
      _amt += 10;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
        _amt -= 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () => add(),
                  icon: const Icon(Icons.add, color: Colors.black)),
              IconButton(
                  onPressed: () => minus(),
                  icon: const Icon(Icons.remove, color: Colors.black)),
            ],
          ),
        ),
        const SizedBox(width: 100),
        Text(
          'Rs $_amt',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        )
      ],
    );
  }
}