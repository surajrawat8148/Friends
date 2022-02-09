// import 'package:flutter/material.dart';

// class LogoPainter extends StatelessWidget {
//   const LogoPainter({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ClipPath(
//         clipper: WaveClipper(),
//         child: Container(
//           color: Colors.orange.withOpacity(0.6),
//           height: 120,
//           width: double.infinity,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Padding(
//                 padding: EdgeInsets.only(left: 60, top: 40),
//                 child: Text('Hello Suraj', style: TextStyle(fontSize: 14)),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 60, top: 1),
//                 child: Text('Welcome',
//                     style:
//                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = Path();
//     path.lineTo(0, size.height - 70.0);
//     var firstStart = Offset(size.width / 5, size.height);
//     var firstEnd = Offset(size.width / 2.25, size.height);
//     path.quadraticBezierTo(
//         firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

//     var secondStart = Offset(size.width - (size.width / 3.24), size.height);
//     var secondEnd = Offset(size.width, size.height - 150);
//     path.quadraticBezierTo(
//         secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//     path.lineTo(size.width, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     throw UnimplementedError();
//   }
// }
