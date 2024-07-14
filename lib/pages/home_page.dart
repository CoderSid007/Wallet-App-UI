import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget{
    const HomePage({Key? key}) : super(key: key);

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 218, 218),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on_outlined, 
          size: 30,
          color: Colors.white,),
        shape: CircleBorder(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.pink.shade300,
              )),

            IconButton(
            onPressed: (){}, 
            icon: Icon(
              Icons.settings,
              size: 30,
              // color: Colors.pink.shade300,
              )),
        ],),
      ),
    body: SafeArea(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            // app bar
            const Row(children: [
              Text(
            'My',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text(
            ' Cards',
            style: TextStyle(
              fontSize: 30,
              ),
            ),
            ],),
            
            // head text
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
                ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                ),
              ),
          ],
          ),
        ),
        const SizedBox(height: 25,),

        Container(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children : [
            MyCard(
              balance: 5250.20,
              cardNumber: 3456273789784356,
              expiryMonth: 10,
              expiryYear: 25,
              color: const Color.fromARGB(255, 134, 82, 226),
            ),
            MyCard(
              balance: 987.00,
              cardNumber: 6788766589076545,
              expiryMonth: 11,
              expiryYear: 27,
              color: Color.fromARGB(255, 252, 163, 46),
            ),
            MyCard(
              balance: 7856.00,
              cardNumber: 3458789065426789,
              expiryMonth: 7,
              expiryYear: 29,
              color: Color.fromARGB(255, 8, 110, 194),
            ),
          ],),
        ),
        const SizedBox(height: 20,),
        SmoothPageIndicator(
          controller: _controller, 
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade800
          ),
          ),

          const SizedBox(height: 30),


          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              // send button
            
              MyButton(
                iconImagePath: 'lib/assets/send-money.png', 
                buttonText: 'Send'),
            
                 MyButton(
                iconImagePath: 'lib/assets/credit.png', 
                buttonText: 'Pay'),
            
                 MyButton(
                iconImagePath: 'lib/assets/bill.png', 
                buttonText: 'Bills')
              // pay button 
            
            
            
              // bills button 
            ],),
          ),
          const SizedBox(height: 25),


          SingleChildScrollView(
            child: const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
            
                  MyListTile(
                    iconImagePath: 'lib/assets/analysis.png', 
                    tileTitle: 'Statistics', 
                    tileSubTitle: 'Payments and income',
                    ),
            
                    MyListTile(
                    iconImagePath: 'lib/assets/lending.png', 
                    tileTitle: 'Transactions', 
                    tileSubTitle: 'Transaction History',
                    ),
            
                    // MyListTile(
                    // iconImagePath: 'iconImagePath', 
                    // tileTitle: 'tileTitle', 
                    // tileSubTitle: 'tileSubTitle',
                    // ),
                                  
              ],),
            ),
          )
        
      ],),
    ),
    );
  }
}