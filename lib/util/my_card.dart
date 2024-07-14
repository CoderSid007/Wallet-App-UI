import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;


  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,  
    required this.color,
  } ): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Balance',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset('lib/assets/visa.png',
                    height: 50,
                    )
                  ],
                ),
                  ],
                ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                Text(
                  '\$'+ balance.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,  
                    fontWeight: FontWeight.bold 
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //card info
                    Text(
                      cardNumber.toString(),
                      style: const TextStyle(
                    color: Colors.white,
                    // fontSize: 24,  
                  ),
                  ),
                    //card expiry date
                    Text(
                      expiryMonth.toString()+"/"+expiryYear.toString(),
                      style: const TextStyle(
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