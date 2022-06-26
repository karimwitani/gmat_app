// @override
// Widget build(BuildContext context) {
//   final ButtonStyle style =
//   ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
//   return Scaffold(
//       body: FutureBuilder(
//         future: ReadJsonData(),
//         builder: (context, data) {
//           if (data.hasError) {
//             return Center(child: Text("${data.error}"));
//           } else if (data.hasData) {
//             var questionItems = data.data as List<MultipleChoiceSingleAnswerDataModel>;
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Expanded(
//                   flex: 5,
//                   child: Text(
//                     quizBrain.getQuestionText(),
//                     textAlign: TextAlign.left,
//                     style: TextStyle(fontSize: 25.0, color: Colors.black),
//                   ),
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: quizBrain.getAnswerOptions().length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ElevatedButton(
//                         onPressed: () {
//                           checkAnswer(index);
//                         },
//                         child:  Text(
//                             quizBrain.getAnswerOptions()[index])
//                     );
//                   },
//                 ),
//               ],
//             );
//           };
//         },
//       );
//   )
