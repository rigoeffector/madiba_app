import 'package:flutter/material.dart';

class AllBookDetail extends StatefulWidget {
  @override
  _AllBookDetailState createState() => _AllBookDetailState();
}

class _AllBookDetailState extends State<AllBookDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          title: Text(
            'Book Detail',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // Padding(padding: EdgeInsets.symmetric(horizontal: 0.2)),
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/kids2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Book Name ",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "The Angry birds ",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ]),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 16.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).primaryColor,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "10 Reviews",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "10000 RWF",
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900),
                  ),
                  Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        "Borrow book",
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                height: 10.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description ",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
