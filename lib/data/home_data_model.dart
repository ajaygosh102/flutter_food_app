// To parse this JSON data, do////     final homeDataModel = homeDataModelFromMap(jsonString);import 'dart:convert';List<HomeDataModel> homeDataModelFromMap(String str) => List<HomeDataModel>.from(json.decode(str).map((x) => HomeDataModel.fromMap(x)));String homeDataModelToMap(List<HomeDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));class HomeDataModel {  HomeDataModel({    this.restaurantId,    this.restaurantName,    this.restaurantImage,    this.tableId,    this.tableName,    this.branchName,    this.nexturl,    this.tableMenuList,  });  String restaurantId;  String restaurantName;  String restaurantImage;  String tableId;  String tableName;  String branchName;  String nexturl;  List<TableMenuList> tableMenuList;  factory HomeDataModel.fromMap(Map<String, dynamic> json) => HomeDataModel(    restaurantId: json["restaurant_id"] == null ? null : json["restaurant_id"],    restaurantName: json["restaurant_name"] == null ? null : json["restaurant_name"],    restaurantImage: json["restaurant_image"] == null ? null : json["restaurant_image"],    tableId: json["table_id"] == null ? null : json["table_id"],    tableName: json["table_name"] == null ? null : json["table_name"],    branchName: json["branch_name"] == null ? null : json["branch_name"],    nexturl: json["nexturl"] == null ? null : json["nexturl"],    tableMenuList: json["table_menu_list"] == null ? null : List<TableMenuList>.from(json["table_menu_list"].map((x) => TableMenuList.fromMap(x))),  );  Map<String, dynamic> toMap() => {    "restaurant_id": restaurantId == null ? null : restaurantId,    "restaurant_name": restaurantName == null ? null : restaurantName,    "restaurant_image": restaurantImage == null ? null : restaurantImage,    "table_id": tableId == null ? null : tableId,    "table_name": tableName == null ? null : tableName,    "branch_name": branchName == null ? null : branchName,    "nexturl": nexturl == null ? null : nexturl,    "table_menu_list": tableMenuList == null ? null : List<dynamic>.from(tableMenuList.map((x) => x.toMap())),  };}class TableMenuList {  TableMenuList({    this.menuCategory,    this.menuCategoryId,    this.menuCategoryImage,    this.nexturl,    this.categoryDishes,  });  String menuCategory;  String menuCategoryId;  String menuCategoryImage;  String nexturl;  List<CategoryDish> categoryDishes;  factory TableMenuList.fromMap(Map<String, dynamic> json) => TableMenuList(    menuCategory: json["menu_category"] == null ? null : json["menu_category"],    menuCategoryId: json["menu_category_id"] == null ? null : json["menu_category_id"],    menuCategoryImage: json["menu_category_image"] == null ? null : json["menu_category_image"],    nexturl: json["nexturl"] == null ? null : json["nexturl"],    categoryDishes: json["category_dishes"] == null ? null : List<CategoryDish>.from(json["category_dishes"].map((x) => CategoryDish.fromMap(x))),  );  Map<String, dynamic> toMap() => {    "menu_category": menuCategory == null ? null : menuCategory,    "menu_category_id": menuCategoryId == null ? null : menuCategoryId,    "menu_category_image": menuCategoryImage == null ? null : menuCategoryImage,    "nexturl": nexturl == null ? null : nexturl,    "category_dishes": categoryDishes == null ? null : List<dynamic>.from(categoryDishes.map((x) => x.toMap())),  };}class AddonCat {  AddonCat({    this.addonCategory,    this.addonCategoryId,    this.addonSelection,    this.nexturl,    this.addons,  });  String addonCategory;  String addonCategoryId;  int addonSelection;  String nexturl;  List<CategoryDish> addons;  factory AddonCat.fromMap(Map<String, dynamic> json) => AddonCat(    addonCategory: json["addon_category"] == null ? null : json["addon_category"],    addonCategoryId: json["addon_category_id"] == null ? null : json["addon_category_id"],    addonSelection: json["addon_selection"] == null ? null : json["addon_selection"],    nexturl: json["nexturl"] == null ? null : json["nexturl"],    addons: json["addons"] == null ? null : List<CategoryDish>.from(json["addons"].map((x) => CategoryDish.fromMap(x))),  );  Map<String, dynamic> toMap() => {    "addon_category": addonCategory == null ? null : addonCategory,    "addon_category_id": addonCategoryId == null ? null : addonCategoryId,    "addon_selection": addonSelection == null ? null : addonSelection,    "nexturl": nexturl == null ? null : nexturl,    "addons": addons == null ? null : List<dynamic>.from(addons.map((x) => x.toMap())),  };}class CategoryDish {  CategoryDish({    this.dishId,    this.dishName,    this.dishPrice,    this.dishImage,    this.dishCurrency,    this.dishCalories,    this.dishDescription,    this.dishAvailability,    this.dishType,    this.nexturl,    this.addonCat,  });  String dishId;  String dishName;  double dishPrice;  String dishImage;  String dishCurrency;  int dishCalories;  String dishDescription;  bool dishAvailability;  int dishType;  String nexturl;  List<AddonCat> addonCat;  factory CategoryDish.fromMap(Map<String, dynamic> json) => CategoryDish(    dishId: json["dish_id"] == null ? null : json["dish_id"],    //dishName: json["dish_name"] == null ? null : json["dish_name"],    //dishPrice: json["dish_price"] == null ? null : json["dish_price"].toDouble(),    dishImage: json["dish_image"] == null ? null : json["dish_image"],    dishCurrency: json["dish_currency"] == null ? null : json["dish_currency"],    dishCalories: json["dish_calories"] == null ? null : json["dish_calories"],    dishDescription: json["dish_description"] == null ? null : json["dish_description"],    dishAvailability: json["dish_Availability"] == null ? null : json["dish_Availability"],    dishType: json["dish_Type"] == null ? null : json["dish_Type"],    nexturl: json["nexturl"] == null ? null : json["nexturl"],    addonCat: json["addonCat"] == null ? null : List<AddonCat>.from(json["addonCat"].map((x) => AddonCat.fromMap(x))),  );  Map<String, dynamic> toMap() => {    "dish_id": dishId == null ? null : dishId,    "dish_name": dishName == null ? null : dishName,    "dish_price": dishPrice == null ? null : dishPrice,    "dish_image": dishImage == null ? null : dishImage,    "dish_currency": dishCurrency == null ? null : dishCurrency,    "dish_calories": dishCalories == null ? null : dishCalories,    "dish_description": dishDescription == null ? null : dishDescription,    "dish_Availability": dishAvailability == null ? null : dishAvailability,    "dish_Type": dishType == null ? null : dishType,    "nexturl": nexturl == null ? null : nexturl,    "addonCat": addonCat == null ? null : List<dynamic>.from(addonCat.map((x) => x.toMap())),  };}