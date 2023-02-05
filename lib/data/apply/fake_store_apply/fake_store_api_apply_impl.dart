import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store/network/data_agent/fake_store_api_data_agent.dart';
import 'package:fake_store/network/data_agent/fake_store_api_data_agent_iml.dart';

import 'fake_store_api_apply.dart';

class FakeStoreApiApplyImpl extends FakeStoreApply{
  FakeStoreApiApplyImpl._();
  static final FakeStoreApiApplyImpl _singleton = FakeStoreApiApplyImpl._();
  factory FakeStoreApiApplyImpl() => _singleton;
  final FakeStoreDataAgent _fakeStoreDataAgent = FakeStoreApiDataAgentImp();
  @override
  Future<List<FakeStoreVO>?> getAllProducts() {
   return _fakeStoreDataAgent.getAllProducts();
  }
}