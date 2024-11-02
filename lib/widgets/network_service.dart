import 'package:dio/dio.dart';

class NetworkService {
  final Dio _dio = Dio();

  Future<void> sendData(Map<String, dynamic> data, String endpoint) async {
    try {
      final response = await _dio.post(
        'https://svyrydiuk-lab12.requestcatcher.com/$endpoint',
        data: data,
      );
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } catch (e) {
      print('Error sending data: $e');
    }
  }
}
