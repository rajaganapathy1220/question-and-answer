import 'package:flutter/material.dart';
import 'package:question_and_answer/view_screen.dart';
class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen({super.key, required this.score});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004D40),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Congratulations',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 45,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Your Score :',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '${widget.score}',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 50,
                color: Colors.white
              ),
            ),
            SizedBox(
              height: 25,
              child: Divider(
                indent: 25,
                thickness: 2,
                endIndent: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ViewScreen()));
              },
              child: Text(
                'Repeat the Quiz',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              color: Colors.teal,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}


// class Results extends StatefulWidget {
//   final int score;
//
//   const Results(this.score , {Key? key}): super(key: key);
//
//   @override
//   State<Results> createState() => _ResultsState();
// }
//
// class _ResultsState extends State<Results> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF252c4a),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Congratulations',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 45,
//                   color: Colors.white),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Text(
//               'Your Score :',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 25,
//                   color: Colors.white),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             Text(
//               '${widget.score}',
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 20,
//               ),
//             ),
//             SizedBox(
//               height: 25,
//               child: Divider(
//                 indent: 25,
//                 thickness: 2,
//                 endIndent: 25,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             MaterialButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => ViewScreen()));
//               },
//               child: Text(
//                 'Repeat the Quiz',
//                 style: TextStyle(
//                   fontSize: 19,
//                 ),
//               ),
//               color: Colors.teal,
//               textColor: Colors.white,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
