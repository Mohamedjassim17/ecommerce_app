import 'package:bpcl_project/navigations/grocerys/aashrivaad.dart';
import 'package:bpcl_project/navigations/grocerys/cashews.dart';
import 'package:bpcl_project/navigations/grocerys/colligate.dart';
import 'package:bpcl_project/navigations/grocerys/disano%20happy.dart';
import 'package:bpcl_project/navigations/grocerys/exo.dart';
import 'package:bpcl_project/navigations/grocerys/fortune%20sunflower.dart';
import 'package:bpcl_project/navigations/grocerys/glucon.dart';
import 'package:bpcl_project/navigations/grocerys/hotchips.dart';
import 'package:bpcl_project/navigations/grocerys/kellogs%20chocos.dart';
import 'package:bpcl_project/navigations/grocerys/maggi.dart';
import 'package:bpcl_project/navigations/grocerys/oats%20museli.dart';
import 'package:bpcl_project/navigations/grocerys/oreo.dart';
import 'package:bpcl_project/navigations/grocerys/vim.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigations/grocerys/dark fanatsy.dart';
import '../navigations/grocerys/tide.dart';
import '../orderpage.dart';

class GroceryJson extends StatefulWidget {
  const GroceryJson({Key? key}) : super(key: key);

  @override
  _GroceryJsonState createState() => _GroceryJsonState();
}

class _GroceryJsonState extends State<GroceryJson> {
  void navigateToProduct(BuildContext context, int productId) {
    switch (productId) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ashrivaad()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => maggic()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => exo()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cashews()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => disanohappy()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => oatsmuseli()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tide()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => colagate()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => oreo()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => glucon()));
        break;
      case 11:
        Navigator.push(context, MaterialPageRoute(builder: (context) => vim()));
        break;
      case 12:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => fortunesunflower()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => kellogschocs()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hotchips()));
        break;
      case 15:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => darkfanatsy()));
        break;
    }
  }

  void updateCartCount() {
    setState(() {
      cartcount = cart.isNotEmpty ? cart.length.toString() : '';
    });
  }

  String cartcount = '';
  late SharedPreferences prefs;
  Map<int, int> cart = {};
  late List<Map<String, dynamic>> filtered = [];
  String search = "";
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "quantity": 1,
      "name": "Aashirvaad",
      "image": "images/grocery/aashirvaad-removebg-preview.png",
      "price": 370,
      "preprice": 450,
      "offer": "40% Off",
    },
    {
      "id": 2,
      "quantity": 1,
      "name": "Maggi",
      "image": "images/grocery/maggic-removebg-preview.png",
      "price": 129,
      "preprice": 204,
      "offer": "8% Off",
    },
    {
      "id": 3,
      "quantity": 1,
      "name": "Exo",
      "image": "images/grocery/exo-removebg-preview.png",
      "price": 49,
      "preprice": 79,
      "offer": "25% Off",
    },
    {
      "id": 4,
      "quantity": 1,
      "name": "Cashews",
      "image": "images/grocery/Cashews-removebg-preview.png",
      "price": 1200,
      "preprice": 1299,
      "offer": "30% Off",
    },
    {
      "id": 5,
      "quantity": 1,
      "name": "Disano Honey",
      "image": "images/grocery/disano_honey-removebg-preview.png",
      "price": 129,
      "preprice": 169,
      "offer": "24% Off",
    },
    {
      "id": 6,
      "quantity": 1,
      "name": "Oats Muesli",
      "image": "images/grocery/oats_muesli-removebg-preview.png",
      "price": 358,
      "preprice": 716,
      "offer": "50% Off",
    },
    {
      "id": 7,
      "quantity": 1,
      "name": "Tide",
      "image": "images/grocery/tide-removebg-preview.png",
      "price": 1200,
      "preprice": 2500,
      "offer": "52% Off",
    },
    {
      "id": 8,
      "quantity": 1,
      "name": "Colgate",
      "image": "images/grocery/colgate-removebg-preview.png",
      "price": 973,
      "preprice": 995,
      "offer": "2% Off",
    },
    {
      "id": 9,
      "quantity": 1,
      "name": "Oreo",
      "image": "images/grocery/oreo-removebg-preview.png",
      "price": 266,
      "preprice": 355,
      "offer": "40% Off",
    },
    {
      "id": 10,
      "quantity": 1,
      "name": "Glucon-D",
      "image": "images/grocery/glucon-d-removebg-preview.png",
      "price": 499,
      "preprice": 549,
      "offer": "9% Off",
    },
    {
      "id": 11,
      "quantity": 1,
      "name": "Vim",
      "image": "images/grocery/vim-removebg-preview.png",
      "price": 340,
      "preprice": 408,
      "offer": "17% Off",
    },
    {
      "id": 12,
      "quantity": 1,
      "name": "Fortune Sunflower",
      "image": "images/grocery/fortune_sunflower-removebg-preview.png",
      "price": 510,
      "preprice": 600,
      "offer": "7% Off",
    },
    {
      "id": 13,
      "quantity": 1,
      "name": "Kellog's Chocos",
      "image": "images/grocery/kellogs_chocos-removebg-preview.png",
      "price": 399,
      "preprice": 649,
      "offer": "38% Off",
    },
    {
      "id": 14,
      "quantity": 1,
      "name": "Hot Chips",
      "image": "images/grocery/hot_chips-removebg-preview.png",
      "price": 455,
      "preprice": 755,
      "offer": "10% Off",
    },
    {
      "id": 15,
      "quantity": 1,
      "name": "Dark Fantasy",
      "image": "images/grocery/dark_fantasy-removebg-preview.png",
      "price": 230,
      "preprice": 455,
      "offer": "10% Off",
    },
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
            "Grocery",
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
                              width: 150,
                              height: 120,
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
                            padding: const EdgeInsets.only(top: 10, left: 10),
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
