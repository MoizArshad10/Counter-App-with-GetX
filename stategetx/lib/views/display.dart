import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stategetx/controller/home_controller.dart';
import 'package:stategetx/views/home_views.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController obj = Get.find();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Counter App"),elevation: 0,backgroundColor: Colors.black,),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${obj.counter}",style: TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                 
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  elevation: 3,
                  backgroundColor: Color.fromARGB(255, 11, 78, 87)

                ),
                onPressed: (){Get.to(HomeView());}, child: Text("Go To Home")),

            ],
          ),
        ),
      ),
    );
  }
}