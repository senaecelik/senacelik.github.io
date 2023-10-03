// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:senaecelik/data/model/user_model.dart';

class UserRepository {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
 
  Future<List<UserModel?>?> getUserInfo() async {
    List<UserModel> userList = [];
    try {
      final user = await _firestore.collection('UserInformation').get();

      user.docs.forEach((element) {
        return userList.add(UserModel.fromJson(element.data()));
      });

      return userList;
    } on FirebaseException {
      return userList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
