class ValidationService {
  static String? validateNotEmpty(String? value) {
    if (value!.isEmpty) {
      return "This field can't be empty";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty|| value == null) {
      return "This field can't be empty";
    } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)){
      return "Enter a valid Email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty || value == null) {
      return "Password can't be empty";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters long";
    } else if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])').hasMatch(value)) {
      return 'Password must contain uppercase, lowercase';
    } else if (value.contains(' ')) {
      return 'Password should not contain spaces';
    }
    return null;
  }
}
