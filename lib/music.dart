//import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
//import 'package:just_audio_example/common.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sellkaro/home.dart';
import 'package:sellkaro/navbar.dart';

class music extends StatefulWidget {
  music({super.key});

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
  late AudioPlayer _audioPlayer;
  final _playlist = ConcatenatingAudioSource(children: [
    AudioSource.uri(
        Uri.parse(
            "assets/images/Ram Siya Ram.mp4"),
        tag: MediaItem(
            id: "0",
            title: "Ram Siya Ram",
            artist: "Sachet Tandon",
            artUri: Uri.parse(
                "https://images.unsplash.com/photo-1517960413843-0aee8e2b3285?q=80&w=1199&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                //"https://c.ndtvimg.com/2021-02/h8rqdcrg_tseries_625x300_22_February_21.jpg"
                ))),
    AudioSource.uri(
      Uri.parse(
          "assets/images/Hum Katha.mp4"),
      tag: MediaItem(
          id: "1",
          title: "Hum Katha Sunaate Ram",
          artist: "Ravindra Jain ,javita Krishnamurthy",
          artUri: Uri.parse(
              "https://c.saavncdn.com/082/Hum-Katha-Sunate-Ram-Sakal-Gun-Dham-Ki-Hindi-2023-20230602142650-500x500.jpg")),
    ),
    AudioSource.uri(
      Uri.parse("assets/images/Mere Ghar Ram.mp4"
        //"https://www.youtube.com/watch?v=DoOweIO2Czc"
        ),
      tag: MediaItem(
          id: "2",
          title: "Humare Ram Aye Hai",
          artist: "Sonu Nigam",
          artUri: Uri.parse(
              "https://miro.medium.com/v2/resize:fit:640/format:webp/0*mqO6qzt7IaF6N7pV.jpg", 
              )),
    ),
    
  ]);
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) =>
            PositionData(position, bufferedPosition, duration ?? Duration.zero),
      );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioPlayer = AudioPlayer();
    _init();
    //..setUrl("https://music.youtube.com/watch?v=Ixa2M_Wp2kY&si=QKF-_xBkMbLsVZCY");
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 8,
      
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 255, 139, 6),
                Colors.white
              ], // Add at least two colors
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<SequenceState?>(
                stream: _audioPlayer.sequenceStateStream,
                builder: (context, snapshot) {
                  final State = snapshot.data;
                  if (State?.sequence.isEmpty ?? true) {
                    return const SizedBox();
                  }
                  final MetaData = State!.currentSource!.tag as MediaItem;
                  return Mediametadata(
                    artist: MetaData.artist ?? "",
                    imageUrl: MetaData.artUri.toString(),
                    title: MetaData.title,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder(
                  stream: _positionDataStream,
                  builder: (context, Snapshot) {
                    final PositionData = Snapshot.data;
                    return ProgressBar(
                      barHeight: 8,
                      baseBarColor: const Color.fromARGB(255, 207, 207, 207),
                      bufferedBarColor: Colors.grey,
                      progressBarColor: Colors.red,
                      thumbColor: Colors.red,
                      timeLabelTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600,
                      ),
                      progress: PositionData?.position ?? Duration.zero,
                      buffered: PositionData?.bufferedPosition ?? Duration.zero,
                      total: PositionData?.duration ?? Duration.zero,
                      onSeek: _audioPlayer.seek,
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              control(audioPlayer: _audioPlayer)
            ],
          ),
        ),
      ),
      bottomNavigationBar: navbar(),

    );
  }
}

class PositionData {
  PositionData(
    this.position,
    this.duration,
    this.bufferedPosition,
  );
  final Duration position;
  final Duration duration;
  final Duration bufferedPosition;
}

class Mediametadata extends StatelessWidget {
  Mediametadata({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.artist,
  });
  final String title;
  final String imageUrl;
  final String artist;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
            decoration: BoxDecoration(boxShadow: [
              const BoxShadow(
                  blurRadius: 10, color: Colors.black12, offset: Offset(2, 4)),
            ], borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class control extends StatelessWidget {
  const control({super.key, required this.audioPlayer});
  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: audioPlayer.seekToPrevious,
            iconSize: 60,
            icon: const Icon(Icons.skip_previous_rounded)),
        StreamBuilder<PlayerState>(
            stream: audioPlayer.playerStateStream,
            builder: (context, Snapshot) {
              final PlayerState = Snapshot.data;
              final ProcessingState = PlayerState?.processingState;
              final Playing = PlayerState?.playing;
              if (!(Playing ?? false)) {
                return IconButton(
                    onPressed: audioPlayer.play,
                    iconSize: 60,
                    icon: const Icon(Icons.play_arrow_rounded));
              } else if (ProcessingState != ProcessingState.hashCode
                  //compla
                  ) {
                return IconButton(
                    onPressed: audioPlayer.pause,
                    iconSize: 80,
                    color: Color.fromARGB(255, 252, 0, 0),
                    icon: const Icon(Icons.pause_rounded));
              }
              return const Icon(
                Icons.play_arrow_rounded,
                size: 80,
                color: Color.fromARGB(255, 255, 255, 255),
              );
            }),
            IconButton(
            onPressed: audioPlayer.seekToNext,
            iconSize: 60,
            icon: const Icon(Icons.skip_next_rounded)),
      ],
      
    );
    
  }
}
