import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomerSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;

  const CustomerSearchBar({super.key, required this.controller, this.onSubmitted, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.sp),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          hintText: 'Buscar Ativo ou Local',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: const Icon(Icons.search,color: Colors.white,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.sp),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: context.theme.primaryColor,
        ),
      ),
    );
  }
}
