import 'package:alibaba_clone/controller/providers/interest_provider.dart';
import 'package:alibaba_clone/view/components/common_widgets.dart';
import 'package:alibaba_clone/view/components/styles.dart';
import 'package:alibaba_clone/main_Screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Source extends StatelessWidget {
  const Source({super.key});

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Categories(),
                      ));
                    },
                    child: Text(
                      "Skip this step",
                      style: TextStyle(
                          color: dgrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              vspace,
              Divider(
                thickness: 5,
                color: dgrey,
              ),
              vspace,
              Text.rich(
                style: TextStyle(
                    color: black, fontSize: 28, fontWeight: FontWeight.w600),
                TextSpan(text: "What is your main\nreason", children: [
                  TextSpan(
                    text: " for sourcing",
                    style: TextStyle(color: orange),
                  ),
                  TextSpan(text: "?"),
                ]),
              ),
              vspace,
              Text("Help us curate your sourcig experience",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, color: black)),
              vspace,
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return SourceStack();
                    }),
              ),
              vspace,
              MyRoundButton(
                label: "Next ",
                onPress: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                vpadding: 8,
                hpadding: 140,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<bool> itemCheckboxState = [false, false, false];

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MainScreens()));
                    },
                    child: Text(
                      "Skip this step",
                      style: TextStyle(
                          color: dgrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              vspace,
              Divider(
                thickness: 5,
                color: black,
              ),
              vspace,
              Text.rich(
                style: TextStyle(
                    color: black, fontSize: 28, fontWeight: FontWeight.w600),
                TextSpan(text: "Add your\n", children: [
                  TextSpan(
                    text: "top categories",
                    style: TextStyle(color: orange),
                  ),
                ]),
              ),
              vspace,
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return MyListTile(
                          title: "Electronic consumer$index", icon: Icons.home,index: index,);
                    }),
              ),
              Center(
                child: Consumer<InterestProvider>(
                  builder: (context,provider,child) {
                    return MyRoundButton(
                      label: "Complete",
                      gradColors:  provider.isChecked.any((value)=>value) ? [orange2,orange!] : [black,black],
                      labelStyle: TextStyle(fontSize: 14, color: white),
                      onPress: provider.isChecked.any((value)=>value)? () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainScreens()));
                        // Navigate to main page 
                      }: (){
                        SnackBar(content: Text("Select at least one value"));
                        print("hello");
                      },
                      vpadding: device_height*0.02,
                      hpadding: device_width*0.37,
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final int index;
  MyListTile({super.key, required this.title, required this.icon,required this.index});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InterestProvider>(builder: (context, provider, child) {
      return Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          tileColor: white,
          leading: Icon(widget.icon),
          title: Text(widget.title),
          trailing: Checkbox(
            activeColor: white,
            checkColor: orange,
            value: provider.isChecked[widget.index],
            onChanged: (value) {
              // isCheck = value ?? false;
              provider.updateisChecked(value ?? false,widget.index);
            },
          ),
        ),
      );
    });
    ;
  }
}
