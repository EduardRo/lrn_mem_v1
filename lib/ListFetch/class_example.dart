//class for Product, Brand, Model
class PBM {
  static const String pbmCollectionName = 'productsBrandsModels';
  static const String pbmIdField = 'pbmId';
  static const String pbmNameField = 'pbmName';
  static const String parentIdField = 'parentId';
  static const String iconUrlField = 'iconUrl';
  //general
  final String pbmId;
  final String pbmName;
  final String parentId;

  //icon
  final String? iconUrl;

  PBM({
    required this.pbmId,
    required this.pbmName,
    required this.parentId,
    this.iconUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'pbmId': pbmId,
      'pbmName': pbmName,
      'parentId': parentId,
      'iconUrl': iconUrl,
    };
  } //end of toMap method

  factory PBM.fromFirestore(Map<String, dynamic> firestore) {
    //here the benefit of factory comes into play: it will return a null
    //otherwise it gonna create the object
    // ignore: unnecessary_null_comparison
    if (firestore == null) return null;
    return PBM(
      pbmId: firestore['pbmId'],
      pbmName: firestore['pbmName'],
      parentId: firestore['parentId'],
      iconUrl: firestore['iconUrl'],
    );
  } //end of PBM.fromFirestore named constructor
} //end of PBM class
