import 'package:http/http.dart' as http;
import 'package:http_client_helper/http_client_helper.dart';

Future<String> getRequest(String url) async {
  final http.Response? response = await HttpClientHelper.get(Uri.parse(url));
  return response != null ? response.body : '';
}
