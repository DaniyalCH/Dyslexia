import 'dart:convert';

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "Dyslexia",
      desc:
          " dyslexia is wehdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddudacvabufrheireugburfeihfeurhfuiewh ",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;

  Item({
    required this.id,
    required this.name,
    required this.desc,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() => 'Item(id: $id, name: $name, desc: $desc)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ desc.hashCode;
}
