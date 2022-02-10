import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        
        child:Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
              left: 0,
                right: 0,
                child: Container(
              width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/assign.jpeg'),
                      fit: BoxFit.cover
                    )
                  ),
          ),
                ),
              Positioned(
                  top: 320,
                  child: Container(

                width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                    ),
                    child: Column(
                      children: <Widget>[

                        Container(
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 20),
                          child: Image.asset('assets/fish.png',height: 100, width: 100,),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text('Share your travel experiences and find trusted recs from your friebnds', textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.blue, width: 3.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )

                            ),
                            child: Text('Log in with phone number', style:
                            TextStyle(
                                color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                          )

                          ),child: Text('Log in with phone Facebook',style:
                            TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            )),),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ?", style: TextStyle(

                              fontSize: 20,

                            ),),
                            SizedBox(width: 10,),
                            Text('Log in',style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,

                            ))
                          ],
                        )
                      ],
                    ),
              ),
              )

            ],
          ),
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
