import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';


class Torch_screen extends StatefulWidget {
  const Torch_screen({super.key});

  @override
  State<Torch_screen> createState() => _Torch_screenState();
}

class _Torch_screenState extends State<Torch_screen> {
  final bgcolor = Colors.grey[800];
  final textcolor = Colors.white;
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: isActive ? Colors.white70 : bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("FlashLight",style: TextStyle(color: textcolor, fontSize: 25), ),
        centerTitle: true
      ),

      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(isActive ? 'assets/flashlight_on.png' : 'assets/flashlight_off.png' ,
                        width: 220,
                        height: 220,
                        color: isActive? Colors.yellow : textcolor.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        CircleAvatar(
                          minRadius: 30,
                          maxRadius: 45,
                          child: Transform.scale(
                            scale: 1.5,
                            child: IconButton(
                              onPressed: (){
                                controller.toggle();
                                isActive =! isActive;
                                setState(() {
                    
                                });
                    
                              },
                              icon: Icon(Icons.power_settings_new),
                    
                            ),
                          ),
                        )
                    
                      ],
                    ),
                  ),
                ),
              ),)
        ],


      ),




    );
  }
}
