import 'package:flutter/material.dart';

class PortfolioDisplayScreen extends StatelessWidget {
  const PortfolioDisplayScreen(
      {Key? key, required this.name, required this.rollNo})
      : super(key: key);
  final String name, rollNo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "$name's Portfolio",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://yt3.googleusercontent.com/8wFKBwD4syiHP7c8C0QjKOmyV2p0Ze1z3mKzrH_dWFf_4itqJ7IpibfWMDLwNm8K6C6JWEzzm6E=s176-c-k-c0x00ffffff-no-rj'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14)),
                              const Text("Folio3 Pvt Ltd",
                                  style: TextStyle(
                                      color: Color(0xff667486),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10)),
                              Text(rollNo,
                                  style: const TextStyle(
                                      color: Color(0xff667486),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("About Me:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("I am a Flutter Developer",
                          style: TextStyle(
                              color: Color(0xff667486),
                              fontWeight: FontWeight.w500,
                              fontSize: 10)),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Skills:",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          skillWidget("Flutter", "assets/icons/flutter.png"),
                          skillWidget("React", "assets/icons/react.png"),
                          skillWidget("Javascript", "assets/icons/js.png"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          skillWidget("Python", "assets/icons/python.png"),
                          skillWidget("C++", "assets/icons/c++.png"),
                          skillWidget(
                              "Illustrator", "assets/icons/illustrator.png"),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff1C2F53).withOpacity(0.44),
                fixedSize: Size(size.width, 43),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              child: const Text('Go Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
            ),
          ]),
        ));
  }

  Widget skillWidget(String skillName, String skillIcon) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(skillIcon, height: 20),
          const SizedBox(
            width: 5,
          ),
          Text(skillName),
        ],
      ),
    );
  }
}
