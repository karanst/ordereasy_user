/// error : false
/// message : "Post fetched successfully"
/// data : [{"id":"3","seller_id":"1281","product_id":"3624","text":"test","old_price":"100","new_price":"200","create_at":"2023-06-05 18:50:57","image":"1685971257Screenshot12.png,1685971257Screenshot13.png,1685971257Screenshot15.png","images":["https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot12.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot13.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot15.png"]},{"id":"4","seller_id":"1281","product_id":"3624","text":"test","old_price":"100","new_price":"200","create_at":"2023-06-05 18:51:06","image":"1685971266Screenshot12.png,1685971266Screenshot13.png,1685971266Screenshot15.png","images":["https://developmentalphawizz.com/mt/uploads/media/2023/1685971266Screenshot12.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971266Screenshot13.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971266Screenshot15.png"]}]

class GetPostsModel {
  GetPostsModel({
      bool? error, 
      String? message, 
      List<Posts>? data,}){
    _error = error;
    _message = message;
    _data = data;
}

  GetPostsModel.fromJson(dynamic json) {
    _error = json['error'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Posts.fromJson(v));
      });
    }
  }
  bool? _error;
  String? _message;
  List<Posts>? _data;
GetPostsModel copyWith({  bool? error,
  String? message,
  List<Posts>? data,
}) => GetPostsModel(  error: error ?? _error,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get error => _error;
  String? get message => _message;
  List<Posts>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "3"
/// seller_id : "1281"
/// product_id : "3624"
/// text : "test"
/// old_price : "100"
/// new_price : "200"
/// create_at : "2023-06-05 18:50:57"
/// image : "1685971257Screenshot12.png,1685971257Screenshot13.png,1685971257Screenshot15.png"
/// images : ["https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot12.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot13.png","https://developmentalphawizz.com/mt/uploads/media/2023/1685971257Screenshot15.png"]

class Posts {
  Posts({
      String? id, 
      String? sellerId, 
      String? productId, 
      String? text, 
      String? oldPrice, 
      String? newPrice, 
      String? createAt, 
      String? image, 
      List<String>? images,}){
    _id = id;
    _sellerId = sellerId;
    _productId = productId;
    _text = text;
    _oldPrice = oldPrice;
    _newPrice = newPrice;
    _createAt = createAt;
    _image = image;
    _images = images;
}

  Posts.fromJson(dynamic json) {
    _id = json['id'];
    _sellerId = json['seller_id'];
    _productId = json['product_id'];
    _text = json['text'];
    _oldPrice = json['old_price'];
    _newPrice = json['new_price'];
    _createAt = json['create_at'];
    _image = json['image'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  String? _id;
  String? _sellerId;
  String? _productId;
  String? _text;
  String? _oldPrice;
  String? _newPrice;
  String? _createAt;
  String? _image;
  List<String>? _images;
Posts copyWith({  String? id,
  String? sellerId,
  String? productId,
  String? text,
  String? oldPrice,
  String? newPrice,
  String? createAt,
  String? image,
  List<String>? images,
}) => Posts(  id: id ?? _id,
  sellerId: sellerId ?? _sellerId,
  productId: productId ?? _productId,
  text: text ?? _text,
  oldPrice: oldPrice ?? _oldPrice,
  newPrice: newPrice ?? _newPrice,
  createAt: createAt ?? _createAt,
  image: image ?? _image,
  images: images ?? _images,
);
  String? get id => _id;
  String? get sellerId => _sellerId;
  String? get productId => _productId;
  String? get text => _text;
  String? get oldPrice => _oldPrice;
  String? get newPrice => _newPrice;
  String? get createAt => _createAt;
  String? get image => _image;
  List<String>? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['seller_id'] = _sellerId;
    map['product_id'] = _productId;
    map['text'] = _text;
    map['old_price'] = _oldPrice;
    map['new_price'] = _newPrice;
    map['create_at'] = _createAt;
    map['image'] = _image;
    map['images'] = _images;
    return map;
  }

}