import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_resume/app/data/datasource/cv/local/local_data_source.dart';
import 'package:my_resume/app/data/models/portfolio.dart';
import 'package:my_resume/core/exception/exceptions.dart';
import 'package:my_resume/core/exception/failures.dart';
import 'package:my_resume/core/local/local_data_reader.dart';

import 'getPortfolio.welltested_test.mocks.dart';

@GenerateMocks([LocalDataReader])
void main() {
  late LocalDataSourceImpl localDataSourceImpl;
  late MockLocalDataReader mockLocalDataReader;

  setUp(() {
    mockLocalDataReader = MockLocalDataReader();
    localDataSourceImpl = LocalDataSourceImpl(reader: mockLocalDataReader);
  });

  group('getPortfolio', () {
    final tPortfolioJson = {
      "name": "My Portfolio",
      "projects": [
        {
          "name": "UNG Mobile",
          "description": "Mobile Application",
          "image": "assets/image/portfolio/ungmobile.png",
          "link": null,
          "status": "completed"
        },
        {
          "name": "IT-Med",
          "description": "IT-Med mobile application",
          "link": null,
          "image": "assets/image/portfolio/itmed.png",
          "status": "completed"
        },
        {
          "name": "My Xabar",
          "description":
              "The mobile chat application provides users with a seamless platform to communicate with friends, family, and colleagues in real-time, anytime, anywhere. Upon opening the app, users are greeted with a clean and intuitive interface, designed for easy navigation and accessibility. The main screen typically displays a list of ongoing conversations, organized in a conversational style with contact names or group names prominently displayed. Users can easily distinguish between individual chats and group chats, with each conversation represented by a profile picture or group icon.Upon selecting a conversation, users are taken to a chat interface where they can exchange text messages, emojis, stickers. The chat bubbles are color-coded for easy identification, with timestamps indicating the time of each message.The application also offers a range of features to enhance the chatting experience, including read receipts, typing indicators, message reactions, and the ability to share location or files. Users can also customize their chat experience by setting status messages, changing chat backgrounds, or selecting different themes.Additionally, the app may include security features such as end-to-end encryption to ensure user privacy and data protection.Overall, the mobile chat application provides a convenient and versatile platform for users to stay connected, share moments, and engage in meaningful conversations with their social circle.",
          "link":
              "https://play.google.com/store/apps/details?id=com.axiydev.myxabar&pcampaignid=web_share",
          "image": "assets/image/portfolio/my_xabar.png",
          "status": "completed"
        },
        {
          "name": "Movies",
          "description":
              "The Movie Database application offers a comprehensive and immersive platform for movie lovers to discover new content, track their favorite titles, and connect with like-minded enthusiasts in a vibrant and engaging community.",
          "link": null,
          "image": "assets/image/portfolio/movies.png",
          "status": "inProgress"
        }
      ]
    }; // replace with actual json
    final tPortfolio = Portfolio.fromJson(
        tPortfolioJson); // replace with actual Portfolio object

    test(
        'should return Portfolio when the call to LocalDataReader is successful',
        () async {
      // arrange
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Right(jsonEncode(tPortfolioJson)));
      // act
      final result = await localDataSourceImpl.getPortfolio();
      // assert
      expect(result, equals(tPortfolio));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });

    test(
        'should throw CacheException when the call to LocalDataReader is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataReader.readData(any))
          .thenAnswer((_) async => Left(CacheFailure()));
      // act
      final call = localDataSourceImpl.getPortfolio;
      // assert
      expect(() => call(), throwsA(isA<CacheException>()));
      verify(mockLocalDataReader.readData(any));
      verifyNoMoreInteractions(mockLocalDataReader);
    });
  });
}
