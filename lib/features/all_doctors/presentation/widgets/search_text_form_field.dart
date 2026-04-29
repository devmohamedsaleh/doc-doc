import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchTextFormField({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText = "Search doctors...",
  });

  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {
  late final TextEditingController _controller;
  late final bool _isExternalController;

  @override
  void initState() {
    super.initState();

    _isExternalController = widget.controller != null;
    _controller = widget.controller ?? TextEditingController();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    if (!_isExternalController) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    widget.onChanged?.call('');
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: widget.onChanged,
      cursorColor: ColorsManager.green,
      style: TxtStyle.size14Weight400Grey,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TxtStyle.size14Weight400Grey,
        filled: true,
        fillColor: ColorsManager.white,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 22.sp,
          color: ColorsManager.grey,
        ),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
          onPressed: _clearText,
          icon: Icon(
            Icons.close,
            size: 20.sp,
            color: ColorsManager.grey,
          ),
        )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorsManager.txtFeildBorderColor,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorsManager.green,
            width: 1.2.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.2.w,
          ),
        ),
      ),
    );
  }
}