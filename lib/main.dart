import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GUESS THE NUMBER')),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.lightGreenAccent,
            /*decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              border: Border.all(width: 20.0, color: Colors.greenAccent)),*/
            // alignment: Alignment.center,
            child: Center(


              child: Column(

                //mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/guess_logo.png', width: 150.0,),


                      Container(
                        margin: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('GUESS', style: TextStyle(
                                  fontSize: 60.0, color: Colors.deepPurpleAccent),
                                textAlign: TextAlign.center,),
                              Text('THE NUMBER', style: TextStyle(
                                  fontSize: 30.0, color: Colors.deepPurple),
                                textAlign: TextAlign.center,),
                              ],
                        )
                      ),


                  ],
                ),



              SizedBox(
                width: 300.0,
                height: 200.0,
                //ElevatedButton(onPressed: () {}, child: Text('RANDOM')),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 TextField(),
                    //  Text('',style: TextStyle(fontSize: 100.0, ), textAlign: TextAlign.center,),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(onPressed: () {}, child: Text('GUESS')),
                    ),
                    /* TextButton(

             child: Text('TEST'),
              onPressed: () {  },
              ),*/
                  ],
                ),

              ),
                ],

            ),
          ),
        )
        ),

    );

  }
}
