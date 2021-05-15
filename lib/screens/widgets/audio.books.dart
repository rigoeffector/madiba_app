import 'package:flutter/material.dart';
import 'package:madiba_app/screens/data/view.more.books.dart';
import 'package:madiba_app/screens/models/view.more.book.dart';
import 'package:madiba_app/screens/widgets/audio.book.card.dart';
import 'package:madiba_app/screens/widgets/audio.book.play.dart';
import 'package:madiba_app/screens/widgets/search.book.dart';

class AudioBooksWidget extends StatefulWidget {
  AudioBooksWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AudioBooksWidgetState createState() => _AudioBooksWidgetState();
}

class _AudioBooksWidgetState extends State<AudioBooksWidget> {
  final List<ViewMoreBook> _viewMoreBooklist = viewMoreBookList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "All Audio Books",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Searchbookwidget(),
                GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _viewMoreBooklist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 8.0 / 10.0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AudioBookDetailPlay()));
                        },
                        child: AudioBookCard(
                            _viewMoreBooklist[index].imageUrl,
                            _viewMoreBooklist[index].title,
                            _viewMoreBooklist[index].price,
                            _viewMoreBooklist[index].author),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
