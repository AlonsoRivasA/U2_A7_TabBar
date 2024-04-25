import 'package:flutter/material.dart';
import 'package:rivastab/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Xbox México',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.green.shade100,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Juegos', count: 6),
                    TabItem(title: 'Apps', count: 3),
                    TabItem(title: 'Consolas', count: 1),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Image.network(
                    'https://ss423.liverpool.com.mx/sm/1139505316.jpg',
                    width: 400,
                    height: 400)), // Imagen para "Juegos"
            Center(
                child: Image.network(
                    'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2013/11/Xbox-One-apps.jpg',
                    width: 400,
                    height: 400)), // Imagen para "Apps"
            Center(
                child: Image.network(
                    'https://assets.xboxservices.com/assets/67/fb/67fb575e-0693-4cc6-aff7-4884483283cc.jpg?n=Consoles-Hub_Content-Placement_Hub_247813_788x444.jpg',
                    width: 400,
                    height: 400)), // Imagen para "Consolas"
          ],
        ),
      ),
    );
  }
}
