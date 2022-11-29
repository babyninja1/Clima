import 'package:http/http.dart' as http;
import 'dart:convert'; //for json converter

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    String data;
    Uri request = Uri.parse(url);
    http.Response response = await http.get(request);
    if (response.statusCode == 200) {
      data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
