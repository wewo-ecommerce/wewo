class Store {
  final String id;
  final String creatorId;
  final String sellerId;
  final List<String> productIds;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;

  Store({
    required this.id,
    required this.creatorId,
    required this.sellerId,
    required this.productIds,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  Store.fromJson(Map<String, dynamic> json)
      : this(
          id: json['_id'] ?? "",
          creatorId: json['creator_id'] ?? "",
          sellerId: json['seller_id'] ?? "",
          productIds: List.from(json['product_ids'] ?? []),
          type: json['type'] ?? "",
          createdAt: DateTime.parse(json['createdAt'] ?? ""),
          updatedAt: DateTime.parse(json['updatedAt'] ?? ""),
        );

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "creator_id": creatorId,
      "seller_id": sellerId,
      "product_ids": productIds,
      "type": type,
      "createdAt": createdAt.toIso8601String(),
      "updatedAt": updatedAt.toIso8601String(),
    };
  }
}
