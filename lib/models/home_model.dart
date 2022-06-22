class TopDestination {
  int? id;
  String? name;
  String? image;
  int? reservationsCount;

  TopDestination({this.id, this.name, this.image, this.reservationsCount});

  TopDestination.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    reservationsCount = json['reservationsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['reservationsCount'] = this.reservationsCount;
    return data;
  }
}



// class HomeModel {
//   bool? isSuccess;
//   Data? data;
//   Null? errorMessage;

//   HomeModel({this.isSuccess, this.data, this.errorMessage});

//   HomeModel.fromJson(Map<String, dynamic> json) {
//     isSuccess = json['isSuccess'];
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     errorMessage = json['errorMessage'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['isSuccess'] = this.isSuccess;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     data['errorMessage'] = this.errorMessage;
//     return data;
//   }
// }

// class TopTour {
//   List<Null>? topTours;

//   TopTour({this.topTours});

//   TopTour.fromJson(Map<String, dynamic> json) {
//     if (json['topTours'] != null) {
//       topTours = <Null>[];
//       json['topTours'].forEach((v) {
//         topTours!.add(new Null.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.topTours != null) {
//       data['topTours'] = this.topTours!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }


// class Data {
//   List<TopDestination>? topDestination;
//   List<Categories>? categories;
//   List<TopTour>? topTours;
//   List<TopGuides>? topGuides;
//   List<TopCompanies>? topCompanies;

//   Data(
//       {this.topDestination,
//       this.categories,
//       this.topTours,
//       this.topGuides,
//       this.topCompanies});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['topDestination'] != null) {
//       topDestination = <TopDestination>[];
//       json['topDestination'].forEach((v) {
//         topDestination!.add(new TopDestination.fromJson(v));
//       });
//     }
//     if (json['categories'] != null) {
//       categories = <Categories>[];
//       json['categories'].forEach((v) {
//         categories!.add(new Categories.fromJson(v));
//       });
//     }
//     if (json['topTours'] != null) {
//       topTours = <TopTour>[];
//       json['topTours'].forEach((v) {
//         topTours!.add(new TopTour.fromJson(v));
//       });
//     }
//     if (json['topGuides'] != null) {
//       topGuides = <TopGuides>[];
//       json['topGuides'].forEach((v) {
//         topGuides!.add(new TopGuides.fromJson(v));
//       });
//     }
//     if (json['topCompanies'] != null) {
//       topCompanies = <TopCompanies>[];
//       json['topCompanies'].forEach((v) {
//         topCompanies!.add(new TopCompanies.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.topDestination != null) {
//       data['topDestination'] =
//           this.topDestination!.map((v) => v.toJson()).toList();
//     }
//     if (this.categories != null) {
//       data['categories'] = this.categories!.map((v) => v.toJson()).toList();
//     }
//     if (this.topTours != null) {
//       data['topTours'] = this.topTours!.map((v) => v.toJson()).toList();
//     }
//     if (this.topGuides != null) {
//       data['topGuides'] = this.topGuides!.map((v) => v.toJson()).toList();
//     }
//     if (this.topCompanies != null) {
//       data['topCompanies'] = this.topCompanies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Categories {
//   int? id;
//   String? name;
//   String? image;
//   int? reservationsCount;

//   Categories({this.id, this.name, this.image, this.reservationsCount});

//   Categories.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     reservationsCount = json['reservationsCount'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['image'] = this.image;
//     data['reservationsCount'] = this.reservationsCount;
//     return data;
//   }
// }

// class TopDestination {
//   int? id;
//   String? name;
//   String? image;
//   int? reservationsCount;

//   TopDestination({this.id, this.name, this.image, this.reservationsCount});

//   TopDestination.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     reservationsCount = json['reservationsCount'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['image'] = this.image;
//     data['reservationsCount'] = this.reservationsCount;
//     return data;
//   }
// }

// class TopGuides {
//   int? id;
//   String? name;
//   String? image;
//   int? rating;
//   int? reservationsCount;
//   List<Null>? ratings;

//   TopGuides(
//       {this.id,
//       this.name,
//       this.image,
//       this.rating,
//       this.reservationsCount,
//       this.ratings});

//   TopGuides.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     rating = json['rating'];
//     reservationsCount = json['reservationsCount'];
//     if (json['ratings'] != null) {
//       ratings = <Null>[];
//       json['ratings'].forEach((v) {
//         ratings!.add(new Null.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['image'] = this.image;
//     data['rating'] = this.rating;
//     data['reservationsCount'] = this.reservationsCount;
//     if (this.ratings != null) {
//       data['ratings'] = this.ratings!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class TopCompanies {
//   int? id;
//   String? name;
//   String? image;
//   int? rating;
//   int? reservationsCount;
//   List<int>? ratings;

//   TopCompanies(
//       {this.id,
//       this.name,
//       this.image,
//       this.rating,
//       this.reservationsCount,
//       this.ratings});

//   TopCompanies.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     rating = json['rating'];
//     reservationsCount = json['reservationsCount'];
//     ratings = json['ratings'].cast<int>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['image'] = this.image;
//     data['rating'] = this.rating;
//     data['reservationsCount'] = this.reservationsCount;
//     data['ratings'] = this.ratings;
//     return data;
//   }
// }
