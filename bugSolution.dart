```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Proper null checks
      final nestedData = jsonData['nested']['data'];
      if(jsonData['nested'] != null && jsonData['nested']['data'] != null){
        print(nestedData);
      } else {
        print("Nested data is null");
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Better Exception Handling
    //Log the exception for debugging
  }
}
```