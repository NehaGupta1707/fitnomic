import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FitNomicFirebaseUser {
  FitNomicFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FitNomicFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FitNomicFirebaseUser> fitNomicFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FitNomicFirebaseUser>(
      (user) {
        currentUser = FitNomicFirebaseUser(user);
        return currentUser!;
      },
    );
