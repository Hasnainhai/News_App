import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Widgets/drawer_widget.dart';
import 'package:grocery_app/Widgets/pagination_button.dart';
import 'package:grocery_app/Widgets/tabs_widget.dart';
import 'package:grocery_app/Widgets/vertical_spacing_widget.dart';
import 'package:grocery_app/consts/newsType.dart';
import 'package:grocery_app/services/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var newsType = NewsType.allNews;
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).getColor;
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Text(
          'News App',
          style: GoogleFonts.lobster(
              textStyle:
                  TextStyle(color: color, fontSize: 20.0, letterSpacing: 0.6)),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: color),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                TabsWidget(
                  text: 'All News',
                  color: newsType == NewsType.allNews
                      ? Theme.of(context).cardColor
                      : Colors.transparent,
                  ontap: () {
                    if (newsType == NewsType.allNews) {
                      return;
                    }

                    setState(() {
                      newsType = NewsType.allNews;
                    });
                  },
                  fontSize: newsType == NewsType.allNews ? 22 : 14,
                ),
                const SizedBox(width: 20.0),
                TabsWidget(
                  text: 'top Trandings',
                  color: newsType == NewsType.topTrandings
                      ? Theme.of(context).cardColor
                      : Colors.transparent,
                  ontap: () {
                    if (newsType == NewsType.topTrandings) {
                      return;
                    }
                    setState(() {
                      newsType = NewsType.topTrandings;
                    });
                  },
                  fontSize: newsType == NewsType.topTrandings ? 22 : 14,
                ),
              ],
            ),
            const VerticalSpeacing(10.0),
            newsType == NewsType.topTrandings
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      paginationButton(
                        text: 'Prev',
                        ontap: () {},
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 50.0, // Set the desired height
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Theme.of(context).cardColor,
                                  child: const Center(child: Text('1')),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      paginationButton(
                        text: 'Next',
                        ontap: () {},
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
