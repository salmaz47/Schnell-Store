import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schnell/moduls/bottle.dart';

import '../components/cart_ite,.dart';
import '../moduls/cart.dart';
class cartPage extends StatefulWidget {
  const cartPage({super.key});


  @override
  State<cartPage> createState() => _cartPageState();
}
class _cartPageState extends State<cartPage>
{
  @override
  Widget build(BuildContext context) {
   return Consumer<Cart>(
       builder: (context,value,child)=>
             Padding(
               padding: const EdgeInsets.only(
                 top: 25.0,
                 left: 25.0,
                 right: 25.0
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('My Cart',
                   style: TextStyle(
                   fontSize: 40.0,
                   fontWeight: FontWeight.bold
                   ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Expanded(child: ListView.builder(
                     itemCount: value.GetUserCart().length,
                       itemBuilder: (context,index)
                   {
                       Bottle individualBottle = value.GetUserCart()[index];
                       return CartItem(
                         bottle: individualBottle,
                       );
                   })
                   ),
                 ],
               ),
             ),

   );
  }

}