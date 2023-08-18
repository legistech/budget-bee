import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
            child: Row(
              children: [
                // const SizedBox(
                //   width: 10,
                // ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      hintText: 'search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.filter,
                      color: Colors.grey,
                    ))
              ],
            )),
      ),
      body: Column(
        children: [
          //Text('data'),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: const [
                Card(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    //color: Colors.amber[600],
                    child: Center(child: Text('Entry A')),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: Center(child: Text('Entry A')),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: Center(child: Text('Entry A')),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
