// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class kolar extends StatefulWidget {
  const kolar({super.key});

  @override
  State<kolar> createState() => _kolarState();
}

class _kolarState extends State<kolar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(child: Container( margin: const EdgeInsets.all(10),width: double.infinity, height: double.infinity,  child: const Text('Top-1', textAlign:TextAlign.center),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xFF60D2FC)),),),
                    Expanded(child: Container( margin: const EdgeInsets.all(10), width: double.infinity, height: double.infinity,  child: const Text('Top-2'),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xFF60D2FC)))),
                    ],
                    ),
                    ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: double.infinity,
                        child: const Text('Center-1'),
                        decoration: BoxDecoration(color: const Color(0xFF60D2FC), borderRadius: BorderRadius.circular(15)),),),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(child: Container(margin: const EdgeInsets.all(10), width: double.infinity, height: double.infinity,  child: const Text('Bootom-1'),
                            decoration: BoxDecoration(color: const Color(0xFF60D2FC),borderRadius: BorderRadius.circular(15)),)),
                            Expanded(child: Container(margin: const EdgeInsets.all(10), width: double.infinity, height: double.infinity,  child: const Text('Bottom-2'),
                            decoration: BoxDecoration(color: const Color(0xFF60D2FC), borderRadius: BorderRadius.circular(15)),)),
                            ],), ),),],),));}
}

