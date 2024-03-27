import 'package:alibaba_clone/view/components/common_widgets.dart';
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
              flexibleSpace: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    vspace,
                    TabBar(
                      tabAlignment: TabAlignment.center,
                      labelColor: black,
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: black,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 15,
                      ),
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      dividerHeight: 0,
                      overlayColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      tabs: [
                        Text(
                          "Products",
                        ),
                        Text(
                          "Manufacturers",
                        ),
                      ],
                    ),
                    vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 40,
                          child: TextField(
                            cursorColor: black,
                            cursorWidth: 1,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              // hintText: "Search here",
                              // hintStyle: TextStyle(
                              //   textBaseline: TextBaseline.alphabetic
                              // ),
                              label: Text("Search "),
                              labelStyle: TextStyle(
                                color: black
                              ),
                              suffixIcon: Container(
                                width: 70,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: black,
                                    ),
                                    hspace,
                                    Icon(
                                      Icons.search,
                                      color: black,
                                    )
                                  ],
                                ),
                              ),
                              filled: true,
                              fillColor: swhite,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 1, color: black),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(width: 1, color: black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You are protected when you source on Alibaba.com",
                    style: TextStyle(
                      fontSize: 10,
                      color: black,
                    ),
                  ),
                  shspace,
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 10,
                    color: black,
                  )
                ],
              ),
              vspace,
              vspace,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [MyHeading(text: "Wellcome!")],
                ),
              ),
              svspace,
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FrontContainer(
                          text: "All Categories",
                          assets: "assets/icons/more.png",
                          color: orange),
                      FrontContainer(
                          text: "Alibab.com MemberShip",
                          assets: "assets/icons/tiles.png",
                          color: Colors.blue[800]!),
                      FrontContainer(
                          text: "Request for Quotation",
                          assets: "assets/icons/secure.png",
                          color: Colors.purple),
                      FrontContainer(
                          text: "Logistic Services",
                          assets: "assets/icons/ship.png",
                          color: Colors.teal[800]!),
                      FrontContainer(
                          text: "Ready to ship",
                          assets: "assets/icons/tiles.png",
                          color: orange),
                      FrontContainer(
                          text: "Ready to ship",
                          assets: "assets/icons/more.png",
                          color: const Color.fromARGB(255, 28, 101, 31)),
                    ],
                  ),
                ),
              ),
              vspace,
              svspace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    MyHeading(
                      text: "Top Ranking",
                      size: 19,
                    ),
                    Spacer(),
                    MyIcon(
                      icon: Icons.arrow_forward,
                      size: 25,
                    )
                  ],
                ),
              ),
              // Container(
              //   height: 260,
              //   child: ListView.builder(
              //       itemCount: 15,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           margin: EdgeInsets.all(8),
              //           child: MyCard1(
              //             image:
              //                 "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
              //             topText: "Most Popular",
              //             height: 260,
              //             width: 145,
              //             title: "Title",
              //             descriptions: "Description",
              //             extras: "extras here",
              //           ),
              //         );
              //       }),
              // ),

              vspace,
              svspace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyHeading(
                          text: "New Arrival",
                          size: 19,
                        ),
                        MyText(
                          text: "529,000+ products added daily",
                          weight: FontWeight.w300,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 300),
                //  height: 260,
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        child: MyCard1(
                          image:
                              "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                          topText: "New arrival product names",
                          height: 270,
                          width: 145,
                          title: "",
                          descriptions: "",
                          extras: "USD-245\$ to USD-567\$",
                          extraWeight: FontWeight.w400,
                        ),
                      );
                    }),
              ),
              vspace,
              svspace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyHeading(
                          text: "Featured Section",
                          size: 19,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 300),
                height: 230,
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        child: MyCard1(
                          image:
                              "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                          topText: "New arrival product names",
                        ),
                      );
                    }),
              ),
              vspace,
              svspace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyHeading(
                          text: "Just for you ",
                          size: 19,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              svspace,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                    itemCount: 40,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.6,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return MyCard2(
                        image:
                            "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTExL3BmLXMxMDgtcG0tNDExMy1tb2NrdXAuanBn.jpg",
                        quantity: "2 pieces (MOQ)",
                        price: "US\$0.79 - US\$3.59",
                        delivery: "Delivery by: Dec20",
                        descriptions:
                            "Description of products will be shown here",
                        extras: "3yr. HF",
                      );
                    }),
              )
            ],
          ),
        ),
      ),
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
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "All are verified as custom Manufacturers ",
                      style: TextStyle(
                        fontSize: 10,
                        color: black,
                      ),
                    ),
                    shspace,
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 10,
                      color: black,
                    )
                  ],
                ),
                vspace,
                vspace,
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [MyHeading(text: "Ways to manufactures!")],
                  ),
                ),
                svspace,
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FrontContainer(
                            text: "All Categories",
                            assets: "assets/icons/more.png",
                            color: orange),
                        FrontContainer(
                            text: "Alibab.com MemberShip",
                            assets: "assets/icons/tiles.png",
                            color: Colors.blue[800]!),
                        FrontContainer(
                            text: "Request for Quotation",
                            assets: "assets/icons/secure.png",
                            color: Colors.purple),
                        FrontContainer(
                            text: "Logistic Services",
                            assets: "assets/icons/ship.png",
                            color: Colors.teal[800]!),
                        FrontContainer(
                            text: "Ready to ship",
                            assets: "assets/icons/tiles.png",
                            color: orange),
                        FrontContainer(
                            text: "Ready to ship",
                            assets: "assets/icons/more.png",
                            color: const Color.fromARGB(255, 28, 101, 31)),
                      ],
                    ),
                  ),
                ),
                vspace,
                svspace,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      MyHeading(
                        text: "Get Samples",
                        size: 19,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 260,
                  child: ListView.builder(
                      itemCount: 15,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: MyCard1(
                            image:
                                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                            topText: "Most Popular",
                            height: 260,
                            width: 145,
                            title: "Title",
                            descriptions: "Description",
                            extras: "extras here",
                          ),
                        );
                      }),
                ),
                vspace,
                svspace,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyHeading(
                            text: "Top Ranking manufacturers",
                            size: 19,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 300),
                  height: 250,
                  child: ListView.builder(
                      itemCount: 15,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: MyCard1(
                            image:
                                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                            // topText: "New arrival product names",
                            height: 270,
                            width: 145,
                            title: "",
                            descriptions: "Description wil be shown here ",
                            // extras: "USD-245\$ to USD-567\$",
                            extraWeight: FontWeight.w400,
                          ),
                        );
                      }),
                ),
                vspace,
                svspace,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyHeading(
                            text: "Online Factory tours",
                            size: 19,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // SliverAppBar(
                //   bottom: TabBar(tabs: [
                //     Text("tab1"),
                //     Text("tab2"),
                //     Text("tab3"),
                //     Text("tab4"),
                //     Text("tab5"),
                //     Text("tab6"),
                //     Text("tab7"),
                //   ]),
                // ),
                Container(
                  // height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return MyShopHeader(
                            shopImage:
                                "https://img.freepik.com/free-vector/bird-colorful-logo-gradient-vector_343694-1365.jpg",
                            storeName: "This is our loream ispum store",
                            description:
                                "200+ worlkers, 20 +countries - US\$-200.00",
                            extras: "Full customization",
                            products: const [
                              "https://www.shutterstock.com/image-photo/fresno-united-states-sep-01-260nw-1828085057.jpg",
                              "https://media.cnn.com/api/v1/images/stellar/prod/nike-motiva-shoe-product-card-cnnu.jpg?c=16x9&q=h_720,w_1280,c_fill",
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzdlbXJ5tb8DbYSWrMVNg7cfkrJI2yt39D0w&usqp=CAU"
                            ]);
                      }),
                ),
              ])),
        ),
      ),
    );
  }
}
