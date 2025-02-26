import 'dart:io';

import 'package:tiles_app/api/api_helpers.dart';
import 'package:tiles_app/constant/app_request.dart';
import 'package:tiles_app/model/response_item.dart';

///GET ALL Location Products
class GetAllProductByCategoryId {
  static Future<ResponseItem> getAllProductByCategoryId(
      {required int categoryId}) async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL +
        MethodNames.getAllProductByCategoryId +
        categoryId.toString();
    ;
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// GET Product by SubCategory Id
class GetProductBySubcategoryRepo {
  static Future<ResponseItem> getProductBySubcategoryRepo(
      {required int subCategoryId}) async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL +
        MethodNames.getProductBySubCategoryId +
        subCategoryId.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// GET Product Details
class GetProductDetailsRepo {
  static Future<ResponseItem> getProductDetailsRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.getProductById + id.toString();
    result = await BaseApiHelper.getRequest(requestUrl);
    return result;
  }
}

/// Upload Images
class UploadImageRepo {
  static Future<ResponseItem> uploadImagesRepo(
      {required List<File> requestData}) async {
    ResponseItem result = ResponseItem();

    String requestUrl = AppUrls.BASE_URL + MethodNames.uploadProductImage;
    result = await BaseApiHelper.uploadImages(
        requestUrl: requestUrl, requestData: requestData);
    return result;
  }
}

/// Add Product
class AddProductRepo {
  static Future<ResponseItem> addProductRepo(
      {required Map<String, dynamic> productData}) async {
    ResponseItem result = ResponseItem();
    String requestUrl = AppUrls.BASE_URL + MethodNames.addProduct;
    result = await BaseApiHelper.postRequest(requestUrl, productData);
    return result;
  }
}

///put Product data
class UpdateProductData {
  static Future<ResponseItem> updateProductData(
      {required Map<String, dynamic> productData, required String id}) async {
    ResponseItem result = ResponseItem();

    String requestUrl = AppUrls.BASE_URL + MethodNames.updateProduct + id;
    result = await BaseApiHelper.putRequest(requestUrl, productData);
    return result;
  }
}

/// GET Product Details
class DeleteProductRepo {
  static Future<ResponseItem> deleteProductRepo({required int id}) async {
    ResponseItem result = ResponseItem();
    String requestUrl =
        AppUrls.BASE_URL + MethodNames.deleteProduct + id.toString();
    print(requestUrl);
    result = await BaseApiHelper.deleteRequest(requestUrl);
    return result;
  }
}
