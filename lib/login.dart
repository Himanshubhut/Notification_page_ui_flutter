import 'package:dashboard/widgets/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Notify(),
    );
  }
}

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  var child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 110, right: 260),
          child: Text(
            "Notification",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 50),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/face.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 100, top: 15),
                          child: Text(
                            "Hello, Jenal Pathak",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 17),
                          child: Text(
                            " lorem ipsum is simply dummy text of the \n simple dummy",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 145),
                            child: buttons(
                              bname: 'Review',
                              callback: () {},
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 40),
                      child: Image.asset(
                        "assets/images/home.png",
                        height: 60,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1,
                );
              },
              itemCount: 15),
        )
      ],
    ));
  }
}
