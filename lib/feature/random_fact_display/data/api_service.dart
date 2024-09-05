import 'package:animals/core/networking/api_exception.dart';
import 'package:animals/feature/random_fact_display/data/dio_config.dart';
import 'package:dio/dio.dart';

import '../../random_fact_display/data/constant.dart';


class FactApiService {
  FactApiService._();
  static final FactApiService api = FactApiService._();

  Future<String> fetchFact() async {
    Dio dio = DioConfig.getDio();
    Response response = await dio.get(endPoint);

    try{
      var jsonData = response.data;

      if (response.statusCode == 200) {
        String fact = jsonData['fact'];
        return fact;
      }
      else{
        throw ApiException(response.statusMessage);
      }
    }on DioException catch(e){
      throw ApiException(e.message);
    }

  }
}