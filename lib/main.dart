import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'BalooTamma2',
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final List<String> mainTitleNames = [
    'Note',
    'Important',
    'Todo',
    'In progress',
    'Done'
  ];
  final List<Tab> myTabs = [
    Tab(text: 'Note'),
    Tab(text: 'Important'),
    Tab(text: 'Todo'),
    Tab(text: 'In progress'),
    Tab(text: 'Done'),
  ];

  @override
  void initState() {
    tabController = TabController(length: myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                onPressed: null,
                iconSize: 30,
              ),
              title: Text(
                'Hussam AlHunaiti',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: null,
                iconSize: 40,
              ),
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 230),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mainTitleNames.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(18),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: (index == 0) ? Colors.blueGrey : Color(0xffd7d7d7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: 135,
                    height: 160,
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              mainTitleNames[index],
                              style: TextStyle(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '123',
                              style: TextStyle(
                                  color: (index == 0)
                                      ? Colors.white
                                      : Colors.blueGrey,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            TabBar(
              labelPadding: EdgeInsets.all(0),
              labelStyle: TextStyle(
                fontSize: 17,
              ),
              labelColor: Colors.black,
              indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              unselectedLabelColor: Colors.blueGrey,
              unselectedLabelStyle: TextStyle(
                fontSize: 17,
              ),
              controller: tabController,
              tabs: myTabs,
            ),
            Flexible(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ListView.builder(
                          itemCount: mainTitleNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Card(
                                color: Color(0xffd7d7d7),
                                child: ListTile(
                                  title: Text(
                                    mainTitleNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  subtitle: Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                  ),
                                  trailing: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8:23',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.dvr,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ListView.builder(
                          itemCount: mainTitleNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Card(
                                color: Color(0xffd7d7d7),
                                child: ListTile(
                                  title: Text(
                                    mainTitleNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  subtitle: Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                  ),
                                  trailing: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8:23',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.dvr,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ListView.builder(
                          itemCount: mainTitleNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Card(
                                color: Color(0xffd7d7d7),
                                child: ListTile(
                                  title: Text(
                                    mainTitleNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  subtitle: Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                  ),
                                  trailing: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8:23',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.dvr,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ListView.builder(
                          itemCount: mainTitleNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Card(
                                color: Color(0xffd7d7d7),
                                child: ListTile(
                                  title: Text(
                                    mainTitleNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  subtitle: Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                  ),
                                  trailing: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8:23',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.dvr,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ListView.builder(
                          itemCount: mainTitleNames.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Card(
                                color: Color(0xffd7d7d7),
                                child: ListTile(
                                  title: Text(
                                    mainTitleNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  subtitle: Flexible(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                  ),
                                  trailing: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8:23',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.dvr,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: null),
      ),
    );
  }
}
