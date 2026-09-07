class EmailValidator {
  static String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter your email";
    }

    final emailRegex = RegExp(
      r'^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value.trim())) {
      return "Email is not valid";
    }

    return null;
  }
}