import 'package:flutter/material.dart';
import 'package:schnell/components/bottom_nav-bar.dart';
import 'package:schnell/pages/shop_page.dart';

import 'cart_page.dart';

class Products extends StatefulWidget
{
  const Products({super.key});
  @override
  State<Products> createState() => _ProductsState();

}
class _ProductsState extends State<Products>
{
  int _selectedIndex =0;
  void navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages =
      [
        const shopPage(),
        const cartPage(),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      bottomNavigationBar: MyBottonNavBar(
        onTapChange: (index) {navigateBottomBar(index);},
      ),
      appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      onPressed: (){
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                );

              }
            ),
          ),


      drawer: Drawer(
        backgroundColor: Colors.yellow[600],
        child: Column(
          children: [
          Expanded(
            child: Column(
              children: [
                // logo
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100.0,
                  ),
                  child: Container(
            
            
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
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),
                // divider
                const Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 50.0
                  ),
                  child: Divider(
                    color: Colors.black54,
                    thickness: 2.0,
                  ),
                ),
            
                // pages option
                const Padding(
                  padding: const EdgeInsets.only(left:20.0,bottom: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.home,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      title: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),

                    ),

                ),
                const Padding(
                  padding: const EdgeInsets.only(left:20.0,bottom: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 27.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
            
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            const Padding(
              padding: const EdgeInsets.only(left:20.0,bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 27.0,
                  color: Colors.black,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                ),
              ),
            )

          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}