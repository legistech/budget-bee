import 'package:budgetbee/commons/widgets/customtextbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.filter,
                color: Colors.grey[500],
              ))
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 170,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: PageController(
                  initialPage: 1,
                  viewportFraction: 0.8), // Adjust the viewportFraction
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
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35)),
                          child: Image.network(
                            index == 0
                                ? 'https://i0.wp.com/kidskapray.com/wp-content/uploads/2022/09/Maria-B-Winter-Sale-2022-Flat-50-Off.jpg?resize=728%2C342&ssl=1'
                                : index == 1
                                    ? 'https://dressesglobe.com/wp-content/uploads/2021/12/Al-Akram-Winter-ready-to-wear-collection-1024x413.png'
                                    : 'https://glamrux.com/blog/wp-content/uploads/2023/03/Summer-Lawn-Sale-2023.jpg.webp',
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  'categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(180, 0, 20, 0),
                  child:
                      CustomTextButton(ButtonText: 'see all', OnPressed: () {}))
            ],
          ),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Image.network(
                        'https://www.askdifference.com/images/catagory-vs-category-1487.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Image.network(
                        'https://www.askdifference.com/images/catagory-vs-category-1487.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Image.network(
                        'https://www.askdifference.com/images/catagory-vs-category-1487.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Image.network(
                        'https://www.askdifference.com/images/catagory-vs-category-1487.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      child: Image.network(
                        'https://www.askdifference.com/images/catagory-vs-category-1487.webp',
                        fit: BoxFit.fill,
                      ),
                    ),
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
