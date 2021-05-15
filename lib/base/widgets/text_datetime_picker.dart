import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../../base/imports.dart';

class TextDateTimePicker extends StatelessWidget {
  final String name;
  final String label;
  final IconData icon;
  final DateTime initialValue;
  final InputType inputType;
  final bool enabled;
  final FormFieldValidator<DateTime> validator;

  const TextDateTimePicker(
      {Key key,
      this.name,
      this.label,
      this.icon,
      this.initialValue,
      this.inputType,
      this.enabled = true,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16),
      child: Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: Theme.of(context).primaryColor,
          ),
        ),
        child: FormBuilderDateTimePicker(
          name: name,
          inputType: inputType,
          format: DateFormat("dd/MM/yyyy"),
          decoration: InputDecoration(
              labelText: label,
              contentPadding: EdgeInsets.all(16),
              border: new OutlineInputBorder(borderSide: new BorderSide()),
              prefixIcon: Icon(
                icon,
                color: Theme.of(context).primaryColor,
              )),
          initialValue: initialValue,
          validator: validator,
          enabled: enabled,
        ),
      ),
    );
  }
}