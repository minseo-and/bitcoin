import 'package:bitcoin/widgets/button.dart';
import 'package:bitcoin/widgets/currency_card.dart';
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 70,
                  ),
                  Text(
                    '총액',
                    style: TextStyle(
                        fontSize: 22, color: Colors.white.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('₩5.194.482',
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                        text: '환전하기',
                        bgColor: Color(0xfff2b33a),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: '입금하기',
                        bgColor: Color(0xff1f2123),
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '지갑',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '전체 보기',
                        style: TextStyle(
                            fontSize: 18, color: Colors.white.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: '유로',
                    code: '6.428',
                    amount: 'EUR',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: const CurrencyCard(
                      name: '비트코인',
                      code: '9.785',
                      amount: 'BIT',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: const CurrencyCard(
                      name: '달러',
                      code: '428',
                      amount: 'USD',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
