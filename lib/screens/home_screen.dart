import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  _medicoes(BuildContext context){
      Navigator.of(context).pushNamed('/medicoes-screen');}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: ()=> _medicoes(context),
              borderRadius: BorderRadius.circular(50),
              child: Container(
                child:ClipRRect(borderRadius: BorderRadius.circular(40),child: Text("Frequencia Carciaca")),
                color: Colors.yellow,
                width: 170,
                height: 190,
                margin: EdgeInsets.only(bottom: 50, top: 20),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: ()=>_medicoes(context),
              borderRadius: BorderRadius.circular(50),
              child: Container(
                child:ClipRRect(borderRadius: BorderRadius.circular(40),child: Text("Temperatura")),
                color: Colors.yellow,
                width: 170,
                height: 190,
                margin: EdgeInsets.only(bottom: 50, top: 20),
              ),
            ),
          ),
        ],
      )
    );;
  }
}