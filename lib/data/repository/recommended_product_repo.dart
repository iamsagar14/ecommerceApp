import 'package:flutter_ecommerce_app_food/data/api/api_client.dart';
import 'package:get/get.dart';

import '../../utils/app_constant.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});
  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
