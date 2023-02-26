import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_wewo/app/data/models/store_model.dart';
import 'package:new_wewo/app/data/repository/store_repository.dart';

class StoreUseCase {
  Future<List<Store>> fetchAllStore() async {
    return await StoreRepository().fetchAllStore();
  }
}
