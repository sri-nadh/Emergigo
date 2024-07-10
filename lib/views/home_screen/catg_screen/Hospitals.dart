import 'package:emergigo/consts/consts.dart';
import 'package:emergigo/views/home_screen/components/itemcard.dart';
import 'package:emergigo/views/home_screen/components/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser; 
import 'package:http/http.dart' as http;

class HospitalScreen extends StatefulWidget {
  const HospitalScreen({super.key});

  @override
  State<HospitalScreen> createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {

  String result1 = 'Result 1'; 
  String result2 = 'Result 2'; 
  String result3 = 'Result 3'; 
  String result4 ='Result 4';
  bool isLoading = false; 
  
  
  Future<List<String>> extractData() async { 
      
    final response = 
        await http.Client().get(Uri.parse('https://www.google.com/maps/search/hospitals+near+me/')); 
      
    if (response.statusCode == 200) { 
        
    
      var document = parser.parse(response.body); 
      try { 
       
        var responseString1 = document 
            .getElementsByClassName('dbg0pd')[0]
            .children[0] 
            .children[0];
             
  
        print(responseString1.text.trim()); 
          
      
        var responseString2 = document 
            .getElementsByClassName('dbg0pd')[0]
            .children[0] 
            .children[0];
  
        print(responseString2.text.trim()); 
          
       
        var responseString3 = document 
            .getElementsByClassName('dbg0pd')[0]
            .children[0] 
            .children[0];  

  
        print(responseString3.text.trim()); 

        var responseString4 = document 
            .getElementsByClassName('dbg0pd')[0]
            .children[0] 
            .children[0];
  
        print(responseString3.text.trim()); 
          
       
        return [ 
          responseString1.text.trim(), 
          responseString2.text.trim(), 
          responseString3.text.trim(), 
          responseString4.text.trim() 
        ]; 
      } catch (e) { 
        return ['', '', 'ERROR!']; 
      } 
    } else { 
      return ['', '', 'ERROR: ${response.statusCode}.']; 
    } 
  } 
  
  @override 
  Widget build(BuildContext context) { 
    List response;
    response=ExtractData();
    result1 = response[0]; 
    result2 = response[1]; 
    result3 = response[2]; 
    result4 =response[3]; 
    return Scaffold(
      body: Column( 
                    children: [ 
                      Image.asset('hospicon.jpg'),
                      Text(result1, 
                          style: const TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                      SizedBox( 
                        height: MediaQuery.of(context).size.height * 0.05, 
                      ), 
                      Image.asset('hospicon.jpg'),
                      Text(result2, 
                          style: const TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                      SizedBox( 
                        height: MediaQuery.of(context).size.height * 0.05, 
                      ), 
                      Image.asset('hospicon.jpg'),
                      Text(result3, 
                          style: const TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                      SizedBox( 
                        height: MediaQuery.of(context).size.height * 0.05, 
                      ), 
                      Image.asset('hospicon.jpg'),
                      Text(result4, 
                          style: const TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                    ], 
                  ), 
                  
    ); 
  } 
} 





















 List ExtractData(){
  List hello=[1,2,3,4];
    return hello;
 }