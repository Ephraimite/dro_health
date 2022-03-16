import 'package:dro_health/model/product_model.dart';
import 'package:get/get.dart';

class CartViewModel extends GetxController {
  RxMap _items = {}.obs;

  Map<String, ProductModel> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  int get totalAmount {
    var total = 0;
    _items.forEach(
        (key, item) => total += (item.price! * item.cartItemQuantity as int));
    return total;
  }

  void addItem(
      String productID, double price, String productName, String image) {
    if (_items.containsKey(productID)) {
      _items.update(
          productID,
          (existingCartItem) => ProductModel(
              productName: existingCartItem.productName,
              productID: existingCartItem.productID,
              price: existingCartItem.price,
              imageUrl: existingCartItem.imageUrl,
              cartItemQuantity: existingCartItem.cartItemQuantity! + 1));
    } else {
      _items.putIfAbsent(
          productID,
          () => ProductModel(
              productID: productID,
              productName: productName,
              price: price,
              imageUrl: image,
              cartItemQuantity: 1));
    }
    Get.snackbar('Product Added', 'your product $productName has been addded',
        duration: Duration(seconds: 3), snackPosition: SnackPosition.BOTTOM);
  }

  void removeItem(String productID) {
    _items.remove(productID);
  }

  void removeSingleItem(String productID) {
    if (!_items.containsKey(productID)) {
      return;
    }
    if (_items[productID]!.cartItemQuantity! > 1) {
      _items.update(
          productID,
          (existingCartItem) => ProductModel(
                productID: existingCartItem.productID,
                productName: existingCartItem.productName,
                price: existingCartItem.price,
                imageUrl: existingCartItem.imageUrl,
                cartItemQuantity: -1,
              ));
    } else {
      _items.remove(productID);
    }
  }

  void clearCart() {
    _items = {}.obs;
  }
}
