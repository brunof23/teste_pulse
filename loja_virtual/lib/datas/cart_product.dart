import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loja_virtual/datas/product_data.dart';

import 'product_data.dart';

class CartProduct {
  String cid;

  String category;
  String pid;

  int quantity;
  String color;
  String address;

  ProductData productData;

  CartProduct();

  CartProduct.fromDocument(DocumentSnapshot document) {
    cid = document.documentID;
    category = document.data["category"];
    pid = document.data["pid"];
    quantity = document.data["quantity"];
    color = document.data["cor"];
    address = document.data["address"];
  }

  Map<String, dynamic> toMap() {
    return {
      "category": category,
      "pid": pid,
      "quantity": quantity,
      "color": color,
      "address": address,
      "product": productData.toResumedMap()
    };
  }
}
