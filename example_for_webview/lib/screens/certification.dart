import 'package:flutter/material.dart';

import 'package:iamport_flutter/iamport_certification.dart';
import 'package:iamport_flutter/model/certification_data.dart';

class Certification extends StatelessWidget {
  static const String userCode = 'imp10391932';

  @override
  Widget build(BuildContext context) {
    CertificationData data = ModalRoute.of(context).settings.arguments;

    return IamportCertification(
      appBar: new AppBar(
        title: new Text('아임포트 본인인증'),
      ),
      userCode: userCode,
      data: data,
      callback: (Map<String, String> result) {
        Navigator.pushReplacementNamed(
          context,
          '/',
          arguments: result,
        );
      },
    );
  }
}