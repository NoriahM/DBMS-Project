import 'package:mysql1/mysql1.dart';
import 'package:jukebox/models/user.dart';
import 'package:jukebox/utils/database.dart';


class UserService {
  Future<List<User>> getUsers() async {
    final conn = await getConnection();
    final results = await conn.query('SELECT * FROM User');
    await conn.close();

    return results.map((row) {
      return User(
        id: row['user_id'],
        username: row['username'],
        email: row['email'],
        registrationDate: row['registration_date'],
      );
    }).toList();
  }
}
