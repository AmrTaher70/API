class EndPoints {
  static const String baseurl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String signUp = 'chef/signup';
  static const String signIn = 'chef/signin';
  static const String checkEmail = 'chef/check-email';
  static const String forgetPass = 'chef/send-code';
  static const String changeForgottenPassword =
      'chef/change-forgotten-password';
  static const String changePassword = 'chef/change-password';
  static const String update = 'chef/update';
  static const String delete = 'chef/delete';
  static const String get = 'chef/get-chef/';

  static String getChefDateEndPoint(id) {
    return '$get$id';
  }
}
