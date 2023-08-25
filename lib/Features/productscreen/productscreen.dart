import 'package:budgetbee/commons/widgets/elevatedcustom.dart';
import 'package:budgetbee/commons/widgets/homeappbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String Sizeselect = 'Small';
  String Colorselect = 'black';

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 1.1,
    );
    return Scaffold(
        appBar: const HomeAppBar(title: 'Product', implyleading: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: controller, // Adjust the viewportFraction
                  itemCount: 3, // Number of cards
                  itemBuilder: (context, index) {
                    void onTapFunction() {
                      // Define different actions for each index
                      if (index == 0) {
                        // Action for the first card
                        print('Tapped on the first card');
                        // Add your desired action here
                      } else if (index == 1) {
                        // Action for the second card
                        print('Tapped on the second card');
                        // Add your desired action here
                      } else if (index == 2) {
                        // Action for the third card
                        print('Tapped on the third card');
                        // Add your desired action here
                      }
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: onTapFunction,
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: SizedBox(
                            height: 400,
                            width: 200,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              child: Image.asset(
                                index == 0
                                    ? 'assets/gaming.jpeg'
                                    : index == 1
                                        ? 'assets/techcategory.jpg'
                                        : 'assets/gaming.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SmoothPageIndicator(
                controller:
                    controller, // Use the same controller as your PageView widget
                count: 3, // Use the same count as your PageView widget
                effect:
                    const WormEffect(), // Choose any effect from the package
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          DropdownButton<String>(
                            value: Sizeselect,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 35,
                            elevation: 16,
                            //style: const TextStyle(color: Colors.deepPurple),
                            // underline: Container(
                            //   height: 2,
                            //   color: Colors.deepPurpleAccent,
                            // ),
                            onChanged: (String? newValue) {
                              setState(() {
                                Sizeselect = newValue!;
                              });
                            },
                            items: <String>[
                              'Small',
                              'Medium',
                              'Large',
                              'Extra Large'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          DropdownButton<String>(
                            value: Colorselect,
                            icon: const Icon(Icons.arrow_drop_down),

                            iconSize: 35,
                            elevation: 16,
                            //style: const TextStyle(color: Colors.deepPurple),
                            // underline: Container(
                            //   height: 2,
                            //   color: Colors.deepPurpleAccent,
                            // ),
                            onChanged: (String? newValue) {
                              setState(() {
                                Colorselect = newValue!;
                              });
                            },
                            items: <String>['black', 'blue', 'brown', 'white']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.heart))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Gaming PC',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Rs. ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          NumberFormat.currency(
                            symbol:
                                '', // You can customize the currency symbol if needed
                            decimalDigits:
                                0, // You can adjust the number of decimal digits
                          ).format(int.parse(
                              '170000')), // Assuming priceofproduct is a String
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text('(4.5)'),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  'this is a dummy product with dummy data inside its a very good product i dont care if you buy it or not but itwil eremin goofdthis is a dummy product with dummy data inside its a very good product i dont care if you buy it or not but itwil eremin goofd',
                ),
              ),

              //RoundButton(title: 'Add to card', onTap: () {}),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 80,
          child: RoundButton(title: 'Add to cart', onTap: () {}),
        ));
  }
}
