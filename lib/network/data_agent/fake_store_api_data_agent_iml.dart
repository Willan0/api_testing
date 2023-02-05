import 'package:dio/dio.dart';
import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store/network/api/fake_store_api/fake_store_api.dart';

import 'fake_store_api_data_agent.dart';

class FakeStoreApiDataAgentImp extends FakeStoreDataAgent{
  late FakeStoreAPI _fakeStoreAPI;
  FakeStoreApiDataAgentImp._(){
    _fakeStoreAPI = FakeStoreAPI(Dio());
  }
  static final FakeStoreApiDataAgentImp _singleton = FakeStoreApiDataAgentImp._();
  factory FakeStoreApiDataAgentImp()=> _singleton;
  @override
  Future<List<FakeStoreVO>?> getAllProducts() {
   return _fakeStoreAPI.getAllProducts();
  }
}