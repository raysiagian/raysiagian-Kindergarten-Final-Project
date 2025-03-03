import 'package:flutter/material.dart';
import 'package:vak_app/routes/appRouteConstant.dart';
import 'package:vak_app/style/localColor.dart';
import 'package:vak_app/style/localTextStyle.dart';

class RegistrationFormWidget extends StatefulWidget {
  const RegistrationFormWidget({super.key});

  @override
  State<RegistrationFormWidget> createState() => _RegistrationFormWidgetState();
}

class _RegistrationFormWidgetState extends State<RegistrationFormWidget> {
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            // Ubah text jika sudah memiliki style
            labelText: 'Username',
            labelStyle: LocalTextStyle.textTheme.bodySmall!.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          controller: _usernameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            // Ubah text jika sudah memiliki style
            labelText: 'Username',
            labelStyle: LocalTextStyle.textTheme.bodySmall!.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: 20),
        // Tambahkan checkbox untuk pilih jenis kelamin
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            // Ubah text jika sudah memiliki style
            labelText: 'Password',
            labelStyle: LocalTextStyle.textTheme.bodySmall!.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 44,
          width: double.infinity,
          child: ElevatedButton(
            // ganti ketika logika pendaftarannya sudah ada
            onPressed: () => Navigator.pushNamed(context, AppRouteConstant.wrapperScreen),
            style: ElevatedButton.styleFrom(
              backgroundColor: LocalColor.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            // Ubah text jika sudah memiliki style
            child: Text(
              "Daftar",
              style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        // Redirect to Register Page
        Center(child: Text("Sudah punya akun?")),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 44,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Navigator.pushNamed(context, AppRouteConstant.loginScreen),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
            child: Text(
              'Masuk',
              style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                color: LocalColor.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}