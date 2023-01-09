import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.
                end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('박민서님',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('사료는 가져오셨죠?',
                        style: TextStyle(
                            color: Colors.white.
                            withOpacity(0.8),
                            fontSize: 18
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
    );
  }

}