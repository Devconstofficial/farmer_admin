import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';

class TermsController extends GetxController{
  final QuillController quillController = QuillController.basic();
  final QuillController readOnlyQuillController = QuillController.basic();
  RxInt selectedIndex = 0.obs;
  RxList notifications = [].obs;
  RxList activities = [].obs;
  RxBool isEditing = false.obs,
      hasText = false.obs,
      isLoading = false.obs,
      enabledDiscardChange = false.obs,
      enabledUpdate = false.obs,
      isNotificationVisible = false.obs;
  RxString termsText = ''.obs;
  String tempText="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.";

  void toggleEditing() {
    isEditing.toggle();
    if(isEditing.value) {
      tempText=termsText.value;
      // quillController.document = Document.fromJson(termsText.value);
    } else {
      tempText = "";
    }
  }

  void onChangeIndex(int index) {
    selectedIndex.value = index;
  }


  @override
  onInit(){
    super.onInit();
    quillController.addListener(() {
      tempText = quillController.document.toDelta().toJson().first["insert"].toString().replaceAll('\n', "");
      log("===========>$tempText");
      enabledUpdate.value = tempText.isNotEmpty && termsText.value!=tempText;
      enabledDiscardChange.value = tempText.isNotEmpty && termsText.value!=tempText;
    });
  }

  @override
  void dispose() {
    quillController.removeListener((){});
    quillController.dispose();
    super.dispose();
  }

}