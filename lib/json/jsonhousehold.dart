import 'dart:convert';

import 'package:bpcl_project/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigations/household/3pinpage.dart';
import '../navigations/household/boulmixerpage.dart';
import '../navigations/household/duracellpage.dart';
import '../navigations/household/electricfanpage.dart';
import '../navigations/household/electrickettle.dart';
import '../navigations/household/filterlesspage.dart';
import '../navigations/household/heaterpage.dart';
import '../navigations/household/mixerpage.dart';
import '../navigations/household/mosqutiopaghe.dart';
import '../navigations/household/sandwichmakerpage.dart';
import '../navigations/household/scrubberpage.dart';
import '../navigations/household/storagebox.dart';
import '../navigations/household/sweingpage.dart';
import '../navigations/household/toastypage.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  String s = "";
  List<String> emptyList = [];

  void navigateToProduct(BuildContext context, int productId) {
    switch (productId) {
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => electrickettlepage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => boulmakerpage()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => sandwichmakerpage()));
        break;
      case 4:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => electricfanpage()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pinpage()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => heaterpage()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => mixerpage()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sweingpage()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => scrubberpage()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => filterlesspage()));
        break;
      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => storagepage()));
        break;
      case 12:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => toastypage()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => mosquitopage()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => batterypage()));
        break;
    }
  }

  void updateCartCount() {
    setState(() {
      cartcount = cart.isNotEmpty ? cart.length.toString() : '';
    });
  }

  var search = '';
  String cartcount = '';
  late SharedPreferences prefs;
  Map<int, int> cart = {};

  void addToCart(int productId) {
    setState(() {
      if (cart.containsKey(productId)) {
        cart[productId] = cart[productId]! + 1;
      } else {
        cart[productId] = 1;
      }

      // Fetch product details by ID
      final productk =
          products.firstWhere((element) => element["id"] == productId);

      // Add the product to the cartList
      emptyList.add(productk as String);

      // Update the cart data in SharedPreferences
      prefs.setString('cart', jsonEncode(emptyList));

      // Print the updated cartList
      print(emptyList);
    });
  }

  // Initialize the empty cart list in _initializeEmptyCart method
  Future<void> _initializeEmptyCart() async {
    prefs = await SharedPreferences.getInstance();

    // Initialize with an empty JSON array
    if (!prefs.containsKey('cart')) {
      s = prefs.setString('cart', '[]') as String;
    }
  }

// Add a product to the car

  Future<void> initializeEmptyCart() async {
    prefs = await SharedPreferences.getInstance();

    // Initialize with an empty JSON array
    if (!prefs.containsKey('cart')) {
      prefs.setString('cart', jsonEncode([]));
    }
  }

  List<Map<String, dynamic>> filtered = [];
  Future<void> _loadCartData() async {
    prefs = await SharedPreferences.getInstance();
    final cartData = prefs.getString('cart');
    //print(cartData);
    if (cartData != null) {
      final cartItems = cartData.split(',');
      for (final item in cartItems) {
        final parts = item.split(':');
        final productId = int.tryParse(parts[0]);
        final quantity = int.tryParse(parts[1]);
        if (productId != null && quantity != null) {
          cart[productId] = quantity;
        }
      }
      updateCartCount();
    }
  }

