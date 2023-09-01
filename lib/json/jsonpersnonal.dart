import 'package:bpcl_project/navigations/household/duracellpage.dart';
import 'package:bpcl_project/navigations/household/electricfanpage.dart';
import 'package:bpcl_project/navigations/household/heaterpage.dart';
import 'package:bpcl_project/navigations/household/mosqutiopaghe.dart';
import 'package:bpcl_project/navigations/household/sandwichmakerpage.dart';
import 'package:bpcl_project/navigations/household/scrubberpage.dart';
import 'package:bpcl_project/navigations/household/storagebox.dart';
import 'package:bpcl_project/navigations/household/sweingpage.dart';
import 'package:bpcl_project/navigations/household/toastypage.dart';
import 'package:bpcl_project/navigations/personalcare/dentaltools.dart';
import 'package:bpcl_project/navigations/personalcare/dettolhandwash.dart';
import 'package:bpcl_project/navigations/personalcare/fashwash.dart';
import 'package:bpcl_project/navigations/personalcare/foaming.dart';
import 'package:bpcl_project/navigations/personalcare/grooming.dart';
import 'package:bpcl_project/navigations/personalcare/hairdryer.dart';
import 'package:bpcl_project/navigations/personalcare/multipurpose.dart';
import 'package:bpcl_project/navigations/personalcare/nailercutter.dart';
import 'package:bpcl_project/navigations/personalcare/removalrazer.dart';
import 'package:bpcl_project/navigations/personalcare/sportsshoes.dart';
import 'package:bpcl_project/navigations/personalcare/sungaless.dart';
import 'package:bpcl_project/navigations/personalcare/trimmer.dart';
import 'package:bpcl_project/navigations/personalcare/weighting.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigations/household/3pinpage.dart';
import '../navigations/household/boulmixerpage.dart';
import '../navigations/household/electrickettle.dart';
import '../navigations/household/filterlesspage.dart';
import '../navigations/household/mixerpage.dart';
import '../navigations/personalcare/dettolsoap.dart';
import '../navigations/personalcare/shampoo.dart';
import '../orderpage.dart';

class PersonalCareJson extends StatefulWidget {
  const PersonalCareJson({Key? key}) : super(key: key);

  @override
  _PersonalCareJsonState createState() => _PersonalCareJsonState();
}

class _PersonalCareJsonState extends State<PersonalCareJson> {
  void navigateToProduct(BuildContext context, int productId) {
    switch (productId) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => foaming()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => grooming()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => trimmer()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => weighting()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hairdryer()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => removalrazer()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => multibage()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => dettolhandwash()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => dentaltools()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => nailercutter()));
        break;
      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sunglasses()));
        break;
      case 12:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Shampoo()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => dettolsoap()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sportsshoes()));
        break;
      case 15:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => facewash()));
        break;
    }
  }

  late List<Map<String, dynamic>> filtered = [];
  String search = "";
  void updateCartCount() {
    setState(() {
      cartcount = cart.isNotEmpty ? cart.length.toString() : '';
    });
  }

  String cartcount = '';
  late SharedPreferences prefs;
  Map<int, int> cart = {};

  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "quantity": 1,
      "name": "Foaming Facebath",
      "image": "images/personalcare/foaming_cleaner-removebg-preview (1).png",
      "price": 429,
      "preprice": 549,
      "offer": "20% Off",
    },
    {
      "id": 2,
      "quantity": 1,
      "name": "Grooming scrissor",
      "image": "images/personalcare/grooming_scrissor-removebg-preview.png",
      "price": 229,
      "preprice": 439,
      "offer": "45% Off",
    },
    {
      "id": 3,
      "quantity": 1,
      "name": "Trimmer All-in-one",
      "image": "images/personalcare/grimmer-removebg-preview.png",
      "price": 1600,
      "preprice": 2500,
      "offer": "70% Off",
    },
    {
      "id": 4,
      "quantity": 1,
      "name": "Weighting Scale",
      "image": "images/personalcare/weighting_scale-removebg-preview.png",
      "price": 821,
      "preprice": 1390,
      "offer": "22% Off",
    },
    {
      "id": 5,
      "quantity": 1,
      "name": "Hair dryer",
      "image": "images/personalcare/hair_dryer-removebg-preview.png",
      "price": 1999,
      "preprice": 2975,
      "offer": "15% Off",
    },
    {
      "id": 6,
      "quantity": 1,
      "name": "Removal razer",
      "image": "images/personalcare/removal_razor-removebg-preview.png",
      "price": 171,
      "preprice": 699,
      "offer": "79% Off",
    },
    {
      "id": 7,
      "quantity": 1,
      "name": "Multi purposebag",
      "image": "images/personalcare/multi_purposebag-removebg-preview.png",
      "price": 99,
      "preprice": 299,
      "offer": "3% Off",
    },
    {
      "id": 8,
      "quantity": 1,
      "name": "Dettol handwash",
      "image": "images/personalcare/dettolhandwash-removebg-preview.png",
      "price": 182,
      "preprice": 601,
      "offer": "40% Off",
    },
    {
      "id": 9,
      "quantity": 1,
      "name": "Dental tools",
      "image": "images/personalcare/dental_tools-removebg-preview.png",
      "price": 404,
      "preprice": 707,
      "offer": "60% Off",
    },
    {
      "id": 10,
      "quantity": 1,
      "name": "Nail cutter",
      "image": "images/personalcare/nail_cutter-removebg-preview.png",
      "price": 55,
      "preprice": 290,
      "offer": "4% Off",
    },
    {
      "id": 11,
      "quantity": 1,
      "name": "Polarized Sunglasses",
      "image": "images/personalcare/polarized_sunglasses-removebg-preview.png",
      "price": 899,
      "preprice": 999,
      "offer": "3% Off",
    },
    {
      "id": 12,
      "quantity": 1,
      "name": "Shampoo",
      "image":
          "images/personalcare/head_and_shoulders_shampoo-removebg-preview.png",
      "price": 432,
      "preprice": 1083,
      "offer": "50% Off",
    },
    {
      "id": 13,
      "quantity": 1,
      "name": "Dettol soap",
      "image": "images/personalcare/detol_soap-removebg-preview.png",
      "price": 111,
      "preprice": 321,
      "offer": "3% Off",
    },
    {
      "id": 14,
      "quantity": 1,
      "name": "Sports shoes",
      "image": "images/personalcare/shoes-removebg-preview (1).png",
      "price": 991,
      "preprice": 1000,
      "offer": "2% Off",
    },
    {
      "id": 15,
      "quantity": 1,
      "name": "Face wash",
      "image": "images/personalcare/fash_wash-removebg-preview.png",
      "price": 199,
      "preprice": 2000,
      "offer": "90% Off",
    },
  ];
  @override
  void initState() {
    super.initState();
    initializeSharedPreferences();
    filtered = products;
  }

  void updateFilteredProducts(String query) {
    setState(() {
      filtered = products.where((product) {
        final productName = product["name"].toString().toLowerCase();
        return productName.contains(query.toLowerCase());
      }).toList();
    });
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
            "Personal Care",
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
                                      cart[product["id"]] = product["quantity"];
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
