import 'package:flutter/material.dart';
import 'package:movie_db/img/images_class.dart';

class GroupListWidget extends StatelessWidget {
  const GroupListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(238, 241, 242, 243),
      child: ListView.builder(
          itemCount: 10,
          itemExtent: 100,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Stack(children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 1.0,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AddImage.groupName,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Afro-American Side Of The Moon',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text('${100000 + 12 * index} подписчиков',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    hoverColor: Colors.red,
                    borderRadius: BorderRadius.circular(7),
                    onTap: (() {}),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
