import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
 late TabController   tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
       automaticallyImplyLeading:   false,
        actions: [
          IconButton(
            icon:  Image.asset('assets/images/menu.png'),
            onPressed: () {

            },
          ),
        ],

      ),
      body:  Column(
        children: [
          BlurryContainer(
            blur: 5,
            width: 200,
            height: 200,
            elevation: 0,
            color: Colors.transparent,
            padding: const EdgeInsets.all(8),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Column(
              children: [
                TabBar(
                    controller: tabController ,
                    tabs: [
                  Text('EINBAY', style: TextStyle(color: Colors.black),),
                  Text('SEASHELL', style: TextStyle(color: Colors.black),),
                ])
              ],
            ),
          ),
        ],
      )
    );
  }
}
