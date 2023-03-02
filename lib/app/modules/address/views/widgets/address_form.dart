import 'package:flutter/material.dart';

import 'address_field_with_label.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AddressFieldWithLabel(
            labelText: 'Country or region',
            child: DropdownButtonFormField(
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              items: [
                DropdownMenuItem(value: 0, child: Text('United State')),
                DropdownMenuItem(value: 1, child: Text('Viet Nam')),
              ],
              onChanged: (val) {},
            ),
          ),
          AddressFieldWithLabel(
            labelText: 'First Name',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'Last Name',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'Street Address',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'Street Address 2 (Optional)',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'City',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'State/Province/Region',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'Zip Code',
            child: TextFormField(),
          ),
          AddressFieldWithLabel(
            labelText: 'Phone Number',
            padding: EdgeInsets.zero,
            child: TextFormField(),
          ),
        ],
      ),
    );
  }
}
