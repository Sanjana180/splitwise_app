import 'dart:html';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';  
import 'package:firebase_core/firebase_core.dart';
import 'package:splitwise/Stats.dart';

class FirestoreData {
Future<List<Station>> getproducts() async {
  List<Station> allproducts = [];
  await FirebaseFirestore.instance.collection("users").get().then((querySnapshot) {
    querySnapshot.docs.forEach((result) {
      Station res = Station(
        First_Name: result.data()['First_Name'],
        Last_Name: result.data()['Last_Name'],
        );
        allproducts.add(res);
        });
        });
        print(allproducts);
        return allproducts;
        }
        }


