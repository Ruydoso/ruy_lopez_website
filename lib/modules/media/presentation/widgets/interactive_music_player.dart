import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruy_lopez_website/core/presentation/presentation.dart';
import 'package:ruy_lopez_website/core/utils/breakpoints.dart';

class _Track {
  final String title;
  final String duration;
  final String assetPath;

  _Track({
    required this.title,
    required this.duration,
    required this.assetPath,
  });
}

class InteractiveMusicPlayer extends StatefulWidget {
  const InteractiveMusicPlayer({super.key});

  @override
  State<InteractiveMusicPlayer> createState() => _InteractiveMusicPlayerState();
}

class _InteractiveMusicPlayerState extends State<InteractiveMusicPlayer> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late List<double> barHeights;

  int _currentIndex = -1;
  bool _isPlaying = false;

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;

  final List<_Track> _playlist = [
    _Track(
      title: 'ANIMADOS',
      duration: '0:24',
      assetPath: 'audio/ANIMADOS.mp3',
    ),
    _Track(
      title: 'BUSQUEDA',
      duration: '1:28',
      assetPath: 'audio/BUSQUEDA.mp3',
    ),
    _Track(title: 'CLASICO', duration: '0:32', assetPath: 'audio/CLASICO.mp3'),
    _Track(title: 'HOPE', duration: '1:04', assetPath: 'audio/hope.mp3'),
    _Track(title: 'IDEA 6', duration: '1:24', assetPath: 'audio/IDEA 6.mp3'),
    _Track(title: "MISTERY", duration: '03:40', assetPath: "audio/MISTERY.mp3"),
    _Track(
      title: 'PROYECTO MAE',
      duration: '0:55',
      assetPath: 'audio/Proyecto Mae.mp3',
    ),
    _Track(
      title: 'PROYECTO',
      duration: '2:12',
      assetPath: 'audio/Proyecto.mp3',
    ),
    _Track(
      title: "TANGO FEROZ",
      duration: '03:08',
      assetPath: "audio/TANGO FEROZ.mp3",
    ),
    _Track(
      title: 'TEMA PIANO VIEJO',
      duration: '1:48',
      assetPath: 'audio/Tema Piano Viejo.mp3',
    ),
    _Track(
      title: 'TEMA PELI',
      duration: '2:04',
      assetPath: 'audio/Tema Posible peli.mp3',
    ),
    _Track(
      title: 'YUKA COMO VA',
      duration: '1:51',
      assetPath: 'audio/YUKA COMO VA.mp3',
    ),
  ];

  @override
  void initState() {
    super.initState();

    barHeights = List.generate(250, (index) {
      final random = Random();
      final mean = 40;
      final steDev = 15;
      double u1 = random.nextDouble();
      double u2 = random.nextDouble();
      if ((u1 - 0.0).abs() < 0.00001) {
        u1 += 0.15;
      }

      double z0 = sqrt(-2.0 * log(u1)) * cos(2.0 * pi * u2);

      return (mean + (z0 * steDev)).abs();
    });

    _initAudioListeners();
  }

  void _initAudioListeners() {
    _durationSubscription = _audioPlayer.onDurationChanged.listen((d) {
      setState(() => _duration = d);
    });

    _positionSubscription = _audioPlayer.onPositionChanged.listen((p) {
      setState(() => _position = p);
    });

    _playerCompleteSubscription = _audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        _isPlaying = false;
        _position = Duration.zero;
      });
    });
  }

  @override
  void dispose() {
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playTrack(int index) async {
    try {
      if (_currentIndex == index && _isPlaying) {
        await _audioPlayer.pause();
        setState(() => _isPlaying = false);
      } else {
        await _audioPlayer.stop();
        setState(() {
          _position = Duration.zero;
          _duration = Duration.zero;
        });
        await _audioPlayer.play(AssetSource(_playlist[index].assetPath));
        setState(() {
          _currentIndex = index;
          _isPlaying = true;
        });
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<void> _togglePlayPause() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
      setState(() => _isPlaying = false);
    } else {
      if (_currentIndex == -1) {
        setState(() {
          _currentIndex = 0;
        });
      }
      await _audioPlayer.play(AssetSource(_playlist[_currentIndex].assetPath));
      setState(() => _isPlaying = true);
    }
  }

  void _seekToPosition(double tapPositionX, double totalWidth) {
    if (_duration.inMilliseconds == 0) return;

    double percentage = tapPositionX / totalWidth;
    int targetMilliseconds = (_duration.inMilliseconds * percentage).round();

    _audioPlayer.seek(Duration(milliseconds: targetMilliseconds));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width < mobileBreakPoint
          ? width * 0.9
          : width < tabletBreakPoint
          ? width * 0.65
          : width * 0.35,
      decoration: BoxDecoration(
        color: Color(0xFFF7EBF1),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: _togglePlayPause,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFF820FD).withValues(alpha: 0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          _isPlaying
                              ? 'assets/icons/icon_stop.svg'
                              : 'assets/icons/icon_play.svg',
                          colorFilter: ColorFilter.mode(
                            Colors.black,
                            BlendMode.srcIn,
                          ),
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 80,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final width = MediaQuery.of(context).size.width;
                            return GestureDetector(
                              onTapDown: (details) {
                                _seekToPosition(
                                  details.localPosition.dx,
                                  constraints.maxWidth,
                                );
                              },
                              onHorizontalDragUpdate: (details) {
                                _seekToPosition(
                                  details.localPosition.dx,
                                  constraints.maxWidth,
                                );
                              },
                              child: _buildInteractiveWaveform(
                                Colors.black,
                                constraints.maxWidth,
                                width < mobileBreakPoint
                                    ? width ~/ 5
                                    : width ~/ 12,
                              ),
                            );
                          },
                        ),
                      ),
                      RobotoText(
                        text:
                            '${(_position.inSeconds ~/ 60).toString().padLeft(2, '0')}:${(_position.inSeconds % 60).toString().padLeft(2, '0')}',
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _playlist.length,
            itemBuilder: (context, index) {
              final track = _playlist[index];
              final isCurrent = index == _currentIndex;

              return _TrackListElement(
                track: track,
                isCurrent: isCurrent,
                onTap: () => _playTrack(index),
              );
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildInteractiveWaveform(
    Color activeColor,
    double widgetWidth,
    int amount,
  ) {
    double progressPercent = 0.0;
    if (_duration.inMilliseconds > 0) {
      progressPercent = _position.inMilliseconds / _duration.inMilliseconds;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(amount, (index) {
        double barPercent = index / amount;

        bool isBarActive = progressPercent >= barPercent;

        return AnimatedContainer(
          duration: Durations.long3,
          width: 2.0,
          height: barHeights[index],
          decoration: BoxDecoration(
            color: isBarActive
                ? activeColor
                : activeColor.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(1.5),
          ),
        );
      }),
    );
  }
}

class _TrackListElement extends StatefulWidget {
  final _Track track;
  final bool isCurrent;
  final VoidCallback onTap;

  const _TrackListElement({
    required this.track,
    required this.isCurrent,
    required this.onTap,
  });

  @override
  State<_TrackListElement> createState() => _TrackListElementState();
}

class _TrackListElementState extends State<_TrackListElement> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.of(context).size.width < mobileBreakPoint;

    final trackElement = Container(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 15),
      foregroundDecoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black.withValues(alpha: 0.4),
            width: isHovering ? 1.2 : 1,
          ),
        ),
        boxShadow: isHovering
            ? [
                BoxShadow(
                  blurRadius: 17.0,
                  spreadRadius: -5,
                  offset: const Offset(0, 22),
                  color: CustomColors.lightPinkAppColor.withValues(alpha: 0.2),
                ),
              ]
            : [],
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF7EBF1),
        boxShadow: isHovering
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.25),
                  blurRadius: 5.0,
                  spreadRadius: -5,
                  offset: const Offset(0, 8.0),
                ),
              ]
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RobotoText(
            text: widget.track.title.toUpperCase(),
            color: Colors.black.withAlpha(widget.isCurrent ? 255 : 180),
            fontWeight: widget.isCurrent ? FontWeight.w900 : FontWeight.w500,
            fontSize: 14,
          ),
          RobotoText(
            text: widget.track.duration.toUpperCase(),
            color: Colors.black.withAlpha(widget.isCurrent ? 255 : 180),
            fontWeight: widget.isCurrent ? FontWeight.w900 : FontWeight.w500,
            fontSize: 10,
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 3),
      child: mobile
          ? Material(
              color: Color(0xFFF7EBF1),
              child: InkWell(onTap: widget.onTap, child: trackElement),
            )
          : MouseRegion(
              onEnter: (event) => setState(() => isHovering = true),
              onExit: (event) => setState(() => isHovering = false),
              child: GestureDetector(onTap: widget.onTap, child: trackElement),
            ),
    );
  }
}
