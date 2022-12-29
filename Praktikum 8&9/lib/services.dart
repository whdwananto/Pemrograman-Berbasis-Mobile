import 'package:http/http.dart' as http;
import 'package:tugas8/model.dart';

class DoaApiServices {
  Future<List<Doa>> fetchDoaApi() async {
    try {
      final response = await http.get(
        Uri.parse('https://doa-doa-api-ahmadramadhan.fly.dev/api'),
      );
      // ignore: avoid_print
      print(response.body);

      final List<Doa> result = DoaFromJson(response.body);

      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}
