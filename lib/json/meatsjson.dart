import 'package:bpcl_project/navigations/meats/americansusage.dart';
import 'package:bpcl_project/navigations/meats/ashok%20masala.dart';
import 'package:bpcl_project/navigations/meats/chickerncurrrypage.dart';
import 'package:bpcl_project/navigations/meats/choppedham.dart';
import 'package:bpcl_project/navigations/meats/everestmasala.dart';
import 'package:bpcl_project/navigations/meats/gekipage.dart';
import 'package:bpcl_project/navigations/meats/itcchef.dart';
import 'package:bpcl_project/navigations/meats/kellychcicken.dart';
import 'package:bpcl_project/navigations/meats/meatsmasala.dart';
import 'package:bpcl_project/navigations/meats/muttoncutlet.dart';
import 'package:bpcl_project/navigations/meats/muttonjosh.dart';
import 'package:bpcl_project/navigations/meats/realchicken.dart';
import 'package:bpcl_project/navigations/meats/seekh%20kebab.dart';
import 'package:bpcl_project/navigations/meats/sumeruchicken.dart';
import 'package:bpcl_project/navigations/meats/veagonmeat.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../orderpage.dart';

class MeatsJson extends StatefulWidget {
  const MeatsJson({Key? key}) : super(key: key);

  @override
  _MeatsJsonState createState() => _MeatsJsonState();
}

