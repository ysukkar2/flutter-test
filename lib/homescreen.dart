import 'dart:html';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test/PokemonApi/pokemon_api.dart';
import 'package:test/animation.dart';



//import 'package:test/poke/UI/screens/home.dart';
//import 'package:test/pokemonapps/home_page.dart';
//import 'pokemonapps/pokemon.dart';

//import 'package:test/pokemonapp/homepage.dart';
//import 'package:test/homepoke.dart';
//import 'package:test/pokemon_card.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key
  
  });


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _controller = new TextEditingController();
  String? _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [
            TextField(
              controller: _controller,
          
              
              
              onChanged: (value)=>
              setState(() {
                _result  =value;
              }),
              decoration: InputDecoration(
                                hintText: 'Enter your name',
                border: OutlineInputBorder()
              ),
              
            ),
            SizedBox(
              height: 30,
            ),
               Text(
                
                    
                               
                    
                    
                               _result ?? 'Your name',
                               
                               
                               
                               style: const TextStyle(fontSize: 30),
                   ),
               
              
               SizedBox(height: 50,
               
               ),
               TextButton(onPressed:
               _controller.clear
                , child: Icon(Icons.delete)),
                Text('clear text'
                
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed:()=>{
              

              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const animations()),
            ),
                
                }, child: Text('Go to page 1'
              
                )
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: ()=>{
                   Navigator.push(context,
                  
                MaterialPageRoute(builder: (context)=>PokemonApi()
                    
                    
                   )),
                  


                }, child: 
                Text('Go to page 2')
                )
                
          ],
        ),
      ),
    );
  }
}

                
