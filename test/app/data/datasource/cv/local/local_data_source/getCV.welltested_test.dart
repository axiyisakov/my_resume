import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/cv_model.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/local/local_data_reader.dart';

import 'getCV.welltested_test.mocks.dart';

@GenerateMocks([LocalDataReader])
void main() {
  late LocalDataSourceImpl localDataSourceImpl;
  late MockLocalDataReader mockLocalDataReader;

  setUp(() {
    mockLocalDataReader = MockLocalDataReader();
    localDataSourceImpl = LocalDataSourceImpl(reader: mockLocalDataReader);
  });

  group('getCV', () {
    test('should return CVModel when the call to LocalDataReader is successful',
        () async {
      final tCVModel = CVModel.fromJson({
        "name": "Akhmadjon Isakov",
        "image_path": "https://avatars.githubusercontent.com/u/77500000?v=4",
        "position": "Flutter Developer",
        "contact": [
          {
            "name": "Email",
            "values": ["axiyisakov@gmail.com"]
          },
          {
            "name": "Phone",
            "values": ["+998 99 830 72 18"]
          },
          {
            "name": "Address",
            "values": ["Fergana", "Tashkent", "Uzbekistan"]
          },
          {
            "name": "Telegram",
            "values": ["@axiydev"]
          }
        ],
        "education": [
          {
            "name": "University/College",
            "year": "2019-2023",
            "values": ["Tashkent University of Information Technologies"]
          },
          {
            "name": "University/College",
            "year": "2020",
            "values": ["PDP IT Academy"]
          }
        ],
        "certificates": [
          {
            "name": "PDP IT Academy",
            "year": "2020",
            "values": ["Flutter Development"]
          }
        ],
        "skills": [
          {
            "name": "Programming Languages",
            "values": ["Dart", "C++"]
          },
          {
            "name": "Frameworks",
            "values": ["Flutter"]
          },
          {
            "name": "Database",
            "values": ["Hive", "Drift", "Firebase"]
          },
          {
            "name": "Packages",
            "values": [
              "Provider",
              "GetX",
              "Bloc",
              "RxDart",
              "Elementary",
              "Navigator 2.0"
            ]
          },
          {
            "name": "Tools",
            "values": [
              "Git",
              "GitHub",
              "Gitlab",
              "VS Code",
              "IntelliJ IDEA",
              "Android Studio"
            ]
          },
          {
            "name": "Clean Code",
            "values": ["SOLID", "DRY", "KISS", "YAGNI"]
          },
          {
            "name": "Languages",
            "values": ["Uzbek", "Russian", "English"]
          }
        ],
        "working_experience": [
          {
            "name": "IT-Med",
            "year": "2020-2021",
            "values": ["Flutter Developer"]
          },
          {
            "name": "PDP IT Academy",
            "year": "2021-2022",
            "values": ["Flutter Developer", "Mentor"]
          },
          {
            "name": "Uzbekneftgaz AJ",
            "year": "2022-2023",
            "values": ["Flutter Developer", "Cross-Platform Developer"]
          }
        ],
        "professional_summary": [
          {
            "name": "Professional Summary",
            "values": [
              "I have the skills to work with a team, I can complete the given task on time and skillfully"
            ]
          }
        ]
      });

      final tCVJson = jsonEncode({
        "name": "Akhmadjon Isakov",
        "image_path": "https://avatars.githubusercontent.com/u/77500000?v=4",
        "position": "Flutter Developer",
        "contact": [
          {
            "name": "Email",
            "values": ["axiyisakov@gmail.com"]
          },
          {
            "name": "Phone",
            "values": ["+998 99 830 72 18"]
          },
          {
            "name": "Address",
            "values": ["Fergana", "Tashkent", "Uzbekistan"]
          },
          {
            "name": "Telegram",
            "values": ["@axiydev"]
          }
        ],
        "education": [
          {
            "name": "University/College",
            "year": "2019-2023",
            "values": ["Tashkent University of Information Technologies"]
          },
          {
            "name": "University/College",
            "year": "2020",
            "values": ["PDP IT Academy"]
          }
        ],
        "certificates": [
          {
            "name": "PDP IT Academy",
            "year": "2020",
            "values": ["Flutter Development"]
          }
        ],
        "skills": [
          {
            "name": "Programming Languages",
            "values": ["Dart", "C++"]
          },
          {
            "name": "Frameworks",
            "values": ["Flutter"]
          },
          {
            "name": "Database",
            "values": ["Hive", "Drift", "Firebase"]
          },
          {
            "name": "Packages",
            "values": [
              "Provider",
              "GetX",
              "Bloc",
              "RxDart",
              "Elementary",
              "Navigator 2.0"
            ]
          },
          {
            "name": "Tools",
            "values": [
              "Git",
              "GitHub",
              "Gitlab",
              "VS Code",
              "IntelliJ IDEA",
              "Android Studio"
            ]
          },
          {
            "name": "Clean Code",
            "values": ["SOLID", "DRY", "KISS", "YAGNI"]
          },
          {
            "name": "Languages",
            "values": ["Uzbek", "Russian", "English"]
          }
        ],
        "working_experience": [
          {
            "name": "IT-Med",
            "year": "2020-2021",
            "values": ["Flutter Developer"]
          },
          {
            "name": "PDP IT Academy",
            "year": "2021-2022",
            "values": ["Flutter Developer", "Mentor"]
          },
          {
            "name": "Uzbekneftgaz AJ",
            "year": "2022-2023",
            "values": ["Flutter Developer", "Cross-Platform Developer"]
          }
        ],
        "professional_summary": [
          {
            "name": "Professional Summary",
            "values": [
              "I have the skills to work with a team, I can complete the given task on time and skillfully"
            ]
          }
        ]
      });

      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Right(tCVJson));

      final result = await localDataSourceImpl.getCV();

      expect(result, equals(tCVModel));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });

    test(
        'should throw CacheException when the call to LocalDataReader is unsuccessful',
        () async {
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Left(CacheFailure()));

      final call = localDataSourceImpl.getCV;

      expect(() => call(), throwsA(isA<CacheException>()));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });
  });
}
