import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xff181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '박민서님',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          '사료는 가져오셨죠?',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  '총액',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '₩5.194.482',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                  )
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfff2b33a),
                        borderRadius: BorderRadius.circular(45)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text('매수하기',
                        style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff1f2123),
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text('매도하기',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
