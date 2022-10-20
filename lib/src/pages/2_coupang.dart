import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoupangPage extends StatelessWidget {
  const CoupangPage({super.key});

  Widget _historyBox(String date) {
    return Center(
      child: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Center(
          child: Text(
            '$date',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '닭가슴살 마켓',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // controller: controller,
        child: Column(
          children: [
            SingleChildScrollView(
                // controller: controller,
                child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                        color: Colors.white,
                      )),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNtIBcxB3EEKKj-lZvDaFoJxED9v3fbC6-LQ&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('닭가슴살 미쳤닭',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 50,
                          ),
                          Text('가격 : 1000원',
                              style: TextStyle(color: Colors.white)),
                          Text('제공사 (Coupang)',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ]),
                _historyBox('닭가슴살 상품 1'),
                _historyBox('닭가슴살 상품 2'),
                _historyBox('프로틴 1'),
                _historyBox('프로틴 2'),
                _historyBox('프로틴 3'),
                _historyBox('프로틴 4'),
                _historyBox('스트랩 1'),
                _historyBox('스트랩 2'),
                _historyBox('프로틴 드링크 1'),
                _historyBox('프로틴 드링크 2'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
