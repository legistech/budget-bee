import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartCard extends StatefulWidget {
  final String text;
  final yourimage;
  const CartCard({
    required this.yourimage,
    required this.text,
    super.key,
  });

  @override
  State<CartCard> createState() => CartCardState();
}

class CartCardState extends State<CartCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 110,
                    child: Column(
                      children: [
                        Text(
                          widget.text,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton.outlined(
                              onPressed: () {
                                _decrementCounter();
                              },
                              icon: const Icon(
                                FontAwesomeIcons.minus,
                                size: 12,
                              ),
                            ),
                            Text(_counter.toString()),
                            IconButton.outlined(
                              onPressed: () {
                                _incrementCounter();
                              },
                              icon: const Icon(
                                FontAwesomeIcons.plus,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        Text('RS. 123,600'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(9)),
                    child: Image.asset(
                      widget.yourimage,
                      fit: BoxFit.cover,
                      //width: 200,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
