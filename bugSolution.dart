```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      if (response.headers['content-type']!.contains('application/json')) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Unexpected Content-Type: ${response.headers['content-type']}');
      }
    } else {
      throw Exception('HTTP request failed with status: ${response.statusCode}.  ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    throw Exception('Invalid JSON response: $e');
  } on Exception catch (e) {
    rethrow; //Re-throw to be handled at a higher level
  }
}
```