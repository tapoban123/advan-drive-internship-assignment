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
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                title: Text("Chair"),
                subtitle: Text("Quantity: 50"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              ),
            ),
          ),
          Container(
            height: 110,
            width: double.infinity,
            color: Colors.white10,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ).copyWith(bottom: 34),
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
