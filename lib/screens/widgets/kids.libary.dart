import 'package:flutter/material.dart';
import 'package:madiba_app/screens/widgets/search.all.books.dart';
// import 'package:madiba_app/screens/data/kids.book.dart';
// import 'package:madiba_app/screens/models/kids.book.dart';
// import 'package:madiba_app/screens/widgets/kids.card.dart';

class KidsLibraryWidget extends StatefulWidget {
  @override
  _KidsLibraryWidgetState createState() => _KidsLibraryWidgetState();
}

class _KidsLibraryWidgetState extends State<KidsLibraryWidget> {
  // List<KidsBook> _kidsBook = kidsBookList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("images/kids.gif"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchAllBookswidget(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Popular search on Espace madiba!",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '3-6',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '6-9',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.orangeAccent),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '9-12 ',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue[300]),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '12-15 ',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextButton(
                          style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.blueGrey),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue[300]),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue[50]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.lightBlue[50])))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '15-18 ',
                              style: TextStyle(
                                  color: Colors.blue[300], fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),
              // Container(
              //     child: GestureDetector(
              //         onTap: () {},
              //         child: Column(
              //           children: _kidsBook.map(_buildKidBookDivision).toList(),
              //         )))
              //
              // Scaffold(

              ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  new SizedBox(height: 20.0),
                  new Container(
                    child: new ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return new Column(
                          children: <Widget>[
                            new Container(
                              height: 40.0,
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Icon(Icons.book_sharp,
                                      color: Colors.lightBlue),
                                  new Padding(
                                      padding:
                                          const EdgeInsets.only(right: 0.0)),
                                  new Text('Pets Books',
                                      style: new TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.blueGrey)),
                                ],
                              ),
                            ),
                            new Container(
                              height: 200.0,
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: new ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(5.0),
                                      child: new Card(
                                        elevation: 5.0,
                                        child: new Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            splashColor:
                                                Colors.blue.withAlpha(30),
                                            onTap: () {
                                              print('Card tapped.');
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 100.0,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "images/kids.jpg"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Madiba New",
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Colors
                                                                  .blueGrey),
                                                        ),
                                                        SizedBox(
                                                          height: 10.0,
                                                        ),
                                                        Text(
                                                          "Awesome",
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                        // Container(
                                                        //   child: Center(
                                                        //     child: Text(
                                                        //       "15000",
                                                        //       style: TextStyle(
                                                        //         color: Colors
                                                        //             .orangeAccent,
                                                        //         fontSize: 16.0,
                                                        //       ),
                                                        //     ),
                                                        //   ),
                                                        //   height: 30.0,
                                                        //   width: 100.0,
                                                        //   decoration: BoxDecoration(
                                                        //       border: Border.all(
                                                        //           color: Colors
                                                        //               .orangeAccent),
                                                        //       borderRadius:
                                                        //           BorderRadius
                                                        //               .circular(
                                                        //                   10.0)),
                                                        // )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            new SizedBox(height: 20.0),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

// Widget _buildKidBookDivision(KidsBook kidsBook) {
//   return KidsBookCard(
//     kidsBook.title,
//     kidsBook.description,
//     kidsBook.price,
//     kidsBook.imageUrl,
//     kidsBook.reviews,
//     kidsBook.author,
//   );
// }
