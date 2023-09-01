import 'package:bpcl_project/navigations/bread&milk/amulpanner.dart';
import 'package:bpcl_project/navigations/bread&milk/cookieman.dart';
import 'package:bpcl_project/navigations/bread&milk/fresheggs.dart';
import 'package:bpcl_project/navigations/bread&milk/healthyeggs.dart';
import 'package:bpcl_project/navigations/bread&milk/heritage.dart';
import 'package:bpcl_project/navigations/bread&milk/multiseed.dart';
import 'package:bpcl_project/navigations/bread&milk/nankahahthi.dart';
import 'package:bpcl_project/navigations/bread&milk/pistachiomilk.dart';
import 'package:bpcl_project/navigations/bread&milk/smoodh.dart';
import 'package:bpcl_project/navigations/bread&milk/soudoughbread.dart';
import 'package:bpcl_project/navigations/bread&milk/soyapanner.dart';
import 'package:bpcl_project/navigations/bread&milk/whoafree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigations/bread&milk/browneggs.dart';
import '../navigations/bread&milk/kattamutta.dart';
import '../navigations/bread&milk/pannerphool.dart';
import '../orderpage.dart';

class BreadJson extends StatefulWidget {
  const BreadJson({Key? key}) : super(key: key);

  @override
  _BreadJsonState createState() => _BreadJsonState();
}

class _BreadJsonState extends State<BreadJson> {
  void navigateToProduct(BuildContext context, int productId) {
    switch (productId) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => soudough()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => multiseed()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => heritage()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => smoodh()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => amulpanner()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => soyapanner()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => fresheggs()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => browneggs()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => wheafree()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => nankahathi()));
        break;
      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cookieman()));
        break;
      case 12:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pannerphool()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pistachiomilk()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => healthyeggs()));
        break;
      case 15:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => kuttamutta()));
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
  List<Map<String, dynamic>> filtered = [];

  String search = "";

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Soudough bread",
      "image": "images/bakery/bread-removebg-preview.png",
      "price": 199,
      "preprice": 300,
      "quantity": 1,
    },
    {
      "id": 2,
      "name": "Multiseed bread",
      "image": "images/bakery/multiseed-removebg-preview.png",
      "price": 84,
      "quantity": 1,
      "preprice": 192,
    },
    {
      "id": 3,
      "name": "Heritage Milk",
      "quantity": 1,
      "image": "images/bakery/heritage_milk-removebg-preview.png",
      "price": 399,
      "preprice": 299,
    },
    {
      "id": 4,
      "quantity": 1,
      "name": "Smoodh (40 pack)",
      "image": "images/bakery/smoodh_40paack-removebg-preview.png",
      "price": 601,
      "preprice": 399,
    },
    {
      "id": 5,
      "quantity": 1,
      "name": "Amul panner",
      "image": "images/bakery/amul_panner-removebg-preview.png",
      "price": 69,
      "preprice": 80,
    },
    {
      "id": 6,
      "quantity": 1,
      "name": "Soya Panner",
      "image": "images/bakery/soya_panner-removebg-preview.png",
      "price": 239,
      "preprice": 362,
    },
    {
      "id": 7,
      "quantity": 1,
      "name": "Fresh eggs",
      "image": "images/bakery/Fresh_eggs-removebg-preview.png",
      "price": 429,
      "preprice": 494,
    },
    {
      "id": 8,
      "quantity": 1,
      "name": "Brown eggs",
      "image": "images/bakery/brown_eggs-removebg-preview.png",
      "price": 243,
      "preprice": 183,
    },
    {
      "id": 9,
      "quantity": 1,
      "name": "Wheafree breadmix",
      "image": "images/bakery/wheafree_breadmix-removebg-preview.png",
      "price": 179,
      "preprice": 364,
    },
    {
      "id": 10,
      "quantity": 1,
      "name": "Nankahathi Cookies",
      "image": "images/bakery/nankhhatai_cookies-removebg-preview.png",
      "price": 313,
      "preprice": 496,
    },
    {
      "id": 11,
      "quantity": 1,
      "name": "Cookieman",
      "image": "images/bakery/cookieman-removebg-preview.png",
      "price": 374,
      "preprice": 1781,
    },
    {
      "id": 12,
      "quantity": 1,
      "name": "Panner Phool",
      "image": "images/bakery/panner_phool-removebg-preview.png",
      "price": 863,
      "preprice": 863,
    },
    {
      "id": 13,
      "quantity": 1,
      "name": "Pistachio milk",
      "image": "images/bakery/pistachio_milk-removebg-preview.png",
      "price": 530,
      "preprice": 792,
    },
    {
      "id": 14,
      "quantity": 1,
      "name": "Healthy eggs",
      "image": "images/bakery/healthy_eggs-removebg-preview.png",
      "price": 792,
      "preprice": 204,
    },
    {
      "id": 15,
      "quantity": 1,
      "name": "Katta Mutta",
      "image": "images/bakery/kadda_mutta-removebg-preview.png",
      "price": 204,
      "preprice": 620,
    },
  ];
  @override
  void initState() {
    super.initState();
    filtered = products;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  ///search product using this line
  void updateFilteredProducts(String query) {
    setState(() {
      filtered = products.where((product) {
        final productName = product["name"].toString().toLowerCase();
        return productName.contains(query.toLowerCase());
      }).toList();
    });
  }

  ///cartitem storing this line
  void saveCartData() {
    final cartData =
        cart.entries.map((entry) => '${entry.key}:${entry.value}').join(',');
    prefs.setString('cart', cartData);
  }

  ///search equal their will be show otherwise not showing
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
          "Breads",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () async {
                  // Show cart items
                  final updatedCart = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(
                        cart: cart,
                        products: products,
                      ),
                    ),
                  );

                  if (updatedCart != null) {
                    setState(() {
                      cart = updatedCart();
                    });
                    saveCartData();
                    updateCartCount();
                  }
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
            ],
          ),
        ],
      ),
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
                              height: 130,
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
                            padding: const EdgeInsets.only(left: 10),
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
                                    setState(() {
                                      if (product["quantity"] > 1) {
                                        product["quantity"]--;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 20,
                                    color: Colors.red,
                                  )),
                              Text(product["quantity"].toString()),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    product["quantity"]++;
                                  });
                                },
                                icon: Icon(Icons.add_circle, size: 20),
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
