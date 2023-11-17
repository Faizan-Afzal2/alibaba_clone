import 'package:alibaba_clone/view/components/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: CustomScrollView(slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 100,
              flexibleSpace: Column(
                children: [
                  Container(
                    height: 60,
                    // width: 200,
                    child: TabBar(
                      tabAlignment: TabAlignment.center,
                      labelColor: black,
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: black,
                      unselectedLabelStyle: TextStyle(fontSize: 15,),
                      labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      dividerHeight: 0,
                      overlayColor: MaterialStatePropertyAll(Colors.transparent),
                      tabs: [
                        Text(
                          "Products",
                         
                        ),
                        Text(
                          "Manufacturers",
                          
                        ),
                      ],
                     
                    ),
                  ),
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                // color: black,
                height: device_height - 170,

                width: device_width,
                child: TabBarView(children: [
                  // Text("Products"),
                  Products(),
                  // Text("Manufacturers"), // Products(),
                  Manufacturers()
                ]),
              ),
            )
          ]),
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
      child: Container(color: orange, child: Text("Products")),
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
