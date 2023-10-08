import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//! THIS IS OUR STATELESS WIDGET
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    //? FIRST: MATERIAL APP
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 247, 222),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 171, 88, 0),
          title: const Text("My App"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          //! COLUMN
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(
              30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //! THIS IS OUT IMAGE
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  height: 250,
                  width: 250,
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //! THIS IS OUR BUTTON
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 186, 115, 0),
                    ),
                    fixedSize: MaterialStateProperty.all(
                      const Size.fromWidth(150),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (isVisible) {
                        isVisible = false;
                      } else {
                        isVisible = true;
                      }
                    });
                  },
                  child: const Text("VIEW MY BIO!!"),
                ),

                const SizedBox(
                  height: 30,
                ),

                //! THIS IS OUT DESCRIPTION
                Visibility(
                  visible: isVisible,
                  child: const Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color.fromARGB(255, 56, 0, 120),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
