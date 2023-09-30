import 'package:senaecelik/data/model/user_model.dart';
import 'package:senaecelik/data/network/network_api_service.dart';

class UserRepository {
  final String baseUrl = "http://127.0.0.1:3000/";
  final String getInfo = "getUserInfo";
  Future<List<UserModel?>?> getUser() async {
    try {
      dynamic response = await NetworkApiServices.instance
          .getApiResponse<UserModel>(baseUrl, getInfo, isList: true);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
