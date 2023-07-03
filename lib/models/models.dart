class UserModel{
String name,pasword,phone,location;
double lat,lng;

//<editor-fold desc="Data Methods">
  UserModel({
    required this.name,
    required this.pasword,
    required this.phone,
    required this.location,
    required this.lat,
    required this.lng,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          pasword == other.pasword &&
          phone == other.phone &&
          location == other.location &&
          lat == other.lat &&
          lng == other.lng);

  @override
  int get hashCode =>
      name.hashCode ^
      pasword.hashCode ^
      phone.hashCode ^
      location.hashCode ^
      lat.hashCode ^
      lng.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' name: $name,' +
        ' pasword: $pasword,' +
        ' phone: $phone,' +
        ' location: $location,' +
        ' lat: $lat,' +
        ' lng: $lng,' +
        '}';
  }

  UserModel copyWith({
    String? name,
    String? pasword,
    String? phone,
    String? location,
    double? lat,
    double? lng,
  }) {
    return UserModel(
      name: name ?? this.name,
      pasword: pasword ?? this.pasword,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'pasword': this.pasword,
      'phone': this.phone,
      'location': this.location,
      'lat': this.lat,
      'lng': this.lng,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      pasword: map['pasword'] as String,
      phone: map['phone'] as String,
      location: map['location'] as String,
      lat: map['lat'] as double,
      lng: map['lng'] as double,
    );
  }

//</editor-fold>
}