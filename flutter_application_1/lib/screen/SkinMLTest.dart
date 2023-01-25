// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
// import 'package:lottie/lottie.dart';

// class MainSkin extends StatefulWidget {
//   @override
//   _MainSkinState createState() => _MainSkinState();
// }

// class _MainSkinState extends State<MainSkin> {
//   bool loading = true;
//   late File _image;
//   late List _output;
//   final imagepicker = ImagePicker();

 


//   @override
//   void initState() {
//     super.initState();
//     loadmodel().then((value) {
//       setState(() {});
//     });
//   }

//   detectimage(File image) async {
//     var prediction = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 13, //จำนวนโรคทั้งหมด
//       // threshold: 0.05,
//       threshold: 0.05,///เปอร์เซ็นความตรง เอาเรื่มตั้งเเต่กี่เปอร์เซ็นต์
//       imageMean: 127.5,
//       imageStd: 127.5,

//       asynch: true,
//     );

//     setState(() {
//       _output = prediction!;
//       loading = false;
//     });
//   }

//   loadmodel() async {
//     await Tflite.loadModel(
//         model: 'assets/ML/model.tflite', 
//         labels: 'assets/ML/labels.txt'
//         );
//     // model: 'assets/MLTEST/model_unquant.tflite',
//     // labels: 'assets/MLTEST/labels.txt');
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   pickimage_camera() async {
//     var image = await imagepicker.getImage(source: ImageSource.camera);
//     if (image == null) {
//       return null;
//     } else {
//       _image = File(image.path);
//     }
//     detectimage(_image);
//   }

//   pickimage_gallery() async {
//     var image = await imagepicker.getImage(source: ImageSource.gallery);
//     if (image == null) {
//       return null;
//     } else {
//       _image = File(image.path);
//     }
//     detectimage(_image);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 24, 165, 163),
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(Icons.arrow_back_ios),
//           color: Colors.white,
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         title: Text("",
//             style: TextStyle(
//                 fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white)),
//         centerTitle: true,
//         // actions: <Widget>[
//         //   IconButton(
//         //     icon: Icon(Icons.more_horiz),
//         //     onPressed: () {},
//         //     color: Colors.white,
//         //   )
//         // ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//         height: h,
//         width: w,
//         child: Column(
//           children: [
//             SizedBox(height: 0),
//             Container(
//                 child: Text('ค้นหาโรคผิวหนังจากรูปภาพ',
//                     style: GoogleFonts.roboto(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                     ))
//                     ),
//             Container(
//               height: 150,
//               width: 150,
//               padding: EdgeInsets.all(10),
//               // child: Image.asset('assets/mask.png'),
//               child: Lottie.network(
//                   'https://assets8.lottiefiles.com/packages/lf20_urbk83vw.json'),
//             ),
//             SizedBox(height: 0),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     // child: RaisedButton(
//                     //     color: Color.fromARGB(255, 90, 202, 189),
//                     //     shape: RoundedRectangleBorder(
//                     //         borderRadius: BorderRadius.circular(10)),
//                     //     child: Text('ถ่ายรูป',
//                     //         style: GoogleFonts.roboto(fontSize: 18)),
//                     //     onPressed: () {
//                     //       pickimage_camera();
//                     //     }
//                     //     ),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary:
//                             Color.fromARGB(255, 90, 202, 189), // background
//                         onPrimary: Colors.black,
//                         textStyle: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                       onPressed: () {
//                         pickimage_camera();
//                       },
//                       child: Text('ถ่ายรูป'),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     // child: RaisedButton(
//                     //     color: Color.fromARGB(255, 90, 202, 189),
//                     //     shape: RoundedRectangleBorder(
//                     //         borderRadius: BorderRadius.circular(10)),
//                     //     child: Text('เลือกจากคลังรูปภาพ',
//                     //         style: GoogleFonts.roboto(fontSize: 18)),
//                     //     onPressed: () {
//                     //       pickimage_gallery();
//                     //     }
//                     //     ),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary:
//                             Color.fromARGB(255, 90, 202, 189), // background
//                         onPrimary: Colors.black,
//                         textStyle: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                       onPressed: () {
//                         pickimage_gallery();
//                       },
//                       child: Text('เลือกจากคลังรูปภาพ'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

          

//             loading != true
//                 ? Container(
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 220,
//                           // width: double.infinity,
//                           padding: EdgeInsets.all(15),
//                           child: Image.file(_image),
//                         ),

//                         // _output != null
//                         //     ? Text((_output[0]['label']).toString().substring(2),
//                         //         style: GoogleFonts.roboto(fontSize: 18))
//                         //     : Text('not Match'),
//                         // _output != null
//                         //     ? Text(
//                         //         'Confidence: ' +
//                         //             (_output[0]['confidence']).toString(),
//                         //         style: GoogleFonts.roboto(fontSize: 18))
//                         //     : Text(''),
//                         _output.isEmpty
//                             ? Text('รูปภาพไม่ตรงกับโรคใดๆ อัพโหลดอีกครั้ง')
//                             : Text(
//                                 (_output[0]['label']).toString().substring(0),
//                                 // (_output[0]['predicts']).toString().substring(2),

//                                 style: GoogleFonts.roboto(fontSize: 18)),
                                
//                         _output.isEmpty
//                             ? Text('')
//                             : Text(
//                                 'อัตตราความเเม่ยำ : ' +
//                                     (_output[0]['confidence'] * 100)
//                                         .toStringAsFixed(2) +
//                                     ' % / 100 %',
//                                 style: GoogleFonts.roboto(fontSize: 18)),

//                         //  ${(output[0]['confidence'] * 100).floor()}' +
//                         //                               '%'
                        
//                         /// ทดสอบตรงนี้
                       
                        






//                       ],
//                     ),
//                   )
//                 : Container(),

//                 SizedBox(height: 10,),
//                   loading != true
//                 ?
//                   SingleChildScrollView(
//                   child: Column(
//                   children: _output.isNotEmpty
//                   ? _output.map((result) {
//                       return  Container(
//                           child: Padding(
//                             padding: const EdgeInsets.all(2.5),
//                             child: Text(
//                               "${result["label"]} =  ${result["confidence"].toStringAsFixed(2)}",
//                               // ignore: prefer_const_constructors
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         );
                      
//                     }).toList()
//                   : [],
//             ),
//           )
//           : Container(),
          


//           ],
//         ),
//       ),
//         ],
//       )
//     );
//   }
// }
