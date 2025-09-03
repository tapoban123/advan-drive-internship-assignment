import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_handling_app/controller/review_request_controller.dart';
import 'package:request_handling_app/models/item_model.dart';
import 'package:request_handling_app/view/widgets/custom_button.dart';
import 'package:request_handling_app/view/widgets/custom_text_field.dart';
import 'package:request_handling_app/view/widgets/item_card.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController itemNameController = TextEditingController();
    final TextEditingController itemQuantityController =
        TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(title: Text("Create Request"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(top: 14),
        child: Center(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      labelText: "Item Name",
                      textControlller: itemNameController,
                    ),
                    SizedBox(height: 12),
                    CustomTextField(
                      labelText: "Quantity",
                      textControlller: itemQuantityController,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36),
              Consumer(
                builder: (context, ref, child) => CustomButton(
                  bgColor: Colors.deepOrange,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      ref
                          .read(reviewRequestControllerProvider.notifier)
                          .addItem(
                            ItemModel(
                              name: itemNameController.text.trim(),
                              quantity: int.parse(
                                itemQuantityController.text.trim(),
                              ),
                            ),
                          );
                    }
                  },
                  child: Row(
                    spacing: 12,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text("Add Item", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Divider(),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final requestData = ref.watch(
                    reviewRequestControllerProvider,
                  );
                  if (requestData.isEmpty) {
                    return SizedBox.shrink();
                  }

                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Review Request:", style: TextStyle(fontSize: 18)),
                        Expanded(
                          child: ListView.builder(
                            itemCount: requestData.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final request = requestData[index];

                              return ListTile(
                                title: Text(request.name),
                                subtitle: Text("Quantity: ${request.quantity}"),
                                trailing: GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(
                                          reviewRequestControllerProvider
                                              .notifier,
                                        )
                                        .removeItem(index);
                                  },
                                  child: Icon(Icons.remove_circle_outline),
                                ),
                              );
                            },
                          ),
                        ),
                        SafeArea(
                          bottom: true,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: CustomButton(
                              onTap: () {
                                ref
                                    .read(
                                      reviewRequestControllerProvider.notifier,
                                    )
                                    .submitRequest();
                                ref.invalidate(reviewRequestControllerProvider);

                                Navigator.of(context).pop();
                              },
                              bgColor: Colors.green,
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
