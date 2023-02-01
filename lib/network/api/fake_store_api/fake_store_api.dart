import 'package:dio/dio.dart';
import 'package:fake_store/constant/api_constant.dart';
import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:retrofit/retrofit.dart';
part 'fake_store_api.g.dart';
@RestApi(baseUrl: kBaseUrl)
abstract class FakeStoreAPI{
  factory FakeStoreAPI(Dio dio) = _FakeStoreAPI;
  @GET(kGetAllProductEndPoint)
  Future<List<FakeStoreVO>> getAllProducts();
}