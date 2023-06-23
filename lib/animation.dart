import 'dart:math';

import 'package:flutter/material.dart';
class animations extends StatefulWidget {
  const animations({super.key});

  @override
  State<animations> createState() => _animationsState();
}

class _animationsState extends State<animations> {
  var _color = Colors.blue;
var _height = 100.0;
var _width = 100.0;




animateContainer() {
setState(() {
  _color = _color ==   Colors.orange ? Colors.orange : Colors.orange ;
 

_height = _height == 100 ? 200 :  100;
_width = _width == 100 ? 300 : 100;
});
}

animateContainertwo(){
  setState(() {
    _color = _color == Colors.yellow ? Colors.yellow:Colors.yellow;
    
_height = _height == 100 ? 200 :  100;
_width = _width == 100 ? 300 : 100;
    
  });

}



animateContainerthree(){
  setState(() {
    _color = _color == Colors.red ? Colors.red:Colors.red;
    
_height = _height == 100 ? 200 :  100;
_width = _width == 100 ? 300 : 100;
    
  });

}





  



  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: SingleChildScrollView(
        child: Container(
          
          padding: EdgeInsets.only(bottom: 500),
          child: Center(
            
            child: Column(
              
              children: [
      
              
                
                Text('your name',
                
          
          ),
          SizedBox(height: 10,),


          Container(
            
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
                color: _color,
            
            
            height: _height,
            width: _width,
            curve: Curves.bounceInOut,
                  
              child: AnimatedContainer(
            duration: Duration(seconds: 2),
            color: _color,
            
            
            height: _height,
            width: _width,
            curve: Curves.bounceInOut,
            child: AnimatedContainer(
              
              duration: Duration(seconds: 2),
              color: _color,
              height: _height,
              width: _width,
              ),
            
            ),
            ),
            
          ),

 





          
          
     
      
      
                SizedBox(height: 500,),

                MaterialButton(
   
     
     child: Container(
      height: 50,
      width: 50,
     
   ),
   onPressed: () {
      animateContainer();
     
},
color: Colors.orange,

   
colorBrightness: Brightness.dark,
),



    Row(
    
      children: [
        Center(
          child: MaterialButton(
           child: Container(
            padding: EdgeInsets.only(right: 100),
          height: 50,
          width: 50,
           ),
           onPressed: () {

             animateContainertwo();
           
        },
        color: Colors.yellow,
           
        colorBrightness: Brightness.dark,
        ),

        
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1100),
          child: Container(
            
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 10),
               borderRadius: BorderRadius.circular(50)),
            
            
            width: 50,
            height: 50,
            child: MaterialButton(onPressed: (){
              animateContainerthree();
              
            },
            
            
            color: Colors.red,
            ),
          ),
        )
        
      ],
    ),





                
                       
                   

                
                ]

              
            )
          
          ),
        ),
      ),

 

    
    );

 
  }
}