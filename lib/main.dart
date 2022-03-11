
import 'package:flutter/material.dart';
import 'package:testflutter1/screens/fromScreen.dart';
import 'screens/dataScreen.dart';
import 'screens/secondScreen.dart';
import 'screens/stackScreen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    initialRoute: '/',
    routes: {
    '/' : (context) => const FormScreen(),
    '/second':(context) => const SecondPage(),
    '/datos':(context) => const Datos(),
    '/stack': (context)=> const TestStack()

    }
   // home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 43, 184, 149),
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 68, 2, 248),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 0, 184, 230)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Segunda pantalla'),
                onPressed: () {
                /*  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                    
                  );*/
                  Navigator.pushNamed(context,'/second');
                }),
            const SizedBox(height: 10.0),



            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 64, 3, 114)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  /*final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );*/
                  
                  Navigator.pushNamed(context,'/datos');
                }),




                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/stack');
                  },
                  child: const Text('Pagina Datos Stack'),
                  )
          ],
        ),
      ),
    );
  }
  }