// Initialize filtered products list
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Electric Kettle",
      "image": "images/household/kettle-removebg-preview.png",
      "price": 3002,
      "preprice": 4002,
      "quantity": 1
    },
    {
      "id": 2,
      "name": "Boul Mixer",
      "image": "images/household/boulmixer-removebg-preview.png",
      "price": 5920,
      "preprice": 8000,
      "quantity": 1
    },
    {
      "id": 3,
      "name": "Sandwich Maker",
      "image": "images/household/sandwichmaker-removebg-preview.png",
      "price": 3201,
      "preprice": 7999,
      "quantity": 1
    },
    {
      "id": 4,
      "name": "Electric Fan",
      "image": "images/household/fan-removebg-preview.png",
      "price": 2999,
      "preprice": 5999,
      "quantity": 1
    },
    {
      "id": 5,
      "name": "3-Pin Plug",
      "image": "images/household/3pin-removebg-preview.png",
      "price": 201,
      "preprice": 399.0,
      "quantity": 1
    },
    {
      "id": 6,
      "name": "Heater",
      "image": "images/household/heater-removebg-preview.png",
      "price": 8974,
      "preprice": 10400.0,
      "quantity": 1
    },
    {
      "id": 7,
      "name": "Mixer",
      "image": "images/household/mixer-removebg-preview.png",
      "price": 1390,
      "preprice": 4239.0,
      "quantity": 1
    },
    {
      "id": 8,
      "name": "Sweing Machine",
      "image": "images/household/sweingmachine-removebg-preview.png",
      "price": 1313,
      "preprice": 1250,
      "quantity": 1
    },
    {
      "id": 9,
      "name": "Scrubber",
      "image": "images/household/scrubber-removebg-preview.png",
      "price": 100,
      "preprice": 275,
      "quantity": 1
    },
    {
      "id": 10,
      "name": "Filterless",
      "image": "images/household/filterless-removebg-preview.png",
      "price": 7999,
      "preprice": 15993,
      "quantity": 1
    },
    {
      "id": 11,
      "name": "Storage Box",
      "image": "images/household/storagebox-removebg-preview.png",
      "price": 15000,
      "preprice": 16001,
      "quantity": 1
    },
    {
      "id": 12,
      "name": "Toasty Machine",
      "image": "images/household/toastymachine-removebg-preview.png",
      "price": 6782,
      "preprice": 7395.0,
      "quantity": 1
    },
    {
      "id": 13,
      "name": "Mosquito Killer",
      "image": "images/household/mosquitokiller-removebg-preview.png",
      "price": 7643,
      "preprice": 9764,
      "quantity": 1
    },
    {
      "id": 14,
      "name": "Duracell Battery",
      "image": "images/household/duracell-removebg-preview.png",
      "price": 100,
      "preprice": 938,
      "quantity": 1
    },
  ];
  @override
  void initState() {
    super.initState();
    filtered = products;
    _loadCartData();
  }

  void updateProductQuantity(int productId, int newQuantity) {
    setState(() {
      productQuantities[productId] = newQuantity;
    });
  }

  @override
  void dispose() {
// TODO: implement dispose
    super.dispose();
  }

// Initialize SharedPreferences instance

// Save cart data to SharedPreferences
  void saveCartData() {
    final cartList = cart.keys.map((productId) {
      final product =
          products.firstWhere((element) => element["id"] == productId);
      print(product);

      return product;
    }).toList();
    prefs.setString('cart', jsonEncode(cartList));
    emptyList.add(prefs as String);
    print("hello");
  }

  void updateFilteredProducts(String query) {
    setState(() {
      filtered = products.where((product) {
        final productName = product["name"].toString().toLowerCase();
        return productName.contains(query.toLowerCase());
      }).toList();
    });
  }

  Map<int, int> productQuantities = {};

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
              // Check if cart is not empty to display cart count badge
              if (cart.isNotEmpty)
                Positioned(
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
              else
                SizedBox.shrink(), // Hide badge when cart is empty
            ],
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "household",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
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
                  fillColor: Colors.grey[200]),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7, // Adjust the aspect ratio as needed
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                var product = filtered[index];
                int productId = product["id"];
                bool isInCart = cart.containsKey(product["id"]);
                int quantity = productQuantities[productId] ?? 1;
                final products = filtered[index];
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
                            product["image"]!,
                            width: 130,
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
                                  setState(() {
                                    if (product["quantity"] > 1) {
                                      product["quantity"]--;
                                    }
                                  });
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
                                });
                              },
                              icon: Icon(Icons.add_circle, size: 25),
                              color: Colors.green,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isInCart) {
                                    cart.remove(product['id']);
                                  } else {
                                    cart[product['id']] = product['quantity'];
                                  }
                                });
                                saveCartData();
                                updateCartCount();
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ),
                            )
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
