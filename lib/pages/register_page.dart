import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final Color igBackground = const Color(0xFF000000);
  final Color igTextFieldFill = const Color(0xFF121212);
  final Color igTextFieldBorder = const Color(0xFF333333);
  final Color igBlue = const Color(0xFF3797EF);
  final Color igTextHint = const Color(0xFF8E8E8E);

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actionsIconTheme: IconThemeData(color: Colors.white),
        foregroundColor: Colors.white,
      ),
      backgroundColor: igBackground,
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: igTextFieldBorder, width: 0.5),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account? ',
                style: TextStyle(color: igTextHint, fontSize: 12),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => const LoginPage()),
                ),
                child: const Text(
                  'Log in.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Instagram',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontStyle: FontStyle.italic,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                _buildIGTextField(hintText: 'Mobile Number or Email'),
                const SizedBox(height: 12),
                _buildIGTextField(hintText: 'Full Name'),
                const SizedBox(height: 12),
                _buildIGTextField(hintText: 'Username'),
                const SizedBox(height: 12),
                _buildIGTextField(hintText: 'Password', isPassword: true),
                const SizedBox(height: 16),
                Text(
                  'By signing up, you agree to our Terms, Privacy Policy and Cookies Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: igTextHint,
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: igBlue,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIGTextField({
    required String hintText,
    bool isPassword = false,
  }) {
    return SizedBox(
      height: 48,
      child: TextField(
        obscureText: isPassword && !_isPasswordVisible,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: igTextHint, fontSize: 14),
          filled: true,
          fillColor: igTextFieldFill,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: igTextHint,
                    size: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: igTextFieldBorder, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white54, width: 0.5),
          ),
        ),
      ),
    );
  }
}
