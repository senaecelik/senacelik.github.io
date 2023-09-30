import 'package:senaecelik/data/model/base_result_model.dart';

abstract class BaseApiServices {
  Future<dynamic> getApiResponse<T extends BaseResultModel>(
      String baseAdress, String path);

  Future<dynamic> postApiResponse<T extends BaseResultModel>(
      String baseAdress, String path, dynamic data);
}
