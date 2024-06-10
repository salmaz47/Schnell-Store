import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../moduls/bottle.dart';
import '../moduls/cart.dart';

class CartItem extends StatefulWidget
{
  Bottle bottle;
  CartItem({
    super.key,
    required this.bottle,
});

  @override
  State<CartItem> createState()=> _CartItemState();

}
class _CartItemState extends State<CartItem>
{
  void removeItemFromCart()
  {
    Provider.of<Cart>(context, listen: false).removeItemFrCart(widget.bottle);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255,210,55, 1),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Image.asset(widget.bottle.imagePath,
              height: 200.0,

            ),
            title: Text(widget.bottle.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            subtitle: Text(widget.bottle.price,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15

            ),),
            trailing: IconButton(
              icon: Icon(Icons.delete,
              size: 35,
              color: Colors.red,),
              onPressed: removeItemFromCart,
            ),
          ),
        ),
      ),
    );
  }

}