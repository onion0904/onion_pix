import 'package:flutter/material.dart';

class HubUI extends StatelessWidget {
  const HubUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                  SizedBox(width: 16),
                  Icon(Icons.favorite, size: 32),
                  Text("あなたにおすすめ")
              ]
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 2列に設定
              children: List.generate(64, (index) {
                return Container(
                  padding: const EdgeInsets.all(2), // 画像の周りに少し余白を追加
                  child: Image.network(
                    "https://dthezntil550i.cloudfront.net/i9/latest/i92307171113441820023299212/1280_960/326b00ed-3038-459e-96aa-a1692a925864.png",
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ),
        ],
    );
  }
}
