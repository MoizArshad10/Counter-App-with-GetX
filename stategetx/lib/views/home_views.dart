import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stategetx/controller/home_controller.dart';
import 'package:stategetx/views/display.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController obj = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Counter App"),elevation: 0,backgroundColor: Colors.black,),
        backgroundColor: Color.fromARGB(255, 31, 0, 31),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx((){
                return Text("${obj.counter}",style: TextStyle(color: Colors.yellow,fontSize: 40),); 
              }),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  elevation: 3,
                  backgroundColor: Color.fromARGB(255, 8, 2, 85)

                ),
                onPressed: (){obj.add();}, child: Text("Add")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  elevation: 3,
                  backgroundColor: Colors.red

                ),
                onPressed: (){obj.dec();}, child: Text("Dec")),
              ElevatedButton(
                   style: ElevatedButton.styleFrom(
                 
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  elevation: 3,
                  backgroundColor: Color.fromARGB(255, 11, 78, 87)

                ),
                onPressed: (){Get.to(DisplayPage());}, child: Text("Go To Display")),
            ],
          ),
        ),
      ),
    );
  }
}