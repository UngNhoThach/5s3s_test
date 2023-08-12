// // ignore_for_file: camel_case_types

// import 'package:flutter/material.dart';

// class customerGuest extends StatefulWidget {
//   const customerGuest({super.key});

//   @override
//   State<customerGuest> createState() => _customerGuestState();
// }

// /// List of body icon left
// final List<int> colorCodes = <int>[
//   600,
//   500,
//   100,
//   600,
//   500,
//   100,
//   600,
//   500,
//   100,
//   600,
//   500,
//   100,
//   600,
//   500,
//   100,
//   600,
//   500,
//   100
// ];

// /// List of Tab Bar Item right
// final List<String> entries = <String>[
//   'A',
//   'B',
//   'C',
//   'A',
//   'B',
//   'C',
//   'A',
//   'B',
//   'C',
//   'A',
//   'B',
//   'C',
//   'A',
//   'B',
//   'C',
//   'A',
//   'B',
//   'C'
// ];

// class _customerGuestState extends State<customerGuest> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           entries.isNotEmpty
//               ? ListView.separated(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(), //Optional
//                   itemCount: entries.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: screenSize.height / 20,
//                       color: Colors.amber[colorCodes[index]],
//                       child: Center(child: Text('axs ${entries[index]}')),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) =>
//                       const Divider(),
//                 )
//               : const Center(child: Text('No items')),
//         ],
//       ),
//     );
//   }
// }




      
      
//       // SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       entries.isNotEmpty
//       //           ? ListView.separated(
//       //               itemCount: entries.length,
//       //               shrinkWrap: true,
//       //               physics: NeverScrollableScrollPhysics(), //Optional
//       //               itemBuilder: (context, index) {
//       //                 return Container(
//       //                   height: screenSize.height / 20,
//       //                   color: Colors.amber[colorCodes[index]],
//       //                   child: Center(child: Text('asdf ${entries[index]}')),
//       //                 );
//       //               },
//       //               separatorBuilder: (BuildContext context, int index) =>
//       //                   const Divider(),
//       //             )
//       //           : const Center(child: Text('No items')),
//       //     ],
//       //   ),
//       // ),
//       // SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       entries.isNotEmpty
//       //           ? ListView.separated(
//       //               shrinkWrap: true,
//       //               physics: NeverScrollableScrollPhysics(), //Optional
//       //               itemCount: entries.length,
//       //               itemBuilder: (context, index) {
//       //                 return Container(
//       //                   height: screenSize.height / 20,
//       //                   color: Colors.amber[colorCodes[index]],
//       //                   child: Center(child: Text('Entry ${entries[index]}')),
//       //                 );
//       //               },
//       //               separatorBuilder: (BuildContext context, int index) =>
//       //                   const Divider(),
//       //             )
//       //           : const Center(child: Text('No items')),
//       //     ],
//       //   ),
//       // ),
    
    