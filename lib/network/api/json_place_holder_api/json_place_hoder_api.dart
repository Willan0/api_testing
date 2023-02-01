import 'package:dio/dio.dart';
import 'package:fake_store/constant/api_constant.dart';
import 'package:fake_store/data/vo/json_palce_holder_vo/json_place_holder_vo.dart';
import 'package:retrofit/http.dart';
part 'json_place_hoder_api.g.dart';
@RestApi(baseUrl: kJsonBaseUrl)
abstract class JsonPlaceHolderAPI{
  factory JsonPlaceHolderAPI(Dio dio) = _JsonPlaceHolderAPI;
  @GET(kGetAllPost)
  Future<List<JsonPlaceHolderVO>> getAllPost();
}