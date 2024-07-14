import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconImagePath;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              children: [
                Container(
                  height: 90,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 206, 194, 194),
                        blurRadius: 40,
                        spreadRadius: 10,
                      )
                    ] 
                    ),
                  child: Center(
                  child: Image.asset(iconImagePath),
                  ),),
                  SizedBox(
                    height: 4,
                    ),
                  Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),),
              ],
            ),
    );
  }
}