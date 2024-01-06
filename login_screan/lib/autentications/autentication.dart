import 'package:flutter/widgets.dart';
import 'package:login_screan/components/snackbarmensage.dart';
import 'package:login_screan/repositoris/repositor.dart';

class Autentication {
  var _joinusaction = Repositor();
  var _loginaction = Repositor();
  ClickJoinUs({
    required String namevalue,
    required String emailvalue,
    required String passwordvalue,
    required BuildContext context,
    required GlobalKey<FormState> key,
  }) {
    String _namevalue = namevalue;
    String _emailvalue = emailvalue;
    String _passwordvalue = passwordvalue;
    if (key.currentState!.validate()) {
      print(
        "${namevalue} - ${emailvalue} - ${passwordvalue}",
      );
      _joinusaction.JoinUsUser(
        nome: _namevalue,
        email: _emailvalue,
        password: _passwordvalue,
      ).then((String? error) {
        if (error != null) {
          ShowSnackBar(context: context, text: error.toString());
        } else {
          ShowSnackBar(
              context: context,
              text: 'Cadastro efectuado com sucesso',
              iserror: false);
        }
      });
    }
  }

  ClickLogin({
    required String emailvalue,
    required String passwordvalue,
    required BuildContext context,
    required GlobalKey<FormState> key,
  }) async {
    if (key.currentState!.validate()) {
      _loginaction.LoginUser(
        password: passwordvalue,
        email: emailvalue,
      ).then((String? error) {
        if (error != null) {
          ShowSnackBar(context: context, text: error);
        } else {
          ShowSnackBar(
              context: context,
              text: "Usuário Logado com sucesso!",
              iserror: false);
        }
      });
    }
  }

  
}
