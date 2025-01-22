```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Incorrectly assuming JSON response
      final data = jsonDecode(response.body);
      // ... process data ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, but not specific enough
    print('Error: $e');
  }
}
```