import 'package:flutter/material.dart';

class ViewMoreBooksWidget extends StatefulWidget {
  ViewMoreBooksWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ViewMoreBooksWidgetState createState() => _ViewMoreBooksWidgetState();
}

class _ViewMoreBooksWidgetState extends State<ViewMoreBooksWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blueGrey),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "All Books",
            style: TextStyle(color: Colors.blueGrey),
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                    elevation: 20.0,
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/book4.png'),
                                fit: BoxFit.fill),
                          ),
                        )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Pets Books",
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )));
          },
        ));
  }
}
