import 'dart:ui';

import 'package:first_task/app/data/models/chat_message.dart';
import 'package:first_task/app/data/services/storage/repository.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

enum SampleItem { ar, heb, eng }

class HomeController extends GetxController {
  OrdersRepository ordersRepository;
  HomeController({required this.ordersRepository});

  final RxString code = "en".obs;
  final tabIndex = 0.obs;
  final firstWidget = 0.obs;
  List<String> designType = <String>[
    'منتج',
    'خدمة',
    'حتلنه/ تحديث',
    'دورة',
    "محتوى",
    "..آخر"
  ];
  List<String> designDimensions = <String>[
    "فلاير - طباعة",
    "فلاير- ليس طباعة",
    "تصميم سوشيل ميديا - مربع",
    "a4",
    "a3",
    "..آخر"
  ];
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  void onInit() {
    ordersRepository.readLang() == null
        ? ordersRepository.writeLang(code.value)
        : code.value = ordersRepository.readLang()!;
    super.onInit();
  }

  void changeLan(String code) {
    Locale locale = Locale(code);
    ordersRepository.writeLang(code);
    this.code.value = code;
    Get.updateLocale(locale);
  }

  void changeTab(int index) {
    tabIndex.value = index;
  }
}
