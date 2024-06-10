import 'package:flutter/material.dart';
import '../moduls/bottle.dart';
class Insecticides extends StatelessWidget
{
  void Function()? onTap;
  Insecticides({super.key,required this.bottle,required this.onTap});
  Bottle bottle;
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(15.0),
     child: Container(

      margin: const EdgeInsets.only(left: 20.0),
        width: 280.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         color: Color.fromRGBO(255,210,55, 1)
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           //bottle pic
           Padding(
             padding: const EdgeInsets.symmetric(vertical:15),
             child: Image.asset(
               bottle.imagePath,
               width: 280,
               height: 280,
             ),
           ),
           // description
           Text(bottle.description,
           style: TextStyle(
               color: Colors.black,
               fontSize: 18,
               fontWeight: FontWeight.w400
             )

             ,),
           //price and details
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(bottle.name,
                      style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900
                        ),

                      ),
                     const SizedBox(height: 5,),
                      Text(bottle.price ,
                        style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                          fontWeight: FontWeight.w400
                          ),

                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Icon(Icons.add,
                        color: Colors.white,
                        size: 20,
                        weight: 900,),
                      ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
                        ),
            )
           //button to add to the cart
         ],
       ),
     ),
   );
  }

}