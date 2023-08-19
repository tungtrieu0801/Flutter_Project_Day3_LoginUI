import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final  void Function()? onTap;
  const Mybutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
