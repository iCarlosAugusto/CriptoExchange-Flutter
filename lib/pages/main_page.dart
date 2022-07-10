import 'package:cripto_exchange/pages/favorites.dart';
import 'package:cripto_exchange/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final PageController pageViewController = PageController(initialPage: 0);

    return Scaffold(
      body: PageView(
        children: [HomePage(), Favorites()],
        controller: pageViewController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          pageViewController.animateToPage(index,
              duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border), 
            label: "Favorites"
          ),
        ],
      ),
    );
  }
}
