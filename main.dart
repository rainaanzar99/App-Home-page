
import 'package:flutter/material.dart';



void main() {
   runApp(MyApp());
}
class Home extends StatelessWidget{
 
  @override 
  final String address;
  final String tex;
 
  Home(@required this.address,@required this.tex,);
  @override
  Widget build(BuildContext context){
    return Row(
          children: [
             Container(
                                 margin: EdgeInsets.all(7),
                                     height: 120,
                                     child:
                                        ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                             shrinkWrap: true,
                                          itemBuilder:(BuildContext ctx,int index){
                                          
                                       return Padding(
                                         
                                         padding:EdgeInsets.all(5),
                                         
                                         child: Card(
                                           shape: Border.all(width: 0,),
                                           elevation: 0,
                                           child: Column(children:<Widget> [
                                             Image.asset(address),
                                             Text(tex),
                                            
                                             SizedBox(height: 0,),

                                           ],
                                           ),
                                         ),
                                        
                                         );
                                     },itemCount:1,
                                     )
                                            
                                              
                                              

                                            
                                            ),
          ],
    );
            
  }
}


 class MyApp extends StatelessWidget{
  
   var images=[
       'assets/images/Add Post.png',
       'assets/images/Add Agents.png',
       'assets/images/Make Payments.png',
       'assets/images/Add Post.png',
       
  ];
   var tname=[
      'Post',
      'Account',
      'Payment',
      'Post',
  ];
  
  @override 
  Widget build(BuildContext context){
    var n=images.length;
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("Bijak"),backgroundColor: Colors.green,),
        
        body: Column(children: [ 
          Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
         child: Text(
           'Welcome Naveen!',
           style: TextStyle(fontSize: 28),
           textAlign: TextAlign.center,

         )
        ),
        Container(
           height: 120.0,
          width: double.infinity,
           margin: EdgeInsets.all(10),
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7)),
                
                
            ),
             
            child: Container(
             
              height: 120,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Container(
                height: 120,
                width: 30,
                margin: EdgeInsets.all(5),
                child:Row(
                  children: [
                        
                 
                       for(int i=0;i<n;i++)(
                         Home(images[i], tname[i])
                       )
                    
                  ],
                 
                  
      
                ),
                       
                       
                       
                 
                 
                
              ),
              

             
            ),
            
         ),
         
         
        ),
        Container(
            height: 300.0,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            color: Colors.pinkAccent,
            child: Container(
              
              margin: EdgeInsets.all(10),
              height: 300,
              width: 100,
              child:Column(children:<Widget> [
                
                  Text(
                'Buy Easily',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              ),
              Text(
                'Choose from a wide list of buyers and sell directly',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
               FlatButton(  
                 
                child: Text('Buy', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {},  
              ),
              
              ], 
            ),
            
           
        ),
          
        ),
        ]
        
        )
        ,
      ),
      
    );
    
  }
} 


