import 'package:donut/view/home/widgets/tab_widget.dart';
import 'package:donut/view/tab/burger_tab.dart';
import 'package:donut/view/tab/donut_tab.dart';
import 'package:donut/view/tab/pancake_tab.dart';
import 'package:donut/view/tab/pizza_tab.dart';
import 'package:donut/view/tab/smoothie_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // tab list ----------------------

  List<Widget> myTabs = [
    // donut tab ----------------------
    const TabWidget(
      iconPath: 'assets/icons/donut.png',
    ),

    // burger tab ----------------------

    const TabWidget(
      iconPath: 'assets/icons/burger.png',
    ),

    // smoothie tab ----------------------

    const TabWidget(
      iconPath: 'assets/icons/smoothie.png',
    ),

    // pancake tab  ----------------------

    const TabWidget(
      iconPath: 'assets/icons/pancakes.png',
    ),

    // pizza tab ----------------------

    const TabWidget(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        //--------------> app bar <--------------//
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              onPressed: () {
                // open drawer ----------------------
              },
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 24,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 24,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to eat',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const Text(
                    ' EAT',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //--------------> tab bar <--------------//
            TabBar(tabs: myTabs),


            // tab bar view ----------------------

            const Expanded(child: TabBarView(
              children: [

                // Donut page ----------------------

                DonutTab(),


                // Burger page ----------------------

                BurgerTab(),


                // Smoothie page ----------------------
                SmoothieTab(),

                // Pancake page ----------------------
                PancakeTab(),


                // Pizza page ----------------------
                PizzaTab()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
