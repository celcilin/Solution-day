import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "@User";
  String Amount = "10,000";

  @override
  Widget build(BuildContext context) {
    double SrnWidth = MediaQuery.of(context).size.width;
    double Srnheight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Welcome , $name",
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            width: SrnWidth / 1.2,
            height: Srnheight / 4.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your total asserts",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "$Amount INR",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 32),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.white),
                          mouseCursor: MaterialStateMouseCursor.clickable,
                        ),
                        onPressed: (){},
                        child: Text("Inverst Now" ,style: TextStyle(color: Colors.blue),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
