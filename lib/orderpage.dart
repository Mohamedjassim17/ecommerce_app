import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/navigations/personalcare/shampoo.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartScreen extends StatefulWidget {
  final Map<int, int> cart;
  final List<Map<String, dynamic>> products;
  late List<Map<String, dynamic>> cartItems;
  late SharedPreferences prefs;

  CartScreen({
    required this.cart,
    required this.products,
  });

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  num totalamount = 0;
  int selectedvalue = 0;
  int delviery = 20;
  int gst = 45;
  bool check = true;
  bool? succes = false;
  bool? checkbox = false;
  bool flag = false;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController zipcode = TextEditingController();

  void removeProductFromCart(int productId) {
    setState(() {
      widget.cart.remove(productId);
    });
    updateTotalAmount();
  }

  void updateTotalAmount() {
    setState(() {
      totalamount = calculateTotalAmount();
    });
  }

  num calculateTotalAmount() {
    num totalAmount = 0;
    for (int productId in widget.cart.keys) {
      Map<String, dynamic> product =
          widget.products.firstWhere((p) => p["id"] == productId);
      int quantity = widget.cart[productId]!;
      totalAmount += product["price"] * quantity;
    }
    return totalAmount;
  }

  @override
  void initState() {
    super.initState();
    updateTotalAmount();
    _loadCartData();
  }

  Future<void> _loadCartData() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = prefs.getString('cart');
    print(cartData);

    if (cartData != null) {
      final cartItemsJson = cartData.split(',');
      for (final itemJson in cartItemsJson) {
        final itemParts = itemJson.split(':');
        final productId = int.tryParse(itemParts[0]);
        final quantity = int.tryParse(itemParts[1]);
        if (productId != null && quantity != null) {}
      }
      setState(() {}); // Trigger a rebuild to display cart items
    }
  }

  void showalert() {
    QuickAlert.show(
      context: context,
      title: "Enter all inputs",
      confirmBtnColor: Colors.red,
      type: QuickAlertType.error,
    );
  }

  void showsucess() {
    QuickAlert.show(
      context: context,
      title: "Order Confrimed",
      confirmBtnColor: Colors.green,
      type: QuickAlertType.success,
    );
  }

  void orders() {
    String name = namecontroller.text;
    String number = namecontroller.text;
    String email = emailcontroller.text;
    String address = addresscontroller.text;
    String city = citycontroller.text;
    String zpcode = zipcode.text;
    if (name.isEmpty ||
        number.isEmpty ||
        email.isEmpty ||
        address.isEmpty ||
        city.isEmpty ||
        zpcode.isEmpty) {
      showalert();
    } else {
      flag = true;
      showsucess();
      namecontroller.clear();
      numbercontroller.clear();
      emailcontroller.clear();
      addresscontroller.clear();
      citycontroller.clear();
      zipcode.clear();
      widget.cart.clear();
      updateTotalAmount();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            widget.cart.isNotEmpty
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("Images")),
                        DataColumn(label: Text('Product')),
                        DataColumn(label: Text('Quantity')),
                        DataColumn(label: Text('Total')),
                        DataColumn(
                            label:
                                SizedBox()), // Empty column for delete button
                      ],
                      rows: [
                        for (int productId in widget.cart.keys)
                          DataRow(
                            cells: [
                              DataCell(Image.asset(
                                  widget.products.firstWhere(
                                      (ele) => ele["id"] == productId)['image'],
                                  width: 50,
                                  height: 50)),
                              DataCell(
                                Text(
                                  widget.products.firstWhere(
                                      (p) => p["id"] == productId)["name"],
                                ),
                              ),
                              DataCell(
                                SingleChildScrollView(
                                  scrollDirection: Axis
                                      .vertical, // Enable horizontal scrolling
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            int newQuantity =
                                                widget.cart[productId]! - 1;
                                            if (newQuantity >= 1) {
                                              widget.cart[productId] =
                                                  newQuantity;
                                              updateTotalAmount();
                                            } else {
                                              widget.cart.remove(productId);
                                              updateTotalAmount();
                                              // Remove the product from the cart
                                            }
                                          });
                                        },
                                        icon: Icon(Icons.remove_circle,
                                            color: Colors.red),
                                      ),
                                      Text('${widget.cart[productId]}'),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            int newQuantity =
                                                widget.cart[productId]! + 1;
                                            widget.cart[productId] =
                                                newQuantity;
                                            updateTotalAmount();
                                          });
                                        },
                                        icon: Icon(Icons.add_circle,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              DataCell(
                                Text(
                                  "₹${widget.products.firstWhere((p) => p["id"] == productId)["price"] * widget.cart[productId]!}",
                                ),
                              ),
                              DataCell(
                                IconButton(
                                  onPressed: () {
                                    removeProductFromCart(productId);
                                  },
                                  icon: Icon(Icons.delete, color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  )
                : Text("No product is Found",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Order Summary",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange.shade900,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '₹$totalamount',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '₹${totalamount == 0 ? 0 : delviery}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          "GST",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '₹${totalamount == 0 ? 0 : gst}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '₹${totalamount == 0 ? 0 : (gst + delviery) + totalamount}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10),
                Text("Fill order Details",
                    style: TextStyle(
                        color: Colors.orange.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      controller: namecontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "Full name",
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      controller: numbercontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "Mobile Number",
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "Email",
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      controller: addresscontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "Address",
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      controller: citycontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "city",
                          filled: true)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      controller: zipcode,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          fillColor: Colors.grey.shade200,
                          hintText: "Zipcode",
                          filled: true)),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: checkbox,
                        tristate: true,
                        autofocus: true,
                        checkColor: Colors.black,
                        onChanged: (bols) {
                          setState(() {
                            checkbox = bols;
                          });
                        }),
                    Text("Cash on Delviery",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange.shade200),
                      onPressed: () {
                        orders();
                        if (flag == true) {
                          Future.delayed(Duration(seconds: 3), () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => homepage()));
                          });
                        }
                      },
                      child: Text("Order Now", style: TextStyle(fontSize: 20))),
                ),
                Container(
                  height: 100,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
