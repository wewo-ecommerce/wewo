import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_wewo/app/common/values/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Color? colorBoder;
  final String? initValue;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final bool? obscureText;
  final bool? autofocus;
  final bool? readOnly;
  final bool? autoValidate;
  final AutovalidateMode? autovalidateMode;
  final TextAlign? align;
  final TextCapitalization? textCapitalization;
  final TextStyle? textStyle;
  final TextInputAction? inputAction;
  final List<TextInputFormatter>? formatter;
  final TextInputType? inputType;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function()? onEditingComplete;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  static final double paddingContent = 18;
  final String? errorText;

  const TextFieldWidget({
    Key? key,
    this.controller,
    this.focusNode,
    this.colorBoder,
    this.initValue,
    this.labelText,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.obscureText,
    this.readOnly,
    this.autofocus,
    this.autoValidate,
    this.autovalidateMode,
    this.textCapitalization,
    this.align,
    this.textStyle,
    this.inputAction,
    this.inputType,
    this.formatter,
    this.validate,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.suffixIcon,
    this.prefixIcon,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          style: textStyle,
          initialValue: initValue,
          textInputAction: inputAction,
          keyboardType: inputType,
          validator: validate,
          autovalidateMode: autovalidateMode,
          obscureText: obscureText ?? false,
          maxLength: maxLength,
          maxLines: maxLines ?? 1,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          readOnly: readOnly ?? false,
          textAlign: align ?? TextAlign.start,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onSubmitted,
          inputFormatters: formatter,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(paddingContent),
            labelText: labelText,
            hintText: hintText,
            labelStyle: textStyle,
            hintStyle: textStyle,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: colorBoder ?? Colors.blue, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: colorBoder ?? Colors.blue, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
        errorText == null || errorText!.isEmpty
            ? const SizedBox.shrink()
            : Container(
                height: 24,
                padding: EdgeInsets.symmetric(
                  // vertical: AppDimens.space_8,
                  horizontal: 16,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  errorText ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.red),
                ),
              )
      ],
    );
  }
}
