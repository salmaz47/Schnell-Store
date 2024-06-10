import 'package:flutter/cupertino.dart';


import 'bottle.dart';

class Cart extends ChangeNotifier {
  List<Bottle> bottleShop=
      [
        Bottle(
            name: 'Shadow Black Gel',
            price: '59.99 LE',
            imagePath: 'lib/images/asdsadsadas.png',
            description: 'Detergent for Black Clothes'
        ),
        Bottle(
            name: 'Ants Killer',
            price: '59.99 LE',
            imagePath: 'lib/images/شنل نمل.png',
            description: 'Insecticides to get rid of ants'
        ),
        Bottle(
            name: 'Bedbug Killer',
            price: '59.99 LE',
            imagePath: 'lib/images/زجاجة بق.png',
            description: 'Insecticides to get rid of Bedbug'
        ),
        Bottle(
            name: 'Roach Killer',
            price: '59.99 LE',
            imagePath: 'lib/images/شنل صراصير.png',
            description: 'Insecticides for Roaches'
        ),
        Bottle(
            name: 'Shadow Black Gel',
            price: '59.99 LE',
            imagePath: 'lib/images/asdsadsadas.png',
            description: 'Detergent for Black Clothes'
        )
      ];

      List<Bottle> UserCart=
          [

          ];
      List<Bottle> GetBottleList ()
      {
        return bottleShop;
      }

      List<Bottle> GetUserCart()
      {
        return UserCart;
      }
      void addItemToCart(Bottle bottle) {
        UserCart.add(bottle);
        notifyListeners();
      }
      void removeItemFrCart(Bottle bottle)
      {
        UserCart.remove(bottle);
        notifyListeners();
      }
}
