import 'package:flutter/material.dart';
import 'package:request_handling_app/view/widgets/custom_button.dart';

class ConfirmRequestScreen extends StatelessWidget {
  const ConfirmRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Request"), centerTitle: true),
      body: Column(
        children: [
          ListTile(
            title: Text("Chair"),
            subtitle: Text("Quantity: 50"),
            trailing: Checkbox(value: false, onChanged: (value) {}),
          ),
          Spacer(),
          Container(
            height: 110,
            width: double.infinity,
            color: Colors.white10,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: CustomButton(
              onTap: () {},
              bgColor: Colors.orange,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
