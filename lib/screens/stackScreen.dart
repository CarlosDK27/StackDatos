import 'package:flutter/material.dart';

 class TestStack extends StatelessWidget {
   const TestStack({Key? key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('Pagina Stack'),
         backgroundColor: Colors.blue[200],
       ),
       body: Center(
             child: SizedBox (
             width: 300.0,
             height: 300.0,
            child: Center(
            child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
            overflow: Overflow.visible,
            children:<Widget>[
          Container(
          width: 300.0,
          height: 300.0,
          color: Colors.red,
         ),
           Positioned(
           top: 80.0,
           left: 80.0,
           child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.black,
                   ) 
                 ) ,
                 Positioned(
           top: 20.0,
           left: 20.0,
           child: Container(
          width: 200.0,
          height: 200.0,
          color: Color.fromARGB(255, 111, 0, 255),
                   ) 
                 ) 
        ], 
       ), 
      ),
     ),
    ),
    
   );
  }
     



  Widget stackSinPos(){
    return Center(
         child: SizedBox(
           width: 300.0,
           height: 300.0,
           child: Center(
             child: Stack(
               children:<Widget> [
                 Container(

                   width: 300.0,
                   height: 300.0,
                   color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Uno',
                  style:
                    TextStyle(color: Colors.white)),
                 ),


                 Container(
                   width: 250.0,
                   height: 250.0,
                   color: Color.fromARGB(255, 54, 244, 187),
                   alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Dos',
                  style:
                    TextStyle(color: Colors.white)),
                 ),


                 Container(
                   width: 200.0,
                   height: 200.0,
                   //color: Color.fromARGB(255, 193, 244, 54),
                   alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--lxNXHPN3--/c_fit,g_north_west,h_840,w_679/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1585726530/production/designs/8796655_0.jpg')
                    )
                    ),
                  child: const Text
                  ('Tres',
                  style:
                    TextStyle(color: Colors.black)),
                 ),
                 
               ],
             ),
           ),
         ),
       );
  }
 }