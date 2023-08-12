// // ignore_for_file: camel_case_types

// import 'package:flutter/material.dart';
// import 'package:test_5s3s/widget/widgetLeft/allLeft.dart';

// import '../../homepage.dart';
// import '../../productList.dart';
// import '../button.dart';
// import '../../constants/color.dart';

// class cartRight extends StatefulWidget {
//   const cartRight({Key? key}) : super(key: key);

//   @override
//   State<cartRight> createState() => _cartRightState();
// }

// late final Widget getHomePay;

// class _cartRightState extends State<cartRight> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return 
    
//     SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 15, right: 15),
//         child: Column(
//           children: [
//             products.isNotEmpty
//                 ? ListView.separated(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(), //Optional
//                     itemCount: products.length,
//                     itemBuilder: (context, index) {
//                       final p = products[index];
//                       return Container(
//                         color: null,
//                         height: screenSize.height / 20,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SizedBox(
//                               child: IconButton(
//                                 iconSize: 16,
//                                 icon: const Icon(Icons.close),
//                                 onPressed: () {
//                                   products.removeAt(index);
//                                   priceTotalIncart =
//                                       priceTotalIncart - p.priceTotal;
//                                   setState(() {});
//                                 },
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             Image.asset(p.image,
//                                 width: screenSize.width / 40,
//                                 height: screenSize.height / 30),
//                             const SizedBox(width: 10),
//                             SizedBox(
//                               width: screenSize.width / 6,
//                               child: Text(p.title),
//                             ),
//                             const SizedBox(width: 10),
//                             SizedBox(
//                               height: screenSize.height / 30,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   buttonIconnoText(
//                                     colorBr: colors.button,
//                                     colorSn:
//                                         const Color.fromARGB(255, 10, 10, 10),
//                                     icon: Icons.remove,
//                                     onPress: () {
//                                       if (p.quantity == 1) {
//                                         p.price = p.price;
//                                       } else {
//                                         p.quantity = p.quantity - 1;
//                                         p.priceTotal = p.price * p.quantity;
//                                         priceTotalIncart =
//                                             priceTotalIncart - p.price;
//                                       }
//                                       setState(() {});
//                                     },
//                                     sizeIcon: 16,
//                                     height: screenSize.height / 20,
//                                     width: screenSize.width / 40,
//                                   ),
//                                   Container(
//                                     height: screenSize.height / 30,
//                                     width: screenSize.width / 30,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             color: colors.background)),
//                                     alignment: Alignment.center,
//                                     child: Text(
//                                       '${p.quantity}',
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                   buttonIconnoText(
//                                     colorBr: colors.button,
//                                     colorSn: Colors.white,
//                                     icon: Icons.add,
//                                     onPress: () {
//                                       p.quantity = p.quantity + 1;
//                                       p.priceTotal = p.price * p.quantity;
//                                       priceTotalIncart =
//                                           priceTotalIncart + p.price;
//                                       setState(() {});
//                                     },
//                                     sizeIcon: 16,
//                                     height: screenSize.height / 20,
//                                     width: screenSize.width / 40,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             SizedBox(
//                               width: screenSize.width / 20,
//                               child: Text('\$${p.price}'),
//                             ),
//                             SizedBox(
//                               width: screenSize.width / 20,
//                               child: Text(
//                                 '\$${p.priceTotal}',
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 18),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) =>
//                         const Divider(),
//                   )
//                 : const Center(child: Text('No items in your cart')),
//           ],
//         ),
//       ),
//     );
//   }
// }
