import 'package:coffe_shope/wedget/Home_bottom.dart';
import 'package:coffe_shope/wedget/item_wedget.dart';
import 'package:flutter/material.dart';

import '../component/textfild.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.sort_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "It's Great day for Coffee",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: textFild, //Textfild
            ),
            TabBar(
                // labelStyle: TextStyle(fontSize: 20),
                //   labelPadding: EdgeInsets.symmetric(horizontal: 20),
                controller: _tabController,
                labelColor: Color(0xFFE57734),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Color(0xFFE57734), width: 3),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                tabs: [
                  Tab(text: "Hot Coffee"),
                  Tab(text: "Cold Coffee"),
                  Tab(text: "Cupacino"),
                  Tab(text: "Americano"),
                  Tab(text: "Americano"),
                ]),
            SizedBox(
              height: 10,
            ),
            Center(
              child: [
                ItemWedget(),
                ItemWedget(),
                ItemWedget(),
                ItemWedget(),
                ItemWedget(),
              ][_tabController.index],
            ),
          ],
        ),
      ),
      bottomNavigationBar:BottomHome(),
    );
  }
}
