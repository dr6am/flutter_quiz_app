import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int total;
  Function reset;

  Result(this.total, this.reset);

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "You did it!",
            style: TextStyle(fontSize: 28),
          ),
          Text("Total: $total", style: TextStyle(fontSize: 18)),
          RaisedButton(child: Text("Restart game"), onPressed: reset),
        ],
      ),
    );
  }
}
