import 'package:firebase_auth/firebase_auth.dart';

class Repositor {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<String?> JoinUsUser({
    required String nome,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.updateDisplayName(nome);
      return null;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'email-already-in-use') {
        return 'Este email já está cadastrado';
      }

      return 'Erro desconhecido';
    }
  }
  Future<String?> LoginUser(
      {required String password, required String email}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future <void> SingOut() async{
    await  _firebaseAuth.signOut();
  }
}
