import 'package:http/http.dart' as http;
import 'dart:developer';

String baseURL = 'https://my-game-list-front.herokuapp.com/';

Future<void> loginAPI(String username, String password) async {
  
  String apiURL = '${baseURL}api/login';

  Uri uri = Uri.parse(apiURL);

  // if you want to pass json along with it
  Object json = {"username": username, "password": password};

  String body = json.toString();

  // make POST request
  http.Response response = await http.post(uri, body: body);
  // check the status code for the result
  String strResponse = response.toString as String;
  log(strResponse);
}
