import 'package:http/http.dart' as http;

class ApiService {
  Future get({required String path, Map<String, String>? headers}) async {
    final url = Uri.parse(path);
    final response = await http.get(url, headers: headers);
    return response;
  }
}
