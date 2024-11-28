import 'package:flutter/cupertino.dart';
import 'package:orif_coffee/views/components/styles.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.onChanged});

  final ValueChanged<int> onChanged;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // decrement
        GestureDetector(
          onTap: () {
            setState(() {
              counter--;
              if (counter <= 0) {
                counter = 0;
              }
              widget.onChanged(counter);
            });
          },
          child: Image.asset("assets/images/remove.png"),
        ),
        const SizedBox(width: 10),
        // qty
        AppText(counter.toString()),
        const SizedBox(width: 10),
        // increment
        GestureDetector(
          onTap: () {
            setState(() {
              counter++;
              widget.onChanged(counter);
            });
          },
          child: Image.asset("assets/images/plus.png"),
        ),
      ],
    );
  }
}
