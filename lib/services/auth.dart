import 'package:firebase_auth/firebase_auth.dart';
import 'package:money_me/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on firebase user

  AppUser _userFromFirebaseUser(User user) {
    return user != null ? AppUser(uid: user.uid) : null;
  }

  // auth change user stream


  Stream<AppUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // function to sign in anonymously
    Future signInAnon() async {
      try {
        UserCredential result = await _auth.signInAnonymously();
        User user = result.user;
        return _userFromFirebaseUser(user);
      } catch(e) {
        print(e.toString());
        return null;
      }
    }

  // sign in with email and password

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);

    } catch(e) {
        print(e.toString());
        return null;
    }


  }



  // sign out

  Future signOut() async {
    try {
        return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}