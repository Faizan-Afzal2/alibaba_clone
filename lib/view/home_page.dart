import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: 300,
            // width: 300,
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 400,
                  child: TabBar(tabs: [
                    Text("Products"),
                    Text("Manufacturers"),
                  ]),
                ),
                Container(
                  height: 300,
                  width: 300,
                  child: TabBarView(children: [
                    Text("hbbgr"),                  // Products(),
                    Text("hbbgtuftfftfr"),                  // Products(),
                    // Manufacturers()
                    
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Products"),
    );
  }
}

class Manufacturers extends StatefulWidget {
  const Manufacturers({super.key});

  @override
  State<Manufacturers> createState() => _ManufacturersState();
}

class _ManufacturersState extends State<Manufacturers> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Manufacturers"),
    );
  }
}
