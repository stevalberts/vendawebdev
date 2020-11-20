import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            children: <Widget>[
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                runSpacing: 10.0,
                spacing: 10.0,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Image.asset(
                          "vendaicon.png",
                          height: 100.0,
                          width: 150.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Venda',
                            style: GoogleFonts.quicksand(
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "The Ultimate Business Experience",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            left: 20.0,
                            right: 20.0,
                          ),
                          child: Text(
                            "Venda is a location-based business platform that enables people to discover businesses around them. With Venda, you can sell or buy goods and services with people nearby",
                            textAlign: TextAlign.center,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 20.0,
                                      height: 1.8,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=com.stevapps.venda"
                                ]);
                              },
                              child: Image.asset(
                                "playstore.png",
                                height: 100.0,
                                width: 170.0,
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                _scaffoldKey.currentState.showSnackBar(
                                    new SnackBar(
                                        content: new Text("Coming Soon")));
                              },
                              child: Image.asset(
                                "appstore.png",
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _buildFeatureOne(),
              _buildFeatureTwo(orientation),
              _buildFeatureThree(),
              _buildFeatureFour(orientation),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Image.asset(
                      "vendaicon.png",
                      height: 100.0,
                      width: 150.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Try Venda',
                        style: GoogleFonts.quicksand(
                          textStyle:
                              Theme.of(context).textTheme.headline6.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Discover businesses around you while you earn from buying and selling.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://play.google.com/store/apps/details?id=com.stevapps.venda"
                            ]);
                          },
                          child: Image.asset(
                            "playstore.png",
                            height: 100.0,
                            width: 170.0,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            _scaffoldKey.currentState.showSnackBar(
                                new SnackBar(content: new Text("Coming Soon")));
                          },
                          child: Image.asset(
                            "appstore.png",
                            height: 100.0,
                            width: 150.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "2020 ",
//                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Icon(
                            Icons.copyright,
                            size: 16.0,
                          ),
                          Text(
                            " Venda",
//                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Terms",
//                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Privacy",
//                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFeatureOne() {
    return Container(
      color: Colors.grey.shade100,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 10.0,
        spacing: 10.0,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ENABLE LOCATION",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Discover businesses nearby",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find it from the nearest shop around you and get the products and services you need in a snapshot. Venda always shows you the way",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 18.0,
                            height: 1.8,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'homescreenshot.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureTwo(Orientation orientation) {
    return orientation == Orientation.portrait
        ? Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BUY OR SELL",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Get more customers",
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Become a vendor and boost your business. Earn from selling products and services. From services to listings and offers, give customers reasons to always choose you",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 18.0,
                                height: 1.8,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'profilescreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'profilescreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "BUY OR SELL",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Get more customers",
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Become a vendor and boost your business. Earn from selling products and services. From services to listings and offers, give customers reasons to always choose you",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 18.0,
                                height: 1.8,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
  }

  Widget _buildFeatureThree() {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 10.0,
        spacing: 10.0,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "VENDOR REVIEW",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find trusted vendors",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Review or rate your vendor and let others know their reputation. It always builds trust and honesty in business",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 18.0,
                            height: 1.8,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'reviewscreenshot.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureFour(Orientation orientation) {
    return orientation == Orientation.portrait
        ? Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "QUICK RESPONSE",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "More ways to reach the vendor",
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "With the platforms, you love through WhatsApp, Messenger, and Calls. Venda lets you contact your vendor easily and quickly",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 18.0,
                                height: 1.8,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'contactscreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            spacing: 10.0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'contactscreenshot.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "QUICK RESPONSE",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "More ways to reach the vendor",
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "With the platforms, you love through WhatsApp, Messenger, and Calls. Venda lets you contact your vendor easily and quickly",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontSize: 18.0,
                                height: 1.8,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
