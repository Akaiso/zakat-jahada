import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zakat_jahada/view/LogInPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _confirmEmail = '';
  String _password = '';
  String _confirmPassword = '';
  String _username = '';
  String _nickname = '';
  String _firstName = '';
  String _lastName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: MediaQuery.of(context).size.width > 800
              ? const EdgeInsets.symmetric(horizontal: 150.0, vertical: 20)
              : const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 32),
                  _buildEmailField(),
                  const SizedBox(height: 16),
                  _buildConfirmEmailField(),
                  const SizedBox(height: 16),
                  _buildPasswordField(),
                  const SizedBox(height: 16),
                  _buildConfirmPasswordField(),
                  const SizedBox(height: 16),
                  _buildUsernameField(),
                  const SizedBox(height: 16),
                  _buildNicknameField(),
                  const SizedBox(height: 16),
                  _buildFirstNameField(),
                  const SizedBox(height: 16),
                  _buildLastNameField(),
                  const SizedBox(height: 32),
                  _buildSignupButton(),
                  const SizedBox(height: 16),
                  _buildLoginText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      onSaved: (value) {
        _email = value!;
      },
    );
  }

  Widget _buildConfirmEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Confirm Email',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please confirm your email';
        } else if (value != _email) {
          return 'Email addresses do not match';
        }
        return null;
      },
      onSaved: (value) {
        _confirmEmail = value!;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  Widget _buildConfirmPasswordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Confirm Password',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please confirm your password';
        } else if (value != _password) {
          return 'Passwords do not match';
        }
        return null;
      },
      onSaved: (value) {
        _confirmPassword = value!;
      },
    );
  }

  Widget _buildUsernameField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your username';
        }
        return null;
      },
      onSaved: (value) {
        _username = value!;
      },
    );
  }

  Widget _buildNicknameField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Nickname',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person_outline),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your nickname';
        }
        return null;
      },
      onSaved: (value) {
        _nickname = value!;
      },
    );
  }

  Widget _buildFirstNameField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'First Name',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your first name';
        }
        return null;
      },
      onSaved: (value) {
        _firstName = value!;
      },
    );
  }

  Widget _buildLastNameField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Last Name',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your last name';
        }
        return null;
      },
      onSaved: (value) {
        _lastName = value!;
      },
    );
  }

  Widget _buildSignupButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _signup,
        child: const Text('Sign Up'),
      ),
    );
  }

  Widget _buildLoginText() {
    return GestureDetector(
      onTap: () {
        // Navigate to login page or perform another action
        Get.to(()=>const LogInPage(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 1500));
      },
      child: Text(
        "Already have an account? Login",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  void _signup() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Perform signup action with the collected data
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signing up...')),
      );
    }
  }
}
