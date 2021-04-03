import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text('Home',
                style: TextStyle(color: Colors.black.withOpacity(0.8))),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.tealAccent[100],
          ), //AppBar
          drawer: new Drawer(),
          resizeToAvoidBottomInset: false,
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Icon(
                                                Icons.format_quote,
                                                color: Colors.red[700],
                                                size: 80,
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              new Divider(),
              Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "/home/ameen/flutter-safety/safety/lib/images/4070-ai.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: 200,
                        child: Text(
                          'Planning',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "/home/ameen/flutter-safety/safety/lib/images/13269-ai.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: 200,
                        child: Text('Reminder',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "/home/ameen/flutter-safety/safety/lib/images/resources.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: 200,
                        child: Text('Resources',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "/home/ameen/flutter-safety/safety/lib/images/5870-ai.png"),
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        model.navigateToHome();
                        print('Card tapped.');
                      },
                      child: Container(
                        width: double.maxFinite,
                        height: 200,
                        child: Text(
                          'Music',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  )),

/* ListView(
  
  children: <Widget>[
    Card(child: ListTile(title: Text('One-line ListTile'))),
    Card(
      child: ListTile(
        leading: FlutterLogo(),
        title: Text('One-line with leading widget'),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('One-line with trailing widget'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        leading: FlutterLogo(),
        title: Text('One-line with both widgets'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('One-line dense ListTile'),
        dense: true,
      ),
    ),
    Card(
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text('Two-line ListTile'),
        subtitle: Text('Here is a second line'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        leading: FlutterLogo(size: 72.0),
        title: Text('Three-line ListTile'),
        subtitle:
        Text('A sufficiently long subtitle warrants three lines.'),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      ),
    ),
    Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                'When tapped this Cards InkWell displays an ink splash that fills the entire card',
              ),
            ),
          ),
        )),
  ],
) */
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.navigateToHome(),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.teal[800],
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          )),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

  Widget buildFloatingSearchBar(context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      automaticallyImplyDrawerHamburger: true,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),

      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.notification_important),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
