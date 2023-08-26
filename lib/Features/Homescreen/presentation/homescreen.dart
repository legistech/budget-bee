import 'package:budgetbee/Features/categoryscreen/categoryscreen.dart';
import 'package:budgetbee/commons/widgets/catagoriescard.dart';
import 'package:budgetbee/commons/widgets/customtextbutton.dart';
import 'package:budgetbee/commons/widgets/productcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final List<String> items =
      List.generate(20, (indexof) => 'Item ${indexof + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
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
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
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
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Contact us to display your ad here'),
                              content: Text('BudgetBee@gmail.com'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
                      // Add your desired action here
                    } else if (index == 1) {
                      // Action for the second card
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Contact us to display your ad here'),
                              content: Text('BudgetBee@gmail.com'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
                      // Add your desired action here
                    } else if (index == 2) {
                      // Action for the third card
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Contact us to display your ad here'),
                              content: Text('BudgetBee@gmail.com'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: CustomTextButton(
                            ButtonText: 'see all',
                            OnPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const CategoryScreen();
                              }));
                            }))
                  ],
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Catagorycard(
                        givetext: 'Fashion',
                        imageurl: 'assets/clothing.jpeg',
                      ),
                      Catagorycard(
                        givetext: 'Technology',
                        imageurl: 'assets/techcategory.jpg',
                      ),
                      Catagorycard(
                        givetext: 'Gaming',
                        imageurl: 'assets/gaming.jpeg',
                      ),
                      Catagorycard(
                        givetext: 'Sports',
                        imageurl: 'assets/sports.jpg',
                      ),
                      Catagorycard(
                        givetext: "Men's wear",
                        imageurl: 'assets/mens.jpeg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: const Text(
                    'Trending',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: CustomTextButton(
                        ButtonText: 'see all', OnPressed: () {}))
              ],
            ),
            SizedBox(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                      imagepath: 'assets/fashion.jpeg',
                      productname:
                          'Fashion clothing by Satrangi | Get yours now',
                      priceofproduct: '5690'),
                  ProductCard(
                      imagepath: 'assets/sports.jpg',
                      productname:
                          'Sports equipment ultra quality | Get yours today',
                      priceofproduct: '3000'),
                  ProductCard(
                      imagepath: 'assets/techcategory.jpg',
                      productname:
                          'macbook M2 pro | 512GB | 16GB Ram| touch bar',
                      priceofproduct: '260000'),
                  ProductCard(
                      imagepath: 'assets/gaming.jpeg',
                      productname: 'High-End gaming pc I9-13900k | RTX 4090',
                      priceofproduct: '500000'),
                  ProductCard(
                      imagepath: 'assets/mens.jpeg',
                      productname:
                          'Mens wear | ultra quality fabrics| best in quality',
                      priceofproduct: '10000'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: const Text(
                    'On Sale',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: CustomTextButton(
                        ButtonText: 'see all', OnPressed: () {}))
              ],
            ),
          ])),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1.0,
              //crossAxisSpacing: 5.0,
              childAspectRatio: 0.72,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const ProductCard(
                  imagepath: 'assets/mens.jpeg',
                  productname: 'Mens wear',
                  priceofproduct: '1099',
                );
              },
              childCount: items.length,
            ),
          )
        ],
      ),
    );
  }
}
