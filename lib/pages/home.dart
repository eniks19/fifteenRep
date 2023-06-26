import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wallet/util/my_button.dart';
import 'package:wallet/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/util/my_list_tile.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    kalar: Colors.purple[400],
                  ),
                  MyCard(
                    balance: 342.23,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 23,
                    kalar: Colors.blue[400],
                  ),
                  MyCard(
                    balance: 420.42,
                    cardNumber: 12345678,
                    expiryMonth: 8,
                    expiryYear: 22,
                    kalar: Colors.green[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      iconImg: 'lib/asset/send-money.png', buttonText: 'Send'),
                  MyButton(
                      iconImg: 'lib/asset/credit-card.png', buttonText: 'Pay'),
                  MyButton(iconImg: 'lib/asset/bill.png', buttonText: 'Bills'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  MyListTile(
                      iconImgPath: 'lib/asset/analysis.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payment and Income'),
                  MyListTile(
                      iconImgPath: 'lib/asset/transaction.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Transaction History'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
