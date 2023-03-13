import 'package:flutter/material.dart';
import 'package:flutter_session_maju/portfolio_display_screen.dart';

class PortfolioForm extends StatelessWidget {
  PortfolioForm({Key? key}) : super(key: key);

  String name = '';
  String rollNumber = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffe6d4e7),
        body: Column(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset("assets/images/design.png"))),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Portfolio Form',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 36),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xff7C2887)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xff7C2887)),
                      ),
                      hintText: 'Enter your name',
                    ),
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Roll Number',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xff7C2887)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xff7C2887)),
                      ),
                      hintText: 'Enter your roll number',
                    ),
                    onChanged: (value) {
                      rollNumber = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if(name.isEmpty || rollNumber.isEmpty) {
                        return;
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortfolioDisplayScreen(
                                  name: name, rollNo: rollNumber)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xff1C2F53).withOpacity(0.44),
                      fixedSize: Size(size.width, 43),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                    ),
                    child: const Text('Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