class _MeatsJsonState extends State<MeatsJson> {
  void navigateToProduct(BuildContext context, int productId) {
    switch (productId) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => chickenpage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => veagonmeat()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => choppedham()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => americansusage()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => meatsmasala()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => everestmasala()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => realchicken()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => kellychicken()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => seekhkebab()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ashokmeat()));
        break;
      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sumeruchicken()));
        break;
      case 12:
        Navigator.push(context, MaterialPageRoute(builder: (context) => itc()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => geki()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => muttonrosh()));
        break;
      case 15:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => mmuttoncutlet()));
        break;
    }
  }

  late List<Map<String, dynamic>> filtered = [];
  String search = "";
  late SharedPreferences prefs;
  Map<int, int> cart = {};

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Chicken curry",
      "image": "images/meats/chickencurry_500gm-removebg-preview.png",
      "price": 443,
      "quantity": 1,
      "preprice": 935,
      "offer": "20% Off",
    },
    {
      "id": 2,
      "name": "Veagon meat",
      "image": "images/meats/treatmeat-removebg-preview.png",
      "price": 299,
      "quantity": 1,
      "preprice": 350,
      "offer": "14% Off",
    },
    {
      "id": 3,
      "name": "Chopped ham",
      "image": "images/meats/choopedham-removebg-preview.png",
      "price": 786,
      "quantity": 1,
      "preprice": 1200,
      "offer": "12% Off",
    },
    {
      "id": 4,
      "name": "American Sausage",
      "image": "images/meats/americanherbsasuage-removebg-preview.png",
      "price": 583,
      "quantity": 1,
      "preprice": 900,
      "offer": "30% Off",
    },
    {
      "id": 5,
      "name": "meats masala",
      "image": "images/meats/meatmasala-removebg-preview.png",
      "price": 84,
      "quantity": 1,
      "preprice": 200,
      "offer": "90% Off",
    },
    {
      "id": 6,
      "name": "everest masala",
      "image": "images/meats/everest masala.jpg",
      "price": 43,
      "quantity": 1,
      "preprice": 399,
      "offer": "6% Off",
    },
    {
      "id": 7,
      "name": "Real chicken Biscuit",
      "image": "images/meats/dog_eat-removebg-preview.png",
      "price": 389,
      "quantity": 1,
      "preprice": 598,
      "offer": "30% Off",
    },
    {
      "id": 8,
      "name": "Kelly's chicken",
      "image": "images/meats/kellychicken-removebg-preview.png",
      "price": 303,
      "quantity": 1,
      "preprice": 304,
      "offer": "47% Off",
    },
    {
      "id": 9,
      "name": "Seekh kebab",
      "image": "images/meats/seekh_kebab-removebg-preview.png",
      "price": 304,
      "quantity": 1,
      "preprice": 402,
      "offer": "29% Off",
    },
    {
      "id": 10,
      "quantity": 1,
      "name": "Ashok meat masala",
      "image": "images/meats/meat_masal-removebg-preview.png",
      "price": 20,
      "preprice": 275,
      "offer": "2% Off",
    },
    {
      "id": 11,
      "quantity": 1,
      "name": "Sumeru chicken",
      "image": "images/meats/sumeru_chicken-removebg-preview.png",
      "price": 263,
      "preprice": 432,
      "offer": "29% Off",
    },
    {
      "id": 12,
      "quantity": 1,
      "name": "ITC master chef",
      "image": "images/meats/itcmasterchef-removebg-preview.png",
      "price": 409,
      "preprice": 753,
      "offer": "70% Off",
    },
    {
      "id": 13,
      "quantity": 1,
      "name": "Geki hot& spicy",
      "image": "images/meats/hot__spicy-removebg-preview.png",
      "price": 199,
      "preprice": 1395,
      "offer": "80% Off",
    },
    {
      "id": 14,
      "quantity": 1,
      "name": "Mutton rogan josh",
      "image": "images/meats/61peUD9enBL._SX679_-removebg-preview.png",
      "price": 450,
      "preprice": 900,
      "offer": "5% Off",
    },
    {
      "id": 15,
      "quantity": 1,
      "name": "Mutton cutlet",
      "image": "images/meats/51jDiLgXMYL._SX679_.jpg",
      "price": 99,
      "preprice": 700,
      "offer": "70% Off",
    },

    // ... (other product details)
  ];
  @override
  void initState() {
    super.initState();
    initializeSharedPreferences();
    filtered = products;
  }

  void initializeSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    // Load cart data from SharedPreferences and update the cart map
    final cartData = prefs.getString('cart');
    if (cartData != null) {
      setState(() {
        cart = Map.fromEntries(
          cartData.split(',').map((entry) {
            final parts = entry.split(':');
            return MapEntry(int.parse(parts[0]), int.parse(parts[1]));
          }),
        );
      });
    }
  }

  // Save cart data to SharedPreferences
  void saveCartData() {
    final cartData =
        cart.entries.map((entry) => '${entry.key}:${entry.value}').join(',');
    prefs.setString('cart', cartData);
  }

  void checksearch(String enter) {
    List<Map<String, dynamic>> result = [];
    if (enter.isEmpty) {
      result = products;
    } else {
      result = products
          .where((user) =>
              user['name'].toLowerCase().contains(enter.toLowerCase()))
          .toList(); // Add a closing parenthesis here
    }
  }

  void updateFilteredProducts(String query) {
    setState(() {
      filtered = products.where((product) {
        final productName = product["name"].toString().toLowerCase();
        return productName.contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange.shade200,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Meats",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Stack(children: [
              IconButton(
                onPressed: () {
                  // Show cart items
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CartScreen(cart: cart, products: products),
                      ));
                },
                icon: Icon(Icons.shopping_cart, color: Colors.black),
              ),
              cart.isNotEmpty
                  ? Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          cart.length.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ]),
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  search = value;
                  updateFilteredProducts(search);
                });
              },
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final product = filtered[index];
                return GestureDetector(
                    onTap: () {
                      navigateToProduct(
                          context, product['id']); // Navigate on tap
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              product["image"],
                              width: 120,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Text(
                              product["name"],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "₹${product["price"]}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "₹${product["preprice"]}",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (product["quantity"] > 1) {
                                      setState(() {
                                        product["quantity"]--;
                                        if (cart.containsKey(product["id"])) {
                                          cart[product["id"]] =
                                              product["quantity"];
                                        }
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 25,
                                    color: Colors.red,
                                  )),
                              Text(product["quantity"].toString()),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    product["quantity"]++;
                                    if (cart.containsKey(product["id"])) {
                                      cart[product["id"]] = product["quantity"];
                                    }
                                  });
                                },
                                icon: Icon(Icons.add_circle, size: 25),
                                color: Colors.green,
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (cart.containsKey(product["id"])) {
                                        cart.remove(product['id']);
                                      } else {
                                        cart[product["id"]] =
                                            product["quantity"];
                                      }
                                    });
                                    // show to app bar icon
                                  },
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
