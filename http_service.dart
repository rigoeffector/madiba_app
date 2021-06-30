import 'dart:convert';
import 'package:http/http.dart';
import 'post_model.dart';

class HttpService {
  Future<List<Post>> getPosts() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    Response res = await get(Uri.parse(url));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
