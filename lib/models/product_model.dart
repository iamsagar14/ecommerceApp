class Product {
  bool? response;
  String? msg;
  Result? result;

  Product({this.response, this.msg, this.result});

  Product.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    msg = json['msg'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['msg'] = this.msg;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  List<ProductModel>? products;
  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  String? nextPage;
  String? previousPage;
  String? lastPage;
  String? firstPage;

  Result(
      {this.products,
      this.total,
      this.count,
      this.perPage,
      this.currentPage,
      this.totalPages,
      this.nextPage,
      this.previousPage,
      this.lastPage,
      this.firstPage});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <ProductModel>[];
      json['products'].forEach((v) {
        products!.add(new ProductModel.fromJson(v));
      });
    }
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
    nextPage = json['next_page'];
    previousPage = json['previous_page'];
    lastPage = json['last_page'];
    firstPage = json['first_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    data['next_page'] = this.nextPage;
    data['previous_page'] = this.previousPage;
    data['last_page'] = this.lastPage;
    data['first_page'] = this.firstPage;
    return data;
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  String? price;
  String? status;
  String? image;
  String? createdAt;
  String? updatedAt;
  String? link;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.status,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.link});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    status = json['status'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['status'] = this.status;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['link'] = this.link;
    return data;
  }
}
