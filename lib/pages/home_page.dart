import 'package:flutter/material.dart';
import 'package:wallet_app_ui/util/my_card.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 218, 218),
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
              fontSize: 26,
              fontWeight: FontWeight.bold,
              ),
            ),
            Text(
            ' Cards',
            style: TextStyle(
              fontSize: 26
              ),
            ),
            ],),
            
            // head text
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                ),
              child: Icon(Icons.add),
              ),
          ],
          ),
        ),
        const SizedBox(height: 25,),

        Container(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children : [
            MyCard(),
            MyCard(),
            MyCard(),
          ],),
        )
        
      ],),
    ),
    );
  }
}