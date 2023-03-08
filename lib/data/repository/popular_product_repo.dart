import 'package:flutter_ecommerce_app_food/data/api/api_client.dart';
import 'package:get/get.dart';

import '../../utils/app_constant.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
