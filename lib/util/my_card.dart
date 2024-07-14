import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 154, 118, 217),
              borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 10,
                  ),
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                Text(
                  '\$5,256.00',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,  
                  ),),
                  SizedBox(
                    height: 30,
                  ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //card info
                    Text(
                      '**** **** **** 3456',
                      style: TextStyle(
                    color: Colors.white,
                    // fontSize: 24,  
                  ),
                  ),
                    //card expiry date
                    Text(
                      '10/24',
                      style: TextStyle(
                    color: Colors.white,
                    // fontSize: 24,  
                  ),
                  ),
                  ],
                )
              ],
            ),
          ),
    );
  }
}