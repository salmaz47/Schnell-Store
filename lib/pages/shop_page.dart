import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schnell/moduls/bottle.dart';
import 'package:schnell/moduls/cart.dart';

import '../components/product_tile.dart';
class shopPage extends StatefulWidget {
  const shopPage({super.key});


  @override
  State<shopPage> createState() => _shopPageState();
}
class _shopPageState extends State<shopPage>
{
 void  addBottleToCart(Bottle bottle)
  {
     Provider.of<Cart>(context,listen: false).addItemToCart(bottle);
     showDialog(context: context, builder: (context)=>Padding(
       padding: const EdgeInsets.symmetric(vertical: 60.0),
       child: AlertDialog(
         backgroundColor: Colors.yellow ,
         title: Text('Successfully Added',
         style: TextStyle(
           fontWeight: FontWeight.bold,

         ),
         ),
         content: Text('Check your Cart',
           style: TextStyle(
             fontWeight: FontWeight.w400,
             fontSize: 20.0

           ),),
       ),
     ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context,value,child)=>Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(
            top: 20.0,
            left: 25.0,
            right: 25.0
          ),
          decoration:BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,

                ),


              ),
              Icon(
                Icons.search,
              ),
            ],
          ),
        ),
        //messages
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0,
              vertical: 25.0),
          child: Text(
            'Grap the HOTTEST deals before theu gone',
            style:  TextStyle(
              fontSize: 17.0,

             fontWeight: FontWeight.w500,
            //  fontFamily: GoogleFonts.amita().fontFamily
              // fontFamily: 'Rubic',

            ),

          ),
        ),
        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Deals 🔥',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
              Text(
                'See All',
                style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red
                ),

              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder:(context,index) {
                Bottle firstBott=
                value.GetBottleList()[index];
                return Insecticides(
                  bottle: firstBott,
                  onTap: ()=> addBottleToCart(firstBott) ,
                );
              }
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50
          ),
          child: Divider(
            color: Colors.yellow,
          ),
        ),
      ],
    ),
    );
  }

}