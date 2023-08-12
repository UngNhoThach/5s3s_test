// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_element

import 'package:flutter/material.dart';
import 'package:test_5s3s/constants/color.dart';
import 'package:test_5s3s/productModel.dart';
import 'package:test_5s3s/widget/button.dart';
import 'package:test_5s3s/widget/dialogs.dart';
import 'package:test_5s3s/widget/textFiled.dart';

import 'constants/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  // final Function() homePay;

  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

/// List of Tab Bar Item left
List<String> itemsLeft = [
  "ALL",
  "On sale",
  "Featured",
  "Add products",
  "Scan products",
];

/// List of body icon left
List<IconData?> iconsLeft = [
  null,
  null,
  null,
  Icons.feed,
  Icons.post_add,
];

/// List of body icon left
final List<int> colorCodes = <int>[
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100,
  600,
  500,
  100
];

/// List of Tab Bar Item right
final List<String> entries = <String>[
  'A',
  'B',
  'C',
  'A',
  'B',
  'C',
  'A',
  'B',
  'C',
  'A',
  'B',
  'C',
  'A',
  'B',
  'C',
  'A',
  'B',
  'C'
];

/// List of Tab Bar Item Right
List<String?> itemsRight = ["Cart", "Customer Guest", "Address ", ''];

/// List of body icon Right
List<IconData?> iconsRight = [
  Icons.shopping_cart,
  Icons.person,
  Icons.add_location,
  Icons.add_shopping_cart_outlined,
];

// variables
int currentLeft = 0;
int currentRight = 0;
int tempProduct = 0;
double priceTotalIncart = 0;

// ignore: camel_case_types
class _homePageState extends State<homePage> {
// controller
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _priceTotalController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantity = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

// List scollview Right
    List<Widget> scollviewRight = [
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              products.isNotEmpty
                  ? ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(), //Optional
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final p = products[index];
                        return Container(
                          color: null,
                          height: screenSize.height / 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: IconButton(
                                  iconSize: 16,
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    products.removeAt(index);
                                    priceTotalIncart =
                                        priceTotalIncart - p.priceTotal;
                                    setState(() {});
                                  },
                                ),
                              ),
                              SizedBox(height: screenSize.width / 50),
                              Image.asset(p.image,
                                  width: screenSize.width / 40,
                                  height: screenSize.height / 30),
                              SizedBox(height: screenSize.width / 50),
                              SizedBox(
                                width: screenSize.width / 6,
                                child: Text(p.title),
                              ),
                              SizedBox(height: screenSize.width / 50),
                              SizedBox(
                                height: screenSize.height / 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    buttonIconnoText(
                                      colorBr: colors.button,
                                      colorSn:
                                          const Color.fromARGB(255, 10, 10, 10),
                                      icon: Icons.remove,
                                      onPress: () {
                                        if (p.quantity == 1) {
                                          p.price = p.price;
                                        } else {
                                          p.quantity = p.quantity - 1;
                                          p.priceTotal = p.price * p.quantity;
                                          priceTotalIncart =
                                              priceTotalIncart - p.price;
                                        }
                                        setState(() {});
                                      },
                                      sizeIcon: 16,
                                      height: screenSize.height / 20,
                                      width: screenSize.width / 40,
                                    ),
                                    Container(
                                      height: screenSize.height / 30,
                                      width: screenSize.width / 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: colors.background)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${p.quantity}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    buttonIconnoText(
                                      colorBr: colors.button,
                                      colorSn: Colors.white,
                                      icon: Icons.add,
                                      onPress: () {
                                        p.quantity = p.quantity + 1;
                                        p.priceTotal = p.price * p.quantity;
                                        priceTotalIncart =
                                            priceTotalIncart + p.price;
                                        setState(() {});
                                      },
                                      sizeIcon: 16,
                                      height: screenSize.height / 20,
                                      width: screenSize.width / 40,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenSize.width / 50),
                              SizedBox(
                                width: screenSize.width / 20,
                                child: Text('\$${p.price}'),
                              ),
                              SizedBox(
                                width: screenSize.width / 20,
                                child: Text(
                                  '\$${p.priceTotal}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    )
                  : const Center(child: Text('No items in your cart')),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            entries.isNotEmpty
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(), //Optional
                    itemCount: entries.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: screenSize.height / 20,
                        color: Colors.amber[colorCodes[index]],
                        child: Center(child: Text('axs ${entries[index]}')),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  )
                : const Center(child: Text('No items')),
          ],
        ),
      ),
      Container(
        color: null,
        child: Center(child: Text("Address don't have anything")),
      ),
      Container(
        color: null,
        child: Center(child: Text("Cart empty")),
      ),
    ];

// List scollview Left
    List<Widget> scollviewLeft = [
      GridView.count(
        primary: false,
        padding: const EdgeInsets.only(right: 15),
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: screenSize.height / screenSize.width / 0.35,
        children: List.generate(productsLeft.length + 1, (index) {
          if (index == 0) {
            return Container(
              color: colors.brAdd,
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            );
          }
          final pLeft = productsLeft[index - 1];
          return Container(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                var el = productsLeft[index - 1];
                var found = false;
                for (final item in products) {
                  if (item == el) {
                    found = true;
                    break;
                  }
                }
                if (found) {
                  dialogs.showSnackBar(
                      context, '${pLeft.title} is already in your cart');
                } else {
                  el.quantity = 1;
                  el.priceTotal = el.price;
                  products.add(el);
                  priceTotalIncart += el.priceTotal;
                }
                setState(() {});
              },
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image(
                    // fit: BoxFit.fill,
                    image: AssetImage(pLeft.image),
                  ),
                  Positioned(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(pLeft.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900)),
                          Text('\$${pLeft.price}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(28, 28, 26, 0.6),
                      ),
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    left: 0.0,
                    right: 0,
                    bottom: 0,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      Container(
        color: null,
        child: Center(child: Text("On sale don't have anything")),
      ),
      Container(
        color: null,
        child: Center(child: Text("Featured don't have anything")),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyTextField(
                controller: _titleController,
                hintText: 'Product Title',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product title';
                  }
                  return null;
                },
                keyboardType: null,
              ),
              SizedBox(height: screenSize.height / 50),
              MyTextField(
                controller: _priceController,
                hintText: 'Product Price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: screenSize.height / 50),
              MyTextField(
                controller: _priceTotalController,
                hintText: 'Product priceTotal',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product priceTotal';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: screenSize.height / 50),
              MyTextField(
                controller: _descriptionController,
                hintText: 'Product description',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product description';
                  }
                  return null;
                },
                keyboardType: null,
              ),
              SizedBox(height: screenSize.height / 50),
              MyTextField(
                controller: _quantity,
                hintText: 'Product quantity',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product quantity';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: screenSize.height / 50),
              SelectableImage(
                imageAsset: 'images/item1.png',
                isSelected: true,
                onTap: (String imageAsset) {},
              ),
              SizedBox(height: screenSize.height / 50),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Product added successfully')),
                    );
                  }
                },
                child: Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: null,
        child: Center(child: Text("Scan Products don't have anything")),
      ),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: colors.headerBar,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buttonIconnoText(
                        colorBr: colors.button,
                        colorSn: Colors.white,
                        icon: Icons.menu,
                        onPress: () {},
                        sizeIcon: 25,
                        height: screenSize.height / 20,
                        width: screenSize.width / 20,
                      ),
                      SizedBox(width: screenSize.width / 80),
                      itemIcon(
                        onTap: () {},
                        icon: Icons.store,
                        sizeIcon: 25,
                      ),
                      SizedBox(width: screenSize.width / 80),
                      itemnoIcon(
                        onTap: () {},
                        style: TextStyle(
                          fontSize: fontSizes.xxsmall,
                          color: Colors.white,
                        ),
                        text: 'Store: Food Store',
                      ),
                      SizedBox(width: screenSize.width / 80),
                      itemnoIcon(
                        onTap: () {},
                        style: TextStyle(
                          fontSize: fontSizes.xxsmall,
                          color: Colors.white,
                        ),
                        text: 'Register: Register 1',
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    itemIcon(
                      onTap: () {},
                      icon: Icons.notifications,
                      sizeIcon: 25,
                    ),
                    SizedBox(width: screenSize.width / 80),

                    itemIcon(
                      onTap: () {},
                      icon: Icons.zoom_out_map_outlined,
                      sizeIcon: 25,
                    ),
                    SizedBox(width: screenSize.width / 80),

                    itemnoIcon(
                      onTap: () {},
                      style: TextStyle(
                        fontSize: fontSizes.xxsmall,
                        color: Colors.white,
                      ),
                      text: 'Test: Test 1',
                    ),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),

                    // logout
                    buttonIcon(
                      colorBr: colors.brButtonError,
                      colorSn: Colors.white,
                      height: screenSize.height / 20,
                      width: screenSize.width / 20,
                      icon: Icons.logout,
                      onTap: () {},
                      sizeIcon: 16,
                      style: TextStyle(
                        fontSize: fontSizes.xxxsmall,
                        color: Colors.white,
                      ),
                      text: 'Logout',
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  color: null,
                                  height: screenSize.height / 20,
                                  width: screenSize.width / 20,
                                  child: Image.asset('images/logo.png'),
                                ),
                                Container(
                                  color: null,
                                  width: screenSize.width / 3,
                                  height: screenSize.height / 20,
                                  child: TextField(
                                    onChanged: (value) {},
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      hintText: "Search Data",
                                      // hintStyle: TextStyle(fontSize: 16),
                                      prefixIcon: Icon(
                                        Icons.search,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  color: colors.headerBar,
                                  height: screenSize.height / 20,
                                  width: screenSize.width / 30,
                                  child: itemIcon(
                                      onTap: () {},
                                      sizeIcon: 30,
                                      icon: Icons.qr_code_2),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 27,
                        child: Column(
                          children: [
                            /// CUSTOM TABBAR
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: colors.background,
                                height: screenSize.height / 20,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: itemsLeft.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              currentLeft = index;
                                              setState(() {});
                                            },
                                            child: AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                // margin: const EdgeInsets.only(right: 30),
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                alignment: Alignment.center,
                                                // width: 80,
                                                height: screenSize.height / 20,
                                                decoration: BoxDecoration(
                                                  color: currentLeft == index
                                                      ? Colors.white
                                                      : null,
                                                ),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        iconsLeft[index],
                                                        size: 20,
                                                        color: Colors.black,
                                                      ),
                                                      SizedBox(
                                                          height:
                                                              screenSize.width /
                                                                  50),
                                                      Text(itemsLeft[index],
                                                          style:
                                                              GoogleFonts.laila(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          )),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                            ),

                            /// MAIN BODY
                            Expanded(
                                flex: 9,
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: colors.background,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 15, left: 15),
                                              child: buttonIconnoText(
                                                colorBr: colors.brAdd,
                                                colorSn: Color.fromARGB(
                                                    255, 10, 10, 10),
                                                icon:
                                                    Icons.arrow_back_ios_sharp,
                                                onPress: () {},
                                                sizeIcon: 16,
                                                height: screenSize.height / 4.8,
                                                width: double.infinity,
                                              ),
                                            ),
                                          ]),
                                        ),
                                        Expanded(
                                            flex: 9,
                                            child: scollviewLeft[currentLeft]),
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: [
                              /// CUSTOM TABBAR
                              Container(
                                color: colors.background,
                                height: screenSize.height / 20,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: itemsRight.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (ctx, index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              currentRight = index;
                                              setState(() {});
                                            },
                                            child: AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                alignment: Alignment.center,
                                                height: screenSize.height / 20,
                                                decoration: BoxDecoration(
                                                  color: currentRight == index
                                                      ? Colors.white
                                                      : null,
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25,
                                                            right: 25),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          iconsRight[index],
                                                          size: 20,
                                                          color: Colors.black,
                                                        ),
                                                        SizedBox(
                                                            height: screenSize
                                                                    .width /
                                                                50),
                                                        Text(itemsRight[index]!,
                                                            style: GoogleFonts
                                                                .laila(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      );
                                    }),
                              ),

                              /// MAIN BODY
                              Expanded(
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 15, top: 15),
                                    child: Container(
                                      color: Colors.white,
                                      child: scollviewRight[currentRight],
                                    )),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  height: screenSize.height / 11,
                                  color: null,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'SUBTOTAL',
                                            style: TextStyle(
                                                fontSize: fontSizes.xxxsmall,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$$priceTotalIncart',
                                            style: TextStyle(
                                                fontSize: fontSizes.xxxsmall,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                        height: 15,
                                        thickness: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'TOTAL',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: colors.button,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            '\$$priceTotalIncart',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: colors.button,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: screenSize.width / 10,
                                        height: screenSize.height / 30,
                                        child: Material(
                                          color: colors
                                              .brButtonError, // button color
                                          child: InkWell(
                                            splashColor:
                                                Colors.white, // splash color
                                            onTap: () {
                                              products.clear();
                                              priceTotalIncart = 0;
                                              setState(() {});
                                            }, // button pressed
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.close,
                                                  size: 11,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: screenSize.width / 150,
                                                ),
                                                Text(
                                                  'EMPTY CART',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: null,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        buttonIcon(
                                          colorBr:
                                              Color.fromARGB(255, 56, 56, 59),
                                          colorSn: Colors.white,
                                          width: screenSize.width / 15,
                                          height: screenSize.height / 10,
                                          icon: Icons.message,
                                          onTap: () {},
                                          sizeIcon: 16,
                                          style: TextStyle(
                                              fontSize: fontSizes.xxxsmall,
                                              color: Colors.white,
                                              height: 1.5),
                                          text: 'ADD NOTE',
                                        ),
                                        buttonIcon(
                                          colorBr: colors.button,
                                          colorSn: Colors.white,
                                          width: screenSize.width / 15,
                                          height: screenSize.height / 10,
                                          icon: Icons.add,
                                          onTap: () {},
                                          sizeIcon: 16,
                                          style: TextStyle(
                                              fontSize: fontSizes.xxxsmall,
                                              color: Colors.white,
                                              height: 1.5),
                                          text: 'ADD FEE OR DISCOUNT',
                                        ),
                                        buttonIcon(
                                          colorBr: colors.button,
                                          colorSn: Colors.white,
                                          width: screenSize.width / 15,
                                          height: screenSize.height / 10,
                                          icon: Icons.card_giftcard_sharp,
                                          onTap: () {},
                                          sizeIcon: 16,
                                          style: TextStyle(
                                              fontSize: fontSizes.xxxsmall,
                                              color: Colors.white,
                                              height: 1.5),
                                          text: 'APPLY COUPON',
                                        ),
                                        buttonIcon(
                                          colorBr: colors.button,
                                          colorSn: Colors.white,
                                          width: screenSize.width / 15,
                                          height: screenSize.height / 10,
                                          icon: Icons.local_shipping,
                                          onTap: () {},
                                          sizeIcon: 16,
                                          style: TextStyle(
                                              fontSize: fontSizes.xxxsmall,
                                              color: Colors.white,
                                              height: 1.5),
                                          text: 'SHIPPING',
                                        ),
                                        buttonIcon(
                                          colorBr:
                                              Color.fromARGB(255, 213, 127, 34),
                                          colorSn: Colors.white,
                                          width: screenSize.width / 15,
                                          height: screenSize.height / 10,
                                          icon:
                                              Icons.add_shopping_cart_outlined,
                                          onTap: () {},
                                          sizeIcon: 16,
                                          style: TextStyle(
                                              fontSize: fontSizes.xxxsmall,
                                              color: Colors.white,
                                              height: 1.5),
                                          text: 'SUSPEND & SAVE CART',
                                        ),
                                        buttonIconnoIcon(
                                          colorBr:
                                              Color.fromARGB(255, 48, 211, 23),
                                          colorSn: Colors.white,
                                          width: screenSize.width / 10,
                                          height: screenSize.height / 10,
                                          onTap: () {
                                            setState(() {});
                                          },
                                          style: TextStyle(
                                            fontSize: fontSizes.small,
                                            color: Colors.white,
                                          ),
                                          text: 'PAY',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ))
        ],
      )),
    );
  }
}
