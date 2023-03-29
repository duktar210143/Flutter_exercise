import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'profile',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile app"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image.network(
              "https://images.unsplash.com/photo-1680028136470-5a957bc07a5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60",
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Name : babita guragain",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Address: Swyambhu",
            style: TextStyle(fontSize: 16),
          ),
             const SizedBox(
            height: 5,
          ),
          const Text(
            "email: reecha@gmail.com",
            style: TextStyle(fontSize: 16),
          ),
             const SizedBox(
            height: 300,
          ),
          const Text(
            "Developed by: Duktar Tamang",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  ));
}
