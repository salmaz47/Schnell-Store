import 'package:flutter/material.dart';
import 'package:schnell/pages/products_Page.dart';

import 'Usage_Page.dart';

class introPage extends StatelessWidget
{ const introPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
         backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(


                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Text(
                    'SCHNELL',
                    style:
                      TextStyle(
                      //  fontFamily: 'Edu_SA',
                        fontSize: 67.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              SizedBox(height:40.0,),

              //title
              Text(
                'Protect your house and childern',
                style:
                TextStyle(
                  color: Colors.black,
                  fontSize:20.0,
                  fontWeight: FontWeight.w400
                  //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 180.0,),

              // buttons
              GestureDetector(
                onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> Products(),
                    ),
                ) ,
                child: Container(

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),

                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red[800],
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                    ),
              ),
              SizedBox(height: 20.0,),
              // how to use it button
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> Usage()
                )),
                child: Container(

                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),

                      child: Text(
                        'Usage',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

}