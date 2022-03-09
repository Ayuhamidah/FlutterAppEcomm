class User {
  int idUser;
  String username;
  String email;
  String password;
  String telepon;
  String alamat;
  String nama_pengguna;

  User(this.idUser, this.username, this.email, this.password, this.alamat,
      this.telepon, this.nama_pengguna);

  factory User.fromJson(Map<String, dynamic> json) => User(
        int.parse(json['id_user']),
        json['nama_pengguna'],
        json['email'],
        json['telepon'],
        json['alamat'],
        json['username'],
        json['password'],
      );

  Map<String, dynamic> toJson() => {
        'id_user': this.idUser.toString(),
        'nama_pengguna': this.nama_pengguna,
        'email': this.email,
        'telepon': this.telepon,
        'alamat': this.alamat,
        'username': this.username,
        'password': this.password
      };
}
