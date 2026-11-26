package androidx.compose.ui.input.key;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.tracing.Trace;
import defpackage.jh2;
import defpackage.r01;
import defpackage.ul2;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes2.dex */
public final class Key {
    private final long keyCode;
    public static final Companion Companion = new Companion(null);
    private static final long Unknown = Key_androidKt.Key(0);
    private static final long SoftLeft = Key_androidKt.Key(1);
    private static final long SoftRight = Key_androidKt.Key(2);
    private static final long Home = Key_androidKt.Key(3);
    private static final long SystemHome = Key_androidKt.Key(3);
    private static final long Back = Key_androidKt.Key(4);
    private static final long Help = Key_androidKt.Key(259);
    private static final long NavigatePrevious = Key_androidKt.Key(260);
    private static final long NavigateNext = Key_androidKt.Key(261);
    private static final long NavigateIn = Key_androidKt.Key(262);
    private static final long NavigateOut = Key_androidKt.Key(263);
    private static final long SystemNavigationUp = Key_androidKt.Key(280);
    private static final long SystemNavigationDown = Key_androidKt.Key(281);
    private static final long SystemNavigationLeft = Key_androidKt.Key(282);
    private static final long SystemNavigationRight = Key_androidKt.Key(283);
    private static final long Call = Key_androidKt.Key(5);
    private static final long EndCall = Key_androidKt.Key(6);
    private static final long DirectionUp = Key_androidKt.Key(19);
    private static final long DirectionDown = Key_androidKt.Key(20);
    private static final long DirectionLeft = Key_androidKt.Key(21);
    private static final long DirectionRight = Key_androidKt.Key(22);
    private static final long DirectionCenter = Key_androidKt.Key(23);
    private static final long DirectionUpLeft = Key_androidKt.Key(268);
    private static final long DirectionDownLeft = Key_androidKt.Key(269);
    private static final long DirectionUpRight = Key_androidKt.Key(270);
    private static final long DirectionDownRight = Key_androidKt.Key(271);
    private static final long VolumeUp = Key_androidKt.Key(24);
    private static final long VolumeDown = Key_androidKt.Key(25);
    private static final long Power = Key_androidKt.Key(26);
    private static final long Camera = Key_androidKt.Key(27);
    private static final long Clear = Key_androidKt.Key(28);
    private static final long Zero = Key_androidKt.Key(7);
    private static final long One = Key_androidKt.Key(8);
    private static final long Two = Key_androidKt.Key(9);
    private static final long Three = Key_androidKt.Key(10);
    private static final long Four = Key_androidKt.Key(11);
    private static final long Five = Key_androidKt.Key(12);
    private static final long Six = Key_androidKt.Key(13);
    private static final long Seven = Key_androidKt.Key(14);
    private static final long Eight = Key_androidKt.Key(15);
    private static final long Nine = Key_androidKt.Key(16);
    private static final long Plus = Key_androidKt.Key(81);
    private static final long Minus = Key_androidKt.Key(69);
    private static final long Multiply = Key_androidKt.Key(17);
    private static final long Equals = Key_androidKt.Key(70);
    private static final long Pound = Key_androidKt.Key(18);
    private static final long A = Key_androidKt.Key(29);
    private static final long B = Key_androidKt.Key(30);
    private static final long C = Key_androidKt.Key(31);
    private static final long D = Key_androidKt.Key(32);
    private static final long E = Key_androidKt.Key(33);
    private static final long F = Key_androidKt.Key(34);
    private static final long G = Key_androidKt.Key(35);
    private static final long H = Key_androidKt.Key(36);
    private static final long I = Key_androidKt.Key(37);
    private static final long J = Key_androidKt.Key(38);
    private static final long K = Key_androidKt.Key(39);
    private static final long L = Key_androidKt.Key(40);
    private static final long M = Key_androidKt.Key(41);
    private static final long N = Key_androidKt.Key(42);
    private static final long O = Key_androidKt.Key(43);
    private static final long P = Key_androidKt.Key(44);
    private static final long Q = Key_androidKt.Key(45);
    private static final long R = Key_androidKt.Key(46);
    private static final long S = Key_androidKt.Key(47);
    private static final long T = Key_androidKt.Key(48);
    private static final long U = Key_androidKt.Key(49);
    private static final long V = Key_androidKt.Key(50);
    private static final long W = Key_androidKt.Key(51);
    private static final long X = Key_androidKt.Key(52);
    private static final long Y = Key_androidKt.Key(53);
    private static final long Z = Key_androidKt.Key(54);
    private static final long Comma = Key_androidKt.Key(55);
    private static final long Period = Key_androidKt.Key(56);
    private static final long AltLeft = Key_androidKt.Key(57);
    private static final long AltRight = Key_androidKt.Key(58);
    private static final long ShiftLeft = Key_androidKt.Key(59);
    private static final long ShiftRight = Key_androidKt.Key(60);
    private static final long Tab = Key_androidKt.Key(61);
    private static final long Spacebar = Key_androidKt.Key(62);
    private static final long Symbol = Key_androidKt.Key(63);
    private static final long Browser = Key_androidKt.Key(64);
    private static final long Envelope = Key_androidKt.Key(65);
    private static final long Enter = Key_androidKt.Key(66);
    private static final long Backspace = Key_androidKt.Key(67);
    private static final long Delete = Key_androidKt.Key(112);
    private static final long Escape = Key_androidKt.Key(111);
    private static final long CtrlLeft = Key_androidKt.Key(113);
    private static final long CtrlRight = Key_androidKt.Key(114);
    private static final long CapsLock = Key_androidKt.Key(115);
    private static final long ScrollLock = Key_androidKt.Key(116);
    private static final long MetaLeft = Key_androidKt.Key(117);
    private static final long MetaRight = Key_androidKt.Key(118);
    private static final long Function = Key_androidKt.Key(119);
    private static final long PrintScreen = Key_androidKt.Key(120);
    private static final long Break = Key_androidKt.Key(121);
    private static final long MoveHome = Key_androidKt.Key(122);
    private static final long MoveEnd = Key_androidKt.Key(123);
    private static final long Insert = Key_androidKt.Key(124);
    private static final long Cut = Key_androidKt.Key(277);
    private static final long Copy = Key_androidKt.Key(278);
    private static final long Paste = Key_androidKt.Key(279);
    private static final long Grave = Key_androidKt.Key(68);
    private static final long LeftBracket = Key_androidKt.Key(71);
    private static final long RightBracket = Key_androidKt.Key(72);
    private static final long Slash = Key_androidKt.Key(76);
    private static final long Backslash = Key_androidKt.Key(73);
    private static final long Semicolon = Key_androidKt.Key(74);
    private static final long Apostrophe = Key_androidKt.Key(75);
    private static final long At = Key_androidKt.Key(77);
    private static final long Number = Key_androidKt.Key(78);
    private static final long HeadsetHook = Key_androidKt.Key(79);
    private static final long Focus = Key_androidKt.Key(80);
    private static final long Menu = Key_androidKt.Key(82);
    private static final long Notification = Key_androidKt.Key(83);
    private static final long Search = Key_androidKt.Key(84);
    private static final long PageUp = Key_androidKt.Key(92);
    private static final long PageDown = Key_androidKt.Key(93);
    private static final long PictureSymbols = Key_androidKt.Key(94);
    private static final long SwitchCharset = Key_androidKt.Key(95);
    private static final long ButtonA = Key_androidKt.Key(96);
    private static final long ButtonB = Key_androidKt.Key(97);
    private static final long ButtonC = Key_androidKt.Key(98);
    private static final long ButtonX = Key_androidKt.Key(99);
    private static final long ButtonY = Key_androidKt.Key(100);
    private static final long ButtonZ = Key_androidKt.Key(TypedValues.TYPE_TARGET);
    private static final long ButtonL1 = Key_androidKt.Key(102);
    private static final long ButtonR1 = Key_androidKt.Key(103);
    private static final long ButtonL2 = Key_androidKt.Key(104);
    private static final long ButtonR2 = Key_androidKt.Key(105);
    private static final long ButtonThumbLeft = Key_androidKt.Key(106);
    private static final long ButtonThumbRight = Key_androidKt.Key(107);
    private static final long ButtonStart = Key_androidKt.Key(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
    private static final long ButtonSelect = Key_androidKt.Key(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
    private static final long ButtonMode = Key_androidKt.Key(110);
    private static final long Button1 = Key_androidKt.Key(TsExtractor.TS_PACKET_SIZE);
    private static final long Button2 = Key_androidKt.Key(PsExtractor.PRIVATE_STREAM_1);
    private static final long Button3 = Key_androidKt.Key(190);
    private static final long Button4 = Key_androidKt.Key(191);
    private static final long Button5 = Key_androidKt.Key(PsExtractor.AUDIO_STREAM);
    private static final long Button6 = Key_androidKt.Key(193);
    private static final long Button7 = Key_androidKt.Key(194);
    private static final long Button8 = Key_androidKt.Key(195);
    private static final long Button9 = Key_androidKt.Key(196);
    private static final long Button10 = Key_androidKt.Key(197);
    private static final long Button11 = Key_androidKt.Key(198);
    private static final long Button12 = Key_androidKt.Key(199);
    private static final long Button13 = Key_androidKt.Key(200);
    private static final long Button14 = Key_androidKt.Key(ComposerKt.providerKey);
    private static final long Button15 = Key_androidKt.Key(ComposerKt.compositionLocalMapKey);
    private static final long Button16 = Key_androidKt.Key(ComposerKt.providerValuesKey);
    private static final long Forward = Key_androidKt.Key(GapComposerKt.nodeKey);
    private static final long F1 = Key_androidKt.Key(WebmConstants.MkvEbmlElement.TRACK_TYPE);
    private static final long F2 = Key_androidKt.Key(132);
    private static final long F3 = Key_androidKt.Key(133);
    private static final long F4 = Key_androidKt.Key(134);
    private static final long F5 = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_E_AC3);
    private static final long F6 = Key_androidKt.Key(136);
    private static final long F7 = Key_androidKt.Key(137);
    private static final long F8 = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_DTS);
    private static final long F9 = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_DTS_UHD);
    private static final long F10 = Key_androidKt.Key(ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA);
    private static final long F11 = Key_androidKt.Key(ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA);
    private static final long F12 = Key_androidKt.Key(142);
    private static final long NumLock = Key_androidKt.Key(143);
    private static final long NumPad0 = Key_androidKt.Key(144);
    private static final long NumPad1 = Key_androidKt.Key(145);
    private static final long NumPad2 = Key_androidKt.Key(146);
    private static final long NumPad3 = Key_androidKt.Key(147);
    private static final long NumPad4 = Key_androidKt.Key(148);
    private static final long NumPad5 = Key_androidKt.Key(149);
    private static final long NumPad6 = Key_androidKt.Key(150);
    private static final long NumPad7 = Key_androidKt.Key(151);
    private static final long NumPad8 = Key_androidKt.Key(152);
    private static final long NumPad9 = Key_androidKt.Key(153);
    private static final long NumPadDivide = Key_androidKt.Key(WebmConstants.MkvEbmlElement.FLAG_INTERLACED);
    private static final long NumPadMultiply = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK_DURATION);
    private static final long NumPadSubtract = Key_androidKt.Key(156);
    private static final long NumPadAdd = Key_androidKt.Key(ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384);
    private static final long NumPadDot = Key_androidKt.Key(158);
    private static final long NumPadComma = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CHANNELS);
    private static final long NumPadEnter = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK_GROUP);
    private static final long NumPadEquals = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK);
    private static final long NumPadLeftParenthesis = Key_androidKt.Key(162);
    private static final long NumPadRightParenthesis = Key_androidKt.Key(WebmConstants.MkvEbmlElement.SIMPLE_BLOCK);
    private static final long MediaPlay = Key_androidKt.Key(126);
    private static final long MediaPause = Key_androidKt.Key(Trace.MAX_TRACE_LABEL_LENGTH);
    private static final long MediaPlayPause = Key_androidKt.Key(85);
    private static final long MediaStop = Key_androidKt.Key(86);
    private static final long MediaRecord = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
    private static final long MediaNext = Key_androidKt.Key(87);
    private static final long MediaPrevious = Key_androidKt.Key(88);
    private static final long MediaRewind = Key_androidKt.Key(89);
    private static final long MediaFastForward = Key_androidKt.Key(90);
    private static final long MediaClose = Key_androidKt.Key(128);
    private static final long MediaAudioTrack = Key_androidKt.Key(222);
    private static final long MediaEject = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_AC3);
    private static final long MediaTopMenu = Key_androidKt.Key(226);
    private static final long MediaSkipForward = Key_androidKt.Key(272);
    private static final long MediaSkipBackward = Key_androidKt.Key(273);
    private static final long MediaStepForward = Key_androidKt.Key(274);
    private static final long MediaStepBackward = Key_androidKt.Key(275);
    private static final long MicrophoneMute = Key_androidKt.Key(91);
    private static final long VolumeMute = Key_androidKt.Key(164);
    private static final long Info = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL);
    private static final long ChannelUp = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK_MORE);
    private static final long ChannelDown = Key_androidKt.Key(167);
    private static final long ZoomIn = Key_androidKt.Key(168);
    private static final long ZoomOut = Key_androidKt.Key(169);
    private static final long Tv = Key_androidKt.Key(170);
    private static final long Window = Key_androidKt.Key(WebmConstants.MkvEbmlElement.PREV_SIZE);
    private static final long Guide = Key_androidKt.Key(TsExtractor.TS_STREAM_TYPE_AC4);
    private static final long Dvr = Key_androidKt.Key(173);
    private static final long Bookmark = Key_androidKt.Key(WebmConstants.MkvEbmlElement.TRACK_ENTRY);
    private static final long Captions = Key_androidKt.Key(175);
    private static final long Settings = Key_androidKt.Key(WebmConstants.MkvEbmlElement.PIXEL_WIDTH);
    private static final long TvPower = Key_androidKt.Key(177);
    private static final long TvInput = Key_androidKt.Key(178);
    private static final long SetTopBoxPower = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CUE_TIME);
    private static final long SetTopBoxInput = Key_androidKt.Key(180);
    private static final long AvReceiverPower = Key_androidKt.Key(WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY);
    private static final long AvReceiverInput = Key_androidKt.Key(182);
    private static final long ProgramRed = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS);
    private static final long ProgramGreen = Key_androidKt.Key(184);
    private static final long ProgramYellow = Key_androidKt.Key(185);
    private static final long ProgramBlue = Key_androidKt.Key(WebmConstants.MkvEbmlElement.PIXEL_HEIGHT);
    private static final long AppSwitch = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CUE_POINT);
    private static final long LanguageSwitch = Key_androidKt.Key(204);
    private static final long MannerMode = Key_androidKt.Key(205);
    private static final long Toggle2D3D = Key_androidKt.Key(ComposerKt.referenceKey);
    private static final long Contacts = Key_androidKt.Key(ComposerKt.reuseKey);
    private static final long Calendar = Key_androidKt.Key(208);
    private static final long Music = Key_androidKt.Key(209);
    private static final long Calculator = Key_androidKt.Key(210);
    private static final long ZenkakuHankaru = Key_androidKt.Key(211);
    private static final long Eisu = Key_androidKt.Key(212);
    private static final long Muhenkan = Key_androidKt.Key(213);
    private static final long Henkan = Key_androidKt.Key(214);
    private static final long KatakanaHiragana = Key_androidKt.Key(WebmConstants.MkvEbmlElement.TRACK_NUMBER);
    private static final long Yen = Key_androidKt.Key(216);
    private static final long Ro = Key_androidKt.Key(217);
    private static final long Kana = Key_androidKt.Key(218);
    private static final long Assist = Key_androidKt.Key(219);
    private static final long BrightnessDown = Key_androidKt.Key(220);
    private static final long BrightnessUp = Key_androidKt.Key(221);
    private static final long Sleep = Key_androidKt.Key(223);
    private static final long WakeUp = Key_androidKt.Key(224);
    private static final long SoftSleep = Key_androidKt.Key(276);
    private static final long Pairing = Key_androidKt.Key(WebmConstants.MkvEbmlElement.AUDIO);
    private static final long LastChannel = Key_androidKt.Key(229);
    private static final long TvDataService = Key_androidKt.Key(230);
    private static final long VoiceAssist = Key_androidKt.Key(WebmConstants.MkvEbmlElement.TIMESTAMP);
    private static final long TvRadioService = Key_androidKt.Key(232);
    private static final long TvTeletext = Key_androidKt.Key(233);
    private static final long TvNumberEntry = Key_androidKt.Key(234);
    private static final long TvTerrestrialAnalog = Key_androidKt.Key(235);
    private static final long TvTerrestrialDigital = Key_androidKt.Key(WebmConstants.MkvEbmlElement.VOID);
    private static final long TvSatellite = Key_androidKt.Key(237);
    private static final long TvSatelliteBs = Key_androidKt.Key(WebmConstants.MkvEbmlElement.BLOCK_ADD_ID);
    private static final long TvSatelliteCs = Key_androidKt.Key(239);
    private static final long TvSatelliteService = Key_androidKt.Key(PsExtractor.VIDEO_STREAM_MASK);
    private static final long TvNetwork = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION);
    private static final long TvAntennaCable = Key_androidKt.Key(242);
    private static final long TvInputHdmi1 = Key_androidKt.Key(243);
    private static final long TvInputHdmi2 = Key_androidKt.Key(244);
    private static final long TvInputHdmi3 = Key_androidKt.Key(245);
    private static final long TvInputHdmi4 = Key_androidKt.Key(246);
    private static final long TvInputComposite1 = Key_androidKt.Key(WebmConstants.MkvEbmlElement.CUE_TRACK);
    private static final long TvInputComposite2 = Key_androidKt.Key(248);
    private static final long TvInputComponent1 = Key_androidKt.Key(249);
    private static final long TvInputComponent2 = Key_androidKt.Key(250);
    private static final long TvInputVga1 = Key_androidKt.Key(WebmConstants.MkvEbmlElement.REFERENCE_BLOCK);
    private static final long TvAudioDescription = Key_androidKt.Key(252);
    private static final long TvAudioDescriptionMixingVolumeUp = Key_androidKt.Key(253);
    private static final long TvAudioDescriptionMixingVolumeDown = Key_androidKt.Key(254);
    private static final long TvZoomMode = Key_androidKt.Key(255);
    private static final long TvContentsMenu = Key_androidKt.Key(256);
    private static final long TvMediaContextMenu = Key_androidKt.Key(257);
    private static final long TvTimerProgramming = Key_androidKt.Key(258);
    private static final long StemPrimary = Key_androidKt.Key(264);
    private static final long Stem1 = Key_androidKt.Key(265);
    private static final long Stem2 = Key_androidKt.Key(266);
    private static final long Stem3 = Key_androidKt.Key(267);
    private static final long AllApps = Key_androidKt.Key(284);
    private static final long Refresh = Key_androidKt.Key(285);
    private static final long ThumbsUp = Key_androidKt.Key(286);
    private static final long ThumbsDown = Key_androidKt.Key(287);
    private static final long ProfileSwitch = Key_androidKt.Key(288);
    private static final long NumPadDirectionUp = Key_androidKt.Key(-1000000001);
    private static final long NumPadDirectionDown = Key_androidKt.Key(-1000000002);
    private static final long NumPadDirectionLeft = Key_androidKt.Key(-1000000003);
    private static final long NumPadDirectionRight = Key_androidKt.Key(-1000000004);
    private static final long NumPadMoveHome = Key_androidKt.Key(-1000000005);
    private static final long NumPadMoveEnd = Key_androidKt.Key(-1000000006);
    private static final long NumPadPageUp = Key_androidKt.Key(-1000000007);
    private static final long NumPadPageDown = Key_androidKt.Key(-1000000008);
    private static final long NumPadInsert = Key_androidKt.Key(-1000000009);
    private static final long NumPadDelete = Key_androidKt.Key(-1000000010);

    private /* synthetic */ Key(long j) {
        this.keyCode = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Key m7078boximpl(long j) {
        return new Key(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m7079constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7080equalsimpl(long j, Object obj) {
        return (obj instanceof Key) && j == ((Key) obj).m7084unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7081equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7082hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7083toStringimpl(long j) {
        return r01.c(j, "Key code: ");
    }

    public boolean equals(Object obj) {
        return m7080equalsimpl(this.keyCode, obj);
    }

    public final long getKeyCode() {
        return this.keyCode;
    }

    public int hashCode() {
        return m7082hashCodeimpl(this.keyCode);
    }

    public String toString() {
        return m7083toStringimpl(this.keyCode);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m7084unboximpl() {
        return this.keyCode;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @ul2
        /* JADX INFO: renamed from: getHome-EK5gGoQ$annotations, reason: not valid java name */
        public static /* synthetic */ void m7085getHomeEK5gGoQ$annotations() {
        }

        /* JADX INFO: renamed from: getA-EK5gGoQ, reason: not valid java name */
        public final long m7086getAEK5gGoQ() {
            return Key.A;
        }

        /* JADX INFO: renamed from: getAllApps-EK5gGoQ, reason: not valid java name */
        public final long m7087getAllAppsEK5gGoQ() {
            return Key.AllApps;
        }

        /* JADX INFO: renamed from: getAltLeft-EK5gGoQ, reason: not valid java name */
        public final long m7088getAltLeftEK5gGoQ() {
            return Key.AltLeft;
        }

        /* JADX INFO: renamed from: getAltRight-EK5gGoQ, reason: not valid java name */
        public final long m7089getAltRightEK5gGoQ() {
            return Key.AltRight;
        }

        /* JADX INFO: renamed from: getApostrophe-EK5gGoQ, reason: not valid java name */
        public final long m7090getApostropheEK5gGoQ() {
            return Key.Apostrophe;
        }

        /* JADX INFO: renamed from: getAppSwitch-EK5gGoQ, reason: not valid java name */
        public final long m7091getAppSwitchEK5gGoQ() {
            return Key.AppSwitch;
        }

        /* JADX INFO: renamed from: getAssist-EK5gGoQ, reason: not valid java name */
        public final long m7092getAssistEK5gGoQ() {
            return Key.Assist;
        }

        /* JADX INFO: renamed from: getAt-EK5gGoQ, reason: not valid java name */
        public final long m7093getAtEK5gGoQ() {
            return Key.At;
        }

        /* JADX INFO: renamed from: getAvReceiverInput-EK5gGoQ, reason: not valid java name */
        public final long m7094getAvReceiverInputEK5gGoQ() {
            return Key.AvReceiverInput;
        }

        /* JADX INFO: renamed from: getAvReceiverPower-EK5gGoQ, reason: not valid java name */
        public final long m7095getAvReceiverPowerEK5gGoQ() {
            return Key.AvReceiverPower;
        }

        /* JADX INFO: renamed from: getB-EK5gGoQ, reason: not valid java name */
        public final long m7096getBEK5gGoQ() {
            return Key.B;
        }

        /* JADX INFO: renamed from: getBack-EK5gGoQ, reason: not valid java name */
        public final long m7097getBackEK5gGoQ() {
            return Key.Back;
        }

        /* JADX INFO: renamed from: getBackslash-EK5gGoQ, reason: not valid java name */
        public final long m7098getBackslashEK5gGoQ() {
            return Key.Backslash;
        }

        /* JADX INFO: renamed from: getBackspace-EK5gGoQ, reason: not valid java name */
        public final long m7099getBackspaceEK5gGoQ() {
            return Key.Backspace;
        }

        /* JADX INFO: renamed from: getBookmark-EK5gGoQ, reason: not valid java name */
        public final long m7100getBookmarkEK5gGoQ() {
            return Key.Bookmark;
        }

        /* JADX INFO: renamed from: getBreak-EK5gGoQ, reason: not valid java name */
        public final long m7101getBreakEK5gGoQ() {
            return Key.Break;
        }

        /* JADX INFO: renamed from: getBrightnessDown-EK5gGoQ, reason: not valid java name */
        public final long m7102getBrightnessDownEK5gGoQ() {
            return Key.BrightnessDown;
        }

        /* JADX INFO: renamed from: getBrightnessUp-EK5gGoQ, reason: not valid java name */
        public final long m7103getBrightnessUpEK5gGoQ() {
            return Key.BrightnessUp;
        }

        /* JADX INFO: renamed from: getBrowser-EK5gGoQ, reason: not valid java name */
        public final long m7104getBrowserEK5gGoQ() {
            return Key.Browser;
        }

        /* JADX INFO: renamed from: getButton1-EK5gGoQ, reason: not valid java name */
        public final long m7105getButton1EK5gGoQ() {
            return Key.Button1;
        }

        /* JADX INFO: renamed from: getButton10-EK5gGoQ, reason: not valid java name */
        public final long m7106getButton10EK5gGoQ() {
            return Key.Button10;
        }

        /* JADX INFO: renamed from: getButton11-EK5gGoQ, reason: not valid java name */
        public final long m7107getButton11EK5gGoQ() {
            return Key.Button11;
        }

        /* JADX INFO: renamed from: getButton12-EK5gGoQ, reason: not valid java name */
        public final long m7108getButton12EK5gGoQ() {
            return Key.Button12;
        }

        /* JADX INFO: renamed from: getButton13-EK5gGoQ, reason: not valid java name */
        public final long m7109getButton13EK5gGoQ() {
            return Key.Button13;
        }

        /* JADX INFO: renamed from: getButton14-EK5gGoQ, reason: not valid java name */
        public final long m7110getButton14EK5gGoQ() {
            return Key.Button14;
        }

        /* JADX INFO: renamed from: getButton15-EK5gGoQ, reason: not valid java name */
        public final long m7111getButton15EK5gGoQ() {
            return Key.Button15;
        }

        /* JADX INFO: renamed from: getButton16-EK5gGoQ, reason: not valid java name */
        public final long m7112getButton16EK5gGoQ() {
            return Key.Button16;
        }

        /* JADX INFO: renamed from: getButton2-EK5gGoQ, reason: not valid java name */
        public final long m7113getButton2EK5gGoQ() {
            return Key.Button2;
        }

        /* JADX INFO: renamed from: getButton3-EK5gGoQ, reason: not valid java name */
        public final long m7114getButton3EK5gGoQ() {
            return Key.Button3;
        }

        /* JADX INFO: renamed from: getButton4-EK5gGoQ, reason: not valid java name */
        public final long m7115getButton4EK5gGoQ() {
            return Key.Button4;
        }

        /* JADX INFO: renamed from: getButton5-EK5gGoQ, reason: not valid java name */
        public final long m7116getButton5EK5gGoQ() {
            return Key.Button5;
        }

        /* JADX INFO: renamed from: getButton6-EK5gGoQ, reason: not valid java name */
        public final long m7117getButton6EK5gGoQ() {
            return Key.Button6;
        }

        /* JADX INFO: renamed from: getButton7-EK5gGoQ, reason: not valid java name */
        public final long m7118getButton7EK5gGoQ() {
            return Key.Button7;
        }

        /* JADX INFO: renamed from: getButton8-EK5gGoQ, reason: not valid java name */
        public final long m7119getButton8EK5gGoQ() {
            return Key.Button8;
        }

        /* JADX INFO: renamed from: getButton9-EK5gGoQ, reason: not valid java name */
        public final long m7120getButton9EK5gGoQ() {
            return Key.Button9;
        }

        /* JADX INFO: renamed from: getButtonA-EK5gGoQ, reason: not valid java name */
        public final long m7121getButtonAEK5gGoQ() {
            return Key.ButtonA;
        }

        /* JADX INFO: renamed from: getButtonB-EK5gGoQ, reason: not valid java name */
        public final long m7122getButtonBEK5gGoQ() {
            return Key.ButtonB;
        }

        /* JADX INFO: renamed from: getButtonC-EK5gGoQ, reason: not valid java name */
        public final long m7123getButtonCEK5gGoQ() {
            return Key.ButtonC;
        }

        /* JADX INFO: renamed from: getButtonL1-EK5gGoQ, reason: not valid java name */
        public final long m7124getButtonL1EK5gGoQ() {
            return Key.ButtonL1;
        }

        /* JADX INFO: renamed from: getButtonL2-EK5gGoQ, reason: not valid java name */
        public final long m7125getButtonL2EK5gGoQ() {
            return Key.ButtonL2;
        }

        /* JADX INFO: renamed from: getButtonMode-EK5gGoQ, reason: not valid java name */
        public final long m7126getButtonModeEK5gGoQ() {
            return Key.ButtonMode;
        }

        /* JADX INFO: renamed from: getButtonR1-EK5gGoQ, reason: not valid java name */
        public final long m7127getButtonR1EK5gGoQ() {
            return Key.ButtonR1;
        }

        /* JADX INFO: renamed from: getButtonR2-EK5gGoQ, reason: not valid java name */
        public final long m7128getButtonR2EK5gGoQ() {
            return Key.ButtonR2;
        }

        /* JADX INFO: renamed from: getButtonSelect-EK5gGoQ, reason: not valid java name */
        public final long m7129getButtonSelectEK5gGoQ() {
            return Key.ButtonSelect;
        }

        /* JADX INFO: renamed from: getButtonStart-EK5gGoQ, reason: not valid java name */
        public final long m7130getButtonStartEK5gGoQ() {
            return Key.ButtonStart;
        }

        /* JADX INFO: renamed from: getButtonThumbLeft-EK5gGoQ, reason: not valid java name */
        public final long m7131getButtonThumbLeftEK5gGoQ() {
            return Key.ButtonThumbLeft;
        }

        /* JADX INFO: renamed from: getButtonThumbRight-EK5gGoQ, reason: not valid java name */
        public final long m7132getButtonThumbRightEK5gGoQ() {
            return Key.ButtonThumbRight;
        }

        /* JADX INFO: renamed from: getButtonX-EK5gGoQ, reason: not valid java name */
        public final long m7133getButtonXEK5gGoQ() {
            return Key.ButtonX;
        }

        /* JADX INFO: renamed from: getButtonY-EK5gGoQ, reason: not valid java name */
        public final long m7134getButtonYEK5gGoQ() {
            return Key.ButtonY;
        }

        /* JADX INFO: renamed from: getButtonZ-EK5gGoQ, reason: not valid java name */
        public final long m7135getButtonZEK5gGoQ() {
            return Key.ButtonZ;
        }

        /* JADX INFO: renamed from: getC-EK5gGoQ, reason: not valid java name */
        public final long m7136getCEK5gGoQ() {
            return Key.C;
        }

        /* JADX INFO: renamed from: getCalculator-EK5gGoQ, reason: not valid java name */
        public final long m7137getCalculatorEK5gGoQ() {
            return Key.Calculator;
        }

        /* JADX INFO: renamed from: getCalendar-EK5gGoQ, reason: not valid java name */
        public final long m7138getCalendarEK5gGoQ() {
            return Key.Calendar;
        }

        /* JADX INFO: renamed from: getCall-EK5gGoQ, reason: not valid java name */
        public final long m7139getCallEK5gGoQ() {
            return Key.Call;
        }

        /* JADX INFO: renamed from: getCamera-EK5gGoQ, reason: not valid java name */
        public final long m7140getCameraEK5gGoQ() {
            return Key.Camera;
        }

        /* JADX INFO: renamed from: getCapsLock-EK5gGoQ, reason: not valid java name */
        public final long m7141getCapsLockEK5gGoQ() {
            return Key.CapsLock;
        }

        /* JADX INFO: renamed from: getCaptions-EK5gGoQ, reason: not valid java name */
        public final long m7142getCaptionsEK5gGoQ() {
            return Key.Captions;
        }

        /* JADX INFO: renamed from: getChannelDown-EK5gGoQ, reason: not valid java name */
        public final long m7143getChannelDownEK5gGoQ() {
            return Key.ChannelDown;
        }

        /* JADX INFO: renamed from: getChannelUp-EK5gGoQ, reason: not valid java name */
        public final long m7144getChannelUpEK5gGoQ() {
            return Key.ChannelUp;
        }

        /* JADX INFO: renamed from: getClear-EK5gGoQ, reason: not valid java name */
        public final long m7145getClearEK5gGoQ() {
            return Key.Clear;
        }

        /* JADX INFO: renamed from: getComma-EK5gGoQ, reason: not valid java name */
        public final long m7146getCommaEK5gGoQ() {
            return Key.Comma;
        }

        /* JADX INFO: renamed from: getContacts-EK5gGoQ, reason: not valid java name */
        public final long m7147getContactsEK5gGoQ() {
            return Key.Contacts;
        }

        /* JADX INFO: renamed from: getCopy-EK5gGoQ, reason: not valid java name */
        public final long m7148getCopyEK5gGoQ() {
            return Key.Copy;
        }

        /* JADX INFO: renamed from: getCtrlLeft-EK5gGoQ, reason: not valid java name */
        public final long m7149getCtrlLeftEK5gGoQ() {
            return Key.CtrlLeft;
        }

        /* JADX INFO: renamed from: getCtrlRight-EK5gGoQ, reason: not valid java name */
        public final long m7150getCtrlRightEK5gGoQ() {
            return Key.CtrlRight;
        }

        /* JADX INFO: renamed from: getCut-EK5gGoQ, reason: not valid java name */
        public final long m7151getCutEK5gGoQ() {
            return Key.Cut;
        }

        /* JADX INFO: renamed from: getD-EK5gGoQ, reason: not valid java name */
        public final long m7152getDEK5gGoQ() {
            return Key.D;
        }

        /* JADX INFO: renamed from: getDelete-EK5gGoQ, reason: not valid java name */
        public final long m7153getDeleteEK5gGoQ() {
            return Key.Delete;
        }

        /* JADX INFO: renamed from: getDirectionCenter-EK5gGoQ, reason: not valid java name */
        public final long m7154getDirectionCenterEK5gGoQ() {
            return Key.DirectionCenter;
        }

        /* JADX INFO: renamed from: getDirectionDown-EK5gGoQ, reason: not valid java name */
        public final long m7155getDirectionDownEK5gGoQ() {
            return Key.DirectionDown;
        }

        /* JADX INFO: renamed from: getDirectionDownLeft-EK5gGoQ, reason: not valid java name */
        public final long m7156getDirectionDownLeftEK5gGoQ() {
            return Key.DirectionDownLeft;
        }

        /* JADX INFO: renamed from: getDirectionDownRight-EK5gGoQ, reason: not valid java name */
        public final long m7157getDirectionDownRightEK5gGoQ() {
            return Key.DirectionDownRight;
        }

        /* JADX INFO: renamed from: getDirectionLeft-EK5gGoQ, reason: not valid java name */
        public final long m7158getDirectionLeftEK5gGoQ() {
            return Key.DirectionLeft;
        }

        /* JADX INFO: renamed from: getDirectionRight-EK5gGoQ, reason: not valid java name */
        public final long m7159getDirectionRightEK5gGoQ() {
            return Key.DirectionRight;
        }

        /* JADX INFO: renamed from: getDirectionUp-EK5gGoQ, reason: not valid java name */
        public final long m7160getDirectionUpEK5gGoQ() {
            return Key.DirectionUp;
        }

        /* JADX INFO: renamed from: getDirectionUpLeft-EK5gGoQ, reason: not valid java name */
        public final long m7161getDirectionUpLeftEK5gGoQ() {
            return Key.DirectionUpLeft;
        }

        /* JADX INFO: renamed from: getDirectionUpRight-EK5gGoQ, reason: not valid java name */
        public final long m7162getDirectionUpRightEK5gGoQ() {
            return Key.DirectionUpRight;
        }

        /* JADX INFO: renamed from: getDvr-EK5gGoQ, reason: not valid java name */
        public final long m7163getDvrEK5gGoQ() {
            return Key.Dvr;
        }

        /* JADX INFO: renamed from: getE-EK5gGoQ, reason: not valid java name */
        public final long m7164getEEK5gGoQ() {
            return Key.E;
        }

        /* JADX INFO: renamed from: getEight-EK5gGoQ, reason: not valid java name */
        public final long m7165getEightEK5gGoQ() {
            return Key.Eight;
        }

        /* JADX INFO: renamed from: getEisu-EK5gGoQ, reason: not valid java name */
        public final long m7166getEisuEK5gGoQ() {
            return Key.Eisu;
        }

        /* JADX INFO: renamed from: getEndCall-EK5gGoQ, reason: not valid java name */
        public final long m7167getEndCallEK5gGoQ() {
            return Key.EndCall;
        }

        /* JADX INFO: renamed from: getEnter-EK5gGoQ, reason: not valid java name */
        public final long m7168getEnterEK5gGoQ() {
            return Key.Enter;
        }

        /* JADX INFO: renamed from: getEnvelope-EK5gGoQ, reason: not valid java name */
        public final long m7169getEnvelopeEK5gGoQ() {
            return Key.Envelope;
        }

        /* JADX INFO: renamed from: getEquals-EK5gGoQ, reason: not valid java name */
        public final long m7170getEqualsEK5gGoQ() {
            return Key.Equals;
        }

        /* JADX INFO: renamed from: getEscape-EK5gGoQ, reason: not valid java name */
        public final long m7171getEscapeEK5gGoQ() {
            return Key.Escape;
        }

        /* JADX INFO: renamed from: getF-EK5gGoQ, reason: not valid java name */
        public final long m7172getFEK5gGoQ() {
            return Key.F;
        }

        /* JADX INFO: renamed from: getF1-EK5gGoQ, reason: not valid java name */
        public final long m7173getF1EK5gGoQ() {
            return Key.F1;
        }

        /* JADX INFO: renamed from: getF10-EK5gGoQ, reason: not valid java name */
        public final long m7174getF10EK5gGoQ() {
            return Key.F10;
        }

        /* JADX INFO: renamed from: getF11-EK5gGoQ, reason: not valid java name */
        public final long m7175getF11EK5gGoQ() {
            return Key.F11;
        }

        /* JADX INFO: renamed from: getF12-EK5gGoQ, reason: not valid java name */
        public final long m7176getF12EK5gGoQ() {
            return Key.F12;
        }

        /* JADX INFO: renamed from: getF2-EK5gGoQ, reason: not valid java name */
        public final long m7177getF2EK5gGoQ() {
            return Key.F2;
        }

        /* JADX INFO: renamed from: getF3-EK5gGoQ, reason: not valid java name */
        public final long m7178getF3EK5gGoQ() {
            return Key.F3;
        }

        /* JADX INFO: renamed from: getF4-EK5gGoQ, reason: not valid java name */
        public final long m7179getF4EK5gGoQ() {
            return Key.F4;
        }

        /* JADX INFO: renamed from: getF5-EK5gGoQ, reason: not valid java name */
        public final long m7180getF5EK5gGoQ() {
            return Key.F5;
        }

        /* JADX INFO: renamed from: getF6-EK5gGoQ, reason: not valid java name */
        public final long m7181getF6EK5gGoQ() {
            return Key.F6;
        }

        /* JADX INFO: renamed from: getF7-EK5gGoQ, reason: not valid java name */
        public final long m7182getF7EK5gGoQ() {
            return Key.F7;
        }

        /* JADX INFO: renamed from: getF8-EK5gGoQ, reason: not valid java name */
        public final long m7183getF8EK5gGoQ() {
            return Key.F8;
        }

        /* JADX INFO: renamed from: getF9-EK5gGoQ, reason: not valid java name */
        public final long m7184getF9EK5gGoQ() {
            return Key.F9;
        }

        /* JADX INFO: renamed from: getFive-EK5gGoQ, reason: not valid java name */
        public final long m7185getFiveEK5gGoQ() {
            return Key.Five;
        }

        /* JADX INFO: renamed from: getFocus-EK5gGoQ, reason: not valid java name */
        public final long m7186getFocusEK5gGoQ() {
            return Key.Focus;
        }

        /* JADX INFO: renamed from: getForward-EK5gGoQ, reason: not valid java name */
        public final long m7187getForwardEK5gGoQ() {
            return Key.Forward;
        }

        /* JADX INFO: renamed from: getFour-EK5gGoQ, reason: not valid java name */
        public final long m7188getFourEK5gGoQ() {
            return Key.Four;
        }

        /* JADX INFO: renamed from: getFunction-EK5gGoQ, reason: not valid java name */
        public final long m7189getFunctionEK5gGoQ() {
            return Key.Function;
        }

        /* JADX INFO: renamed from: getG-EK5gGoQ, reason: not valid java name */
        public final long m7190getGEK5gGoQ() {
            return Key.G;
        }

        /* JADX INFO: renamed from: getGrave-EK5gGoQ, reason: not valid java name */
        public final long m7191getGraveEK5gGoQ() {
            return Key.Grave;
        }

        /* JADX INFO: renamed from: getGuide-EK5gGoQ, reason: not valid java name */
        public final long m7192getGuideEK5gGoQ() {
            return Key.Guide;
        }

        /* JADX INFO: renamed from: getH-EK5gGoQ, reason: not valid java name */
        public final long m7193getHEK5gGoQ() {
            return Key.H;
        }

        /* JADX INFO: renamed from: getHeadsetHook-EK5gGoQ, reason: not valid java name */
        public final long m7194getHeadsetHookEK5gGoQ() {
            return Key.HeadsetHook;
        }

        /* JADX INFO: renamed from: getHelp-EK5gGoQ, reason: not valid java name */
        public final long m7195getHelpEK5gGoQ() {
            return Key.Help;
        }

        /* JADX INFO: renamed from: getHenkan-EK5gGoQ, reason: not valid java name */
        public final long m7196getHenkanEK5gGoQ() {
            return Key.Henkan;
        }

        /* JADX INFO: renamed from: getHome-EK5gGoQ, reason: not valid java name */
        public final long m7197getHomeEK5gGoQ() {
            return Key.Home;
        }

        /* JADX INFO: renamed from: getI-EK5gGoQ, reason: not valid java name */
        public final long m7198getIEK5gGoQ() {
            return Key.I;
        }

        /* JADX INFO: renamed from: getInfo-EK5gGoQ, reason: not valid java name */
        public final long m7199getInfoEK5gGoQ() {
            return Key.Info;
        }

        /* JADX INFO: renamed from: getInsert-EK5gGoQ, reason: not valid java name */
        public final long m7200getInsertEK5gGoQ() {
            return Key.Insert;
        }

        /* JADX INFO: renamed from: getJ-EK5gGoQ, reason: not valid java name */
        public final long m7201getJEK5gGoQ() {
            return Key.J;
        }

        /* JADX INFO: renamed from: getK-EK5gGoQ, reason: not valid java name */
        public final long m7202getKEK5gGoQ() {
            return Key.K;
        }

        /* JADX INFO: renamed from: getKana-EK5gGoQ, reason: not valid java name */
        public final long m7203getKanaEK5gGoQ() {
            return Key.Kana;
        }

        /* JADX INFO: renamed from: getKatakanaHiragana-EK5gGoQ, reason: not valid java name */
        public final long m7204getKatakanaHiraganaEK5gGoQ() {
            return Key.KatakanaHiragana;
        }

        /* JADX INFO: renamed from: getL-EK5gGoQ, reason: not valid java name */
        public final long m7205getLEK5gGoQ() {
            return Key.L;
        }

        /* JADX INFO: renamed from: getLanguageSwitch-EK5gGoQ, reason: not valid java name */
        public final long m7206getLanguageSwitchEK5gGoQ() {
            return Key.LanguageSwitch;
        }

        /* JADX INFO: renamed from: getLastChannel-EK5gGoQ, reason: not valid java name */
        public final long m7207getLastChannelEK5gGoQ() {
            return Key.LastChannel;
        }

        /* JADX INFO: renamed from: getLeftBracket-EK5gGoQ, reason: not valid java name */
        public final long m7208getLeftBracketEK5gGoQ() {
            return Key.LeftBracket;
        }

        /* JADX INFO: renamed from: getM-EK5gGoQ, reason: not valid java name */
        public final long m7209getMEK5gGoQ() {
            return Key.M;
        }

        /* JADX INFO: renamed from: getMannerMode-EK5gGoQ, reason: not valid java name */
        public final long m7210getMannerModeEK5gGoQ() {
            return Key.MannerMode;
        }

        /* JADX INFO: renamed from: getMediaAudioTrack-EK5gGoQ, reason: not valid java name */
        public final long m7211getMediaAudioTrackEK5gGoQ() {
            return Key.MediaAudioTrack;
        }

        /* JADX INFO: renamed from: getMediaClose-EK5gGoQ, reason: not valid java name */
        public final long m7212getMediaCloseEK5gGoQ() {
            return Key.MediaClose;
        }

        /* JADX INFO: renamed from: getMediaEject-EK5gGoQ, reason: not valid java name */
        public final long m7213getMediaEjectEK5gGoQ() {
            return Key.MediaEject;
        }

        /* JADX INFO: renamed from: getMediaFastForward-EK5gGoQ, reason: not valid java name */
        public final long m7214getMediaFastForwardEK5gGoQ() {
            return Key.MediaFastForward;
        }

        /* JADX INFO: renamed from: getMediaNext-EK5gGoQ, reason: not valid java name */
        public final long m7215getMediaNextEK5gGoQ() {
            return Key.MediaNext;
        }

        /* JADX INFO: renamed from: getMediaPause-EK5gGoQ, reason: not valid java name */
        public final long m7216getMediaPauseEK5gGoQ() {
            return Key.MediaPause;
        }

        /* JADX INFO: renamed from: getMediaPlay-EK5gGoQ, reason: not valid java name */
        public final long m7217getMediaPlayEK5gGoQ() {
            return Key.MediaPlay;
        }

        /* JADX INFO: renamed from: getMediaPlayPause-EK5gGoQ, reason: not valid java name */
        public final long m7218getMediaPlayPauseEK5gGoQ() {
            return Key.MediaPlayPause;
        }

        /* JADX INFO: renamed from: getMediaPrevious-EK5gGoQ, reason: not valid java name */
        public final long m7219getMediaPreviousEK5gGoQ() {
            return Key.MediaPrevious;
        }

        /* JADX INFO: renamed from: getMediaRecord-EK5gGoQ, reason: not valid java name */
        public final long m7220getMediaRecordEK5gGoQ() {
            return Key.MediaRecord;
        }

        /* JADX INFO: renamed from: getMediaRewind-EK5gGoQ, reason: not valid java name */
        public final long m7221getMediaRewindEK5gGoQ() {
            return Key.MediaRewind;
        }

        /* JADX INFO: renamed from: getMediaSkipBackward-EK5gGoQ, reason: not valid java name */
        public final long m7222getMediaSkipBackwardEK5gGoQ() {
            return Key.MediaSkipBackward;
        }

        /* JADX INFO: renamed from: getMediaSkipForward-EK5gGoQ, reason: not valid java name */
        public final long m7223getMediaSkipForwardEK5gGoQ() {
            return Key.MediaSkipForward;
        }

        /* JADX INFO: renamed from: getMediaStepBackward-EK5gGoQ, reason: not valid java name */
        public final long m7224getMediaStepBackwardEK5gGoQ() {
            return Key.MediaStepBackward;
        }

        /* JADX INFO: renamed from: getMediaStepForward-EK5gGoQ, reason: not valid java name */
        public final long m7225getMediaStepForwardEK5gGoQ() {
            return Key.MediaStepForward;
        }

        /* JADX INFO: renamed from: getMediaStop-EK5gGoQ, reason: not valid java name */
        public final long m7226getMediaStopEK5gGoQ() {
            return Key.MediaStop;
        }

        /* JADX INFO: renamed from: getMediaTopMenu-EK5gGoQ, reason: not valid java name */
        public final long m7227getMediaTopMenuEK5gGoQ() {
            return Key.MediaTopMenu;
        }

        /* JADX INFO: renamed from: getMenu-EK5gGoQ, reason: not valid java name */
        public final long m7228getMenuEK5gGoQ() {
            return Key.Menu;
        }

        /* JADX INFO: renamed from: getMetaLeft-EK5gGoQ, reason: not valid java name */
        public final long m7229getMetaLeftEK5gGoQ() {
            return Key.MetaLeft;
        }

        /* JADX INFO: renamed from: getMetaRight-EK5gGoQ, reason: not valid java name */
        public final long m7230getMetaRightEK5gGoQ() {
            return Key.MetaRight;
        }

        /* JADX INFO: renamed from: getMicrophoneMute-EK5gGoQ, reason: not valid java name */
        public final long m7231getMicrophoneMuteEK5gGoQ() {
            return Key.MicrophoneMute;
        }

        /* JADX INFO: renamed from: getMinus-EK5gGoQ, reason: not valid java name */
        public final long m7232getMinusEK5gGoQ() {
            return Key.Minus;
        }

        /* JADX INFO: renamed from: getMoveEnd-EK5gGoQ, reason: not valid java name */
        public final long m7233getMoveEndEK5gGoQ() {
            return Key.MoveEnd;
        }

        /* JADX INFO: renamed from: getMoveHome-EK5gGoQ, reason: not valid java name */
        public final long m7234getMoveHomeEK5gGoQ() {
            return Key.MoveHome;
        }

        /* JADX INFO: renamed from: getMuhenkan-EK5gGoQ, reason: not valid java name */
        public final long m7235getMuhenkanEK5gGoQ() {
            return Key.Muhenkan;
        }

        /* JADX INFO: renamed from: getMultiply-EK5gGoQ, reason: not valid java name */
        public final long m7236getMultiplyEK5gGoQ() {
            return Key.Multiply;
        }

        /* JADX INFO: renamed from: getMusic-EK5gGoQ, reason: not valid java name */
        public final long m7237getMusicEK5gGoQ() {
            return Key.Music;
        }

        /* JADX INFO: renamed from: getN-EK5gGoQ, reason: not valid java name */
        public final long m7238getNEK5gGoQ() {
            return Key.N;
        }

        /* JADX INFO: renamed from: getNavigateIn-EK5gGoQ, reason: not valid java name */
        public final long m7239getNavigateInEK5gGoQ() {
            return Key.NavigateIn;
        }

        /* JADX INFO: renamed from: getNavigateNext-EK5gGoQ, reason: not valid java name */
        public final long m7240getNavigateNextEK5gGoQ() {
            return Key.NavigateNext;
        }

        /* JADX INFO: renamed from: getNavigateOut-EK5gGoQ, reason: not valid java name */
        public final long m7241getNavigateOutEK5gGoQ() {
            return Key.NavigateOut;
        }

        /* JADX INFO: renamed from: getNavigatePrevious-EK5gGoQ, reason: not valid java name */
        public final long m7242getNavigatePreviousEK5gGoQ() {
            return Key.NavigatePrevious;
        }

        /* JADX INFO: renamed from: getNine-EK5gGoQ, reason: not valid java name */
        public final long m7243getNineEK5gGoQ() {
            return Key.Nine;
        }

        /* JADX INFO: renamed from: getNotification-EK5gGoQ, reason: not valid java name */
        public final long m7244getNotificationEK5gGoQ() {
            return Key.Notification;
        }

        /* JADX INFO: renamed from: getNumLock-EK5gGoQ, reason: not valid java name */
        public final long m7245getNumLockEK5gGoQ() {
            return Key.NumLock;
        }

        /* JADX INFO: renamed from: getNumPad0-EK5gGoQ, reason: not valid java name */
        public final long m7246getNumPad0EK5gGoQ() {
            return Key.NumPad0;
        }

        /* JADX INFO: renamed from: getNumPad1-EK5gGoQ, reason: not valid java name */
        public final long m7247getNumPad1EK5gGoQ() {
            return Key.NumPad1;
        }

        /* JADX INFO: renamed from: getNumPad2-EK5gGoQ, reason: not valid java name */
        public final long m7248getNumPad2EK5gGoQ() {
            return Key.NumPad2;
        }

        /* JADX INFO: renamed from: getNumPad3-EK5gGoQ, reason: not valid java name */
        public final long m7249getNumPad3EK5gGoQ() {
            return Key.NumPad3;
        }

        /* JADX INFO: renamed from: getNumPad4-EK5gGoQ, reason: not valid java name */
        public final long m7250getNumPad4EK5gGoQ() {
            return Key.NumPad4;
        }

        /* JADX INFO: renamed from: getNumPad5-EK5gGoQ, reason: not valid java name */
        public final long m7251getNumPad5EK5gGoQ() {
            return Key.NumPad5;
        }

        /* JADX INFO: renamed from: getNumPad6-EK5gGoQ, reason: not valid java name */
        public final long m7252getNumPad6EK5gGoQ() {
            return Key.NumPad6;
        }

        /* JADX INFO: renamed from: getNumPad7-EK5gGoQ, reason: not valid java name */
        public final long m7253getNumPad7EK5gGoQ() {
            return Key.NumPad7;
        }

        /* JADX INFO: renamed from: getNumPad8-EK5gGoQ, reason: not valid java name */
        public final long m7254getNumPad8EK5gGoQ() {
            return Key.NumPad8;
        }

        /* JADX INFO: renamed from: getNumPad9-EK5gGoQ, reason: not valid java name */
        public final long m7255getNumPad9EK5gGoQ() {
            return Key.NumPad9;
        }

        /* JADX INFO: renamed from: getNumPadAdd-EK5gGoQ, reason: not valid java name */
        public final long m7256getNumPadAddEK5gGoQ() {
            return Key.NumPadAdd;
        }

        /* JADX INFO: renamed from: getNumPadComma-EK5gGoQ, reason: not valid java name */
        public final long m7257getNumPadCommaEK5gGoQ() {
            return Key.NumPadComma;
        }

        /* JADX INFO: renamed from: getNumPadDelete-EK5gGoQ, reason: not valid java name */
        public final long m7258getNumPadDeleteEK5gGoQ() {
            return Key.NumPadDelete;
        }

        /* JADX INFO: renamed from: getNumPadDirectionDown-EK5gGoQ, reason: not valid java name */
        public final long m7259getNumPadDirectionDownEK5gGoQ() {
            return Key.NumPadDirectionDown;
        }

        /* JADX INFO: renamed from: getNumPadDirectionLeft-EK5gGoQ, reason: not valid java name */
        public final long m7260getNumPadDirectionLeftEK5gGoQ() {
            return Key.NumPadDirectionLeft;
        }

        /* JADX INFO: renamed from: getNumPadDirectionRight-EK5gGoQ, reason: not valid java name */
        public final long m7261getNumPadDirectionRightEK5gGoQ() {
            return Key.NumPadDirectionRight;
        }

        /* JADX INFO: renamed from: getNumPadDirectionUp-EK5gGoQ, reason: not valid java name */
        public final long m7262getNumPadDirectionUpEK5gGoQ() {
            return Key.NumPadDirectionUp;
        }

        /* JADX INFO: renamed from: getNumPadDivide-EK5gGoQ, reason: not valid java name */
        public final long m7263getNumPadDivideEK5gGoQ() {
            return Key.NumPadDivide;
        }

        /* JADX INFO: renamed from: getNumPadDot-EK5gGoQ, reason: not valid java name */
        public final long m7264getNumPadDotEK5gGoQ() {
            return Key.NumPadDot;
        }

        /* JADX INFO: renamed from: getNumPadEnter-EK5gGoQ, reason: not valid java name */
        public final long m7265getNumPadEnterEK5gGoQ() {
            return Key.NumPadEnter;
        }

        /* JADX INFO: renamed from: getNumPadEquals-EK5gGoQ, reason: not valid java name */
        public final long m7266getNumPadEqualsEK5gGoQ() {
            return Key.NumPadEquals;
        }

        /* JADX INFO: renamed from: getNumPadInsert-EK5gGoQ, reason: not valid java name */
        public final long m7267getNumPadInsertEK5gGoQ() {
            return Key.NumPadInsert;
        }

        /* JADX INFO: renamed from: getNumPadLeftParenthesis-EK5gGoQ, reason: not valid java name */
        public final long m7268getNumPadLeftParenthesisEK5gGoQ() {
            return Key.NumPadLeftParenthesis;
        }

        /* JADX INFO: renamed from: getNumPadMoveEnd-EK5gGoQ, reason: not valid java name */
        public final long m7269getNumPadMoveEndEK5gGoQ() {
            return Key.NumPadMoveEnd;
        }

        /* JADX INFO: renamed from: getNumPadMoveHome-EK5gGoQ, reason: not valid java name */
        public final long m7270getNumPadMoveHomeEK5gGoQ() {
            return Key.NumPadMoveHome;
        }

        /* JADX INFO: renamed from: getNumPadMultiply-EK5gGoQ, reason: not valid java name */
        public final long m7271getNumPadMultiplyEK5gGoQ() {
            return Key.NumPadMultiply;
        }

        /* JADX INFO: renamed from: getNumPadPageDown-EK5gGoQ, reason: not valid java name */
        public final long m7272getNumPadPageDownEK5gGoQ() {
            return Key.NumPadPageDown;
        }

        /* JADX INFO: renamed from: getNumPadPageUp-EK5gGoQ, reason: not valid java name */
        public final long m7273getNumPadPageUpEK5gGoQ() {
            return Key.NumPadPageUp;
        }

        /* JADX INFO: renamed from: getNumPadRightParenthesis-EK5gGoQ, reason: not valid java name */
        public final long m7274getNumPadRightParenthesisEK5gGoQ() {
            return Key.NumPadRightParenthesis;
        }

        /* JADX INFO: renamed from: getNumPadSubtract-EK5gGoQ, reason: not valid java name */
        public final long m7275getNumPadSubtractEK5gGoQ() {
            return Key.NumPadSubtract;
        }

        /* JADX INFO: renamed from: getNumber-EK5gGoQ, reason: not valid java name */
        public final long m7276getNumberEK5gGoQ() {
            return Key.Number;
        }

        /* JADX INFO: renamed from: getO-EK5gGoQ, reason: not valid java name */
        public final long m7277getOEK5gGoQ() {
            return Key.O;
        }

        /* JADX INFO: renamed from: getOne-EK5gGoQ, reason: not valid java name */
        public final long m7278getOneEK5gGoQ() {
            return Key.One;
        }

        /* JADX INFO: renamed from: getP-EK5gGoQ, reason: not valid java name */
        public final long m7279getPEK5gGoQ() {
            return Key.P;
        }

        /* JADX INFO: renamed from: getPageDown-EK5gGoQ, reason: not valid java name */
        public final long m7280getPageDownEK5gGoQ() {
            return Key.PageDown;
        }

        /* JADX INFO: renamed from: getPageUp-EK5gGoQ, reason: not valid java name */
        public final long m7281getPageUpEK5gGoQ() {
            return Key.PageUp;
        }

        /* JADX INFO: renamed from: getPairing-EK5gGoQ, reason: not valid java name */
        public final long m7282getPairingEK5gGoQ() {
            return Key.Pairing;
        }

        /* JADX INFO: renamed from: getPaste-EK5gGoQ, reason: not valid java name */
        public final long m7283getPasteEK5gGoQ() {
            return Key.Paste;
        }

        /* JADX INFO: renamed from: getPeriod-EK5gGoQ, reason: not valid java name */
        public final long m7284getPeriodEK5gGoQ() {
            return Key.Period;
        }

        /* JADX INFO: renamed from: getPictureSymbols-EK5gGoQ, reason: not valid java name */
        public final long m7285getPictureSymbolsEK5gGoQ() {
            return Key.PictureSymbols;
        }

        /* JADX INFO: renamed from: getPlus-EK5gGoQ, reason: not valid java name */
        public final long m7286getPlusEK5gGoQ() {
            return Key.Plus;
        }

        /* JADX INFO: renamed from: getPound-EK5gGoQ, reason: not valid java name */
        public final long m7287getPoundEK5gGoQ() {
            return Key.Pound;
        }

        /* JADX INFO: renamed from: getPower-EK5gGoQ, reason: not valid java name */
        public final long m7288getPowerEK5gGoQ() {
            return Key.Power;
        }

        /* JADX INFO: renamed from: getPrintScreen-EK5gGoQ, reason: not valid java name */
        public final long m7289getPrintScreenEK5gGoQ() {
            return Key.PrintScreen;
        }

        /* JADX INFO: renamed from: getProfileSwitch-EK5gGoQ, reason: not valid java name */
        public final long m7290getProfileSwitchEK5gGoQ() {
            return Key.ProfileSwitch;
        }

        /* JADX INFO: renamed from: getProgramBlue-EK5gGoQ, reason: not valid java name */
        public final long m7291getProgramBlueEK5gGoQ() {
            return Key.ProgramBlue;
        }

        /* JADX INFO: renamed from: getProgramGreen-EK5gGoQ, reason: not valid java name */
        public final long m7292getProgramGreenEK5gGoQ() {
            return Key.ProgramGreen;
        }

        /* JADX INFO: renamed from: getProgramRed-EK5gGoQ, reason: not valid java name */
        public final long m7293getProgramRedEK5gGoQ() {
            return Key.ProgramRed;
        }

        /* JADX INFO: renamed from: getProgramYellow-EK5gGoQ, reason: not valid java name */
        public final long m7294getProgramYellowEK5gGoQ() {
            return Key.ProgramYellow;
        }

        /* JADX INFO: renamed from: getQ-EK5gGoQ, reason: not valid java name */
        public final long m7295getQEK5gGoQ() {
            return Key.Q;
        }

        /* JADX INFO: renamed from: getR-EK5gGoQ, reason: not valid java name */
        public final long m7296getREK5gGoQ() {
            return Key.R;
        }

        /* JADX INFO: renamed from: getRefresh-EK5gGoQ, reason: not valid java name */
        public final long m7297getRefreshEK5gGoQ() {
            return Key.Refresh;
        }

        /* JADX INFO: renamed from: getRightBracket-EK5gGoQ, reason: not valid java name */
        public final long m7298getRightBracketEK5gGoQ() {
            return Key.RightBracket;
        }

        /* JADX INFO: renamed from: getRo-EK5gGoQ, reason: not valid java name */
        public final long m7299getRoEK5gGoQ() {
            return Key.Ro;
        }

        /* JADX INFO: renamed from: getS-EK5gGoQ, reason: not valid java name */
        public final long m7300getSEK5gGoQ() {
            return Key.S;
        }

        /* JADX INFO: renamed from: getScrollLock-EK5gGoQ, reason: not valid java name */
        public final long m7301getScrollLockEK5gGoQ() {
            return Key.ScrollLock;
        }

        /* JADX INFO: renamed from: getSearch-EK5gGoQ, reason: not valid java name */
        public final long m7302getSearchEK5gGoQ() {
            return Key.Search;
        }

        /* JADX INFO: renamed from: getSemicolon-EK5gGoQ, reason: not valid java name */
        public final long m7303getSemicolonEK5gGoQ() {
            return Key.Semicolon;
        }

        /* JADX INFO: renamed from: getSetTopBoxInput-EK5gGoQ, reason: not valid java name */
        public final long m7304getSetTopBoxInputEK5gGoQ() {
            return Key.SetTopBoxInput;
        }

        /* JADX INFO: renamed from: getSetTopBoxPower-EK5gGoQ, reason: not valid java name */
        public final long m7305getSetTopBoxPowerEK5gGoQ() {
            return Key.SetTopBoxPower;
        }

        /* JADX INFO: renamed from: getSettings-EK5gGoQ, reason: not valid java name */
        public final long m7306getSettingsEK5gGoQ() {
            return Key.Settings;
        }

        /* JADX INFO: renamed from: getSeven-EK5gGoQ, reason: not valid java name */
        public final long m7307getSevenEK5gGoQ() {
            return Key.Seven;
        }

        /* JADX INFO: renamed from: getShiftLeft-EK5gGoQ, reason: not valid java name */
        public final long m7308getShiftLeftEK5gGoQ() {
            return Key.ShiftLeft;
        }

        /* JADX INFO: renamed from: getShiftRight-EK5gGoQ, reason: not valid java name */
        public final long m7309getShiftRightEK5gGoQ() {
            return Key.ShiftRight;
        }

        /* JADX INFO: renamed from: getSix-EK5gGoQ, reason: not valid java name */
        public final long m7310getSixEK5gGoQ() {
            return Key.Six;
        }

        /* JADX INFO: renamed from: getSlash-EK5gGoQ, reason: not valid java name */
        public final long m7311getSlashEK5gGoQ() {
            return Key.Slash;
        }

        /* JADX INFO: renamed from: getSleep-EK5gGoQ, reason: not valid java name */
        public final long m7312getSleepEK5gGoQ() {
            return Key.Sleep;
        }

        /* JADX INFO: renamed from: getSoftLeft-EK5gGoQ, reason: not valid java name */
        public final long m7313getSoftLeftEK5gGoQ() {
            return Key.SoftLeft;
        }

        /* JADX INFO: renamed from: getSoftRight-EK5gGoQ, reason: not valid java name */
        public final long m7314getSoftRightEK5gGoQ() {
            return Key.SoftRight;
        }

        /* JADX INFO: renamed from: getSoftSleep-EK5gGoQ, reason: not valid java name */
        public final long m7315getSoftSleepEK5gGoQ() {
            return Key.SoftSleep;
        }

        /* JADX INFO: renamed from: getSpacebar-EK5gGoQ, reason: not valid java name */
        public final long m7316getSpacebarEK5gGoQ() {
            return Key.Spacebar;
        }

        /* JADX INFO: renamed from: getStem1-EK5gGoQ, reason: not valid java name */
        public final long m7317getStem1EK5gGoQ() {
            return Key.Stem1;
        }

        /* JADX INFO: renamed from: getStem2-EK5gGoQ, reason: not valid java name */
        public final long m7318getStem2EK5gGoQ() {
            return Key.Stem2;
        }

        /* JADX INFO: renamed from: getStem3-EK5gGoQ, reason: not valid java name */
        public final long m7319getStem3EK5gGoQ() {
            return Key.Stem3;
        }

        /* JADX INFO: renamed from: getStemPrimary-EK5gGoQ, reason: not valid java name */
        public final long m7320getStemPrimaryEK5gGoQ() {
            return Key.StemPrimary;
        }

        /* JADX INFO: renamed from: getSwitchCharset-EK5gGoQ, reason: not valid java name */
        public final long m7321getSwitchCharsetEK5gGoQ() {
            return Key.SwitchCharset;
        }

        /* JADX INFO: renamed from: getSymbol-EK5gGoQ, reason: not valid java name */
        public final long m7322getSymbolEK5gGoQ() {
            return Key.Symbol;
        }

        /* JADX INFO: renamed from: getSystemHome-EK5gGoQ, reason: not valid java name */
        public final long m7323getSystemHomeEK5gGoQ() {
            return Key.SystemHome;
        }

        /* JADX INFO: renamed from: getSystemNavigationDown-EK5gGoQ, reason: not valid java name */
        public final long m7324getSystemNavigationDownEK5gGoQ() {
            return Key.SystemNavigationDown;
        }

        /* JADX INFO: renamed from: getSystemNavigationLeft-EK5gGoQ, reason: not valid java name */
        public final long m7325getSystemNavigationLeftEK5gGoQ() {
            return Key.SystemNavigationLeft;
        }

        /* JADX INFO: renamed from: getSystemNavigationRight-EK5gGoQ, reason: not valid java name */
        public final long m7326getSystemNavigationRightEK5gGoQ() {
            return Key.SystemNavigationRight;
        }

        /* JADX INFO: renamed from: getSystemNavigationUp-EK5gGoQ, reason: not valid java name */
        public final long m7327getSystemNavigationUpEK5gGoQ() {
            return Key.SystemNavigationUp;
        }

        /* JADX INFO: renamed from: getT-EK5gGoQ, reason: not valid java name */
        public final long m7328getTEK5gGoQ() {
            return Key.T;
        }

        /* JADX INFO: renamed from: getTab-EK5gGoQ, reason: not valid java name */
        public final long m7329getTabEK5gGoQ() {
            return Key.Tab;
        }

        /* JADX INFO: renamed from: getThree-EK5gGoQ, reason: not valid java name */
        public final long m7330getThreeEK5gGoQ() {
            return Key.Three;
        }

        /* JADX INFO: renamed from: getThumbsDown-EK5gGoQ, reason: not valid java name */
        public final long m7331getThumbsDownEK5gGoQ() {
            return Key.ThumbsDown;
        }

        /* JADX INFO: renamed from: getThumbsUp-EK5gGoQ, reason: not valid java name */
        public final long m7332getThumbsUpEK5gGoQ() {
            return Key.ThumbsUp;
        }

        /* JADX INFO: renamed from: getToggle2D3D-EK5gGoQ, reason: not valid java name */
        public final long m7333getToggle2D3DEK5gGoQ() {
            return Key.Toggle2D3D;
        }

        /* JADX INFO: renamed from: getTv-EK5gGoQ, reason: not valid java name */
        public final long m7334getTvEK5gGoQ() {
            return Key.Tv;
        }

        /* JADX INFO: renamed from: getTvAntennaCable-EK5gGoQ, reason: not valid java name */
        public final long m7335getTvAntennaCableEK5gGoQ() {
            return Key.TvAntennaCable;
        }

        /* JADX INFO: renamed from: getTvAudioDescription-EK5gGoQ, reason: not valid java name */
        public final long m7336getTvAudioDescriptionEK5gGoQ() {
            return Key.TvAudioDescription;
        }

        /* JADX INFO: renamed from: getTvAudioDescriptionMixingVolumeDown-EK5gGoQ, reason: not valid java name */
        public final long m7337getTvAudioDescriptionMixingVolumeDownEK5gGoQ() {
            return Key.TvAudioDescriptionMixingVolumeDown;
        }

        /* JADX INFO: renamed from: getTvAudioDescriptionMixingVolumeUp-EK5gGoQ, reason: not valid java name */
        public final long m7338getTvAudioDescriptionMixingVolumeUpEK5gGoQ() {
            return Key.TvAudioDescriptionMixingVolumeUp;
        }

        /* JADX INFO: renamed from: getTvContentsMenu-EK5gGoQ, reason: not valid java name */
        public final long m7339getTvContentsMenuEK5gGoQ() {
            return Key.TvContentsMenu;
        }

        /* JADX INFO: renamed from: getTvDataService-EK5gGoQ, reason: not valid java name */
        public final long m7340getTvDataServiceEK5gGoQ() {
            return Key.TvDataService;
        }

        /* JADX INFO: renamed from: getTvInput-EK5gGoQ, reason: not valid java name */
        public final long m7341getTvInputEK5gGoQ() {
            return Key.TvInput;
        }

        /* JADX INFO: renamed from: getTvInputComponent1-EK5gGoQ, reason: not valid java name */
        public final long m7342getTvInputComponent1EK5gGoQ() {
            return Key.TvInputComponent1;
        }

        /* JADX INFO: renamed from: getTvInputComponent2-EK5gGoQ, reason: not valid java name */
        public final long m7343getTvInputComponent2EK5gGoQ() {
            return Key.TvInputComponent2;
        }

        /* JADX INFO: renamed from: getTvInputComposite1-EK5gGoQ, reason: not valid java name */
        public final long m7344getTvInputComposite1EK5gGoQ() {
            return Key.TvInputComposite1;
        }

        /* JADX INFO: renamed from: getTvInputComposite2-EK5gGoQ, reason: not valid java name */
        public final long m7345getTvInputComposite2EK5gGoQ() {
            return Key.TvInputComposite2;
        }

        /* JADX INFO: renamed from: getTvInputHdmi1-EK5gGoQ, reason: not valid java name */
        public final long m7346getTvInputHdmi1EK5gGoQ() {
            return Key.TvInputHdmi1;
        }

        /* JADX INFO: renamed from: getTvInputHdmi2-EK5gGoQ, reason: not valid java name */
        public final long m7347getTvInputHdmi2EK5gGoQ() {
            return Key.TvInputHdmi2;
        }

        /* JADX INFO: renamed from: getTvInputHdmi3-EK5gGoQ, reason: not valid java name */
        public final long m7348getTvInputHdmi3EK5gGoQ() {
            return Key.TvInputHdmi3;
        }

        /* JADX INFO: renamed from: getTvInputHdmi4-EK5gGoQ, reason: not valid java name */
        public final long m7349getTvInputHdmi4EK5gGoQ() {
            return Key.TvInputHdmi4;
        }

        /* JADX INFO: renamed from: getTvInputVga1-EK5gGoQ, reason: not valid java name */
        public final long m7350getTvInputVga1EK5gGoQ() {
            return Key.TvInputVga1;
        }

        /* JADX INFO: renamed from: getTvMediaContextMenu-EK5gGoQ, reason: not valid java name */
        public final long m7351getTvMediaContextMenuEK5gGoQ() {
            return Key.TvMediaContextMenu;
        }

        /* JADX INFO: renamed from: getTvNetwork-EK5gGoQ, reason: not valid java name */
        public final long m7352getTvNetworkEK5gGoQ() {
            return Key.TvNetwork;
        }

        /* JADX INFO: renamed from: getTvNumberEntry-EK5gGoQ, reason: not valid java name */
        public final long m7353getTvNumberEntryEK5gGoQ() {
            return Key.TvNumberEntry;
        }

        /* JADX INFO: renamed from: getTvPower-EK5gGoQ, reason: not valid java name */
        public final long m7354getTvPowerEK5gGoQ() {
            return Key.TvPower;
        }

        /* JADX INFO: renamed from: getTvRadioService-EK5gGoQ, reason: not valid java name */
        public final long m7355getTvRadioServiceEK5gGoQ() {
            return Key.TvRadioService;
        }

        /* JADX INFO: renamed from: getTvSatellite-EK5gGoQ, reason: not valid java name */
        public final long m7356getTvSatelliteEK5gGoQ() {
            return Key.TvSatellite;
        }

        /* JADX INFO: renamed from: getTvSatelliteBs-EK5gGoQ, reason: not valid java name */
        public final long m7357getTvSatelliteBsEK5gGoQ() {
            return Key.TvSatelliteBs;
        }

        /* JADX INFO: renamed from: getTvSatelliteCs-EK5gGoQ, reason: not valid java name */
        public final long m7358getTvSatelliteCsEK5gGoQ() {
            return Key.TvSatelliteCs;
        }

        /* JADX INFO: renamed from: getTvSatelliteService-EK5gGoQ, reason: not valid java name */
        public final long m7359getTvSatelliteServiceEK5gGoQ() {
            return Key.TvSatelliteService;
        }

        /* JADX INFO: renamed from: getTvTeletext-EK5gGoQ, reason: not valid java name */
        public final long m7360getTvTeletextEK5gGoQ() {
            return Key.TvTeletext;
        }

        /* JADX INFO: renamed from: getTvTerrestrialAnalog-EK5gGoQ, reason: not valid java name */
        public final long m7361getTvTerrestrialAnalogEK5gGoQ() {
            return Key.TvTerrestrialAnalog;
        }

        /* JADX INFO: renamed from: getTvTerrestrialDigital-EK5gGoQ, reason: not valid java name */
        public final long m7362getTvTerrestrialDigitalEK5gGoQ() {
            return Key.TvTerrestrialDigital;
        }

        /* JADX INFO: renamed from: getTvTimerProgramming-EK5gGoQ, reason: not valid java name */
        public final long m7363getTvTimerProgrammingEK5gGoQ() {
            return Key.TvTimerProgramming;
        }

        /* JADX INFO: renamed from: getTvZoomMode-EK5gGoQ, reason: not valid java name */
        public final long m7364getTvZoomModeEK5gGoQ() {
            return Key.TvZoomMode;
        }

        /* JADX INFO: renamed from: getTwo-EK5gGoQ, reason: not valid java name */
        public final long m7365getTwoEK5gGoQ() {
            return Key.Two;
        }

        /* JADX INFO: renamed from: getU-EK5gGoQ, reason: not valid java name */
        public final long m7366getUEK5gGoQ() {
            return Key.U;
        }

        /* JADX INFO: renamed from: getUnknown-EK5gGoQ, reason: not valid java name */
        public final long m7367getUnknownEK5gGoQ() {
            return Key.Unknown;
        }

        /* JADX INFO: renamed from: getV-EK5gGoQ, reason: not valid java name */
        public final long m7368getVEK5gGoQ() {
            return Key.V;
        }

        /* JADX INFO: renamed from: getVoiceAssist-EK5gGoQ, reason: not valid java name */
        public final long m7369getVoiceAssistEK5gGoQ() {
            return Key.VoiceAssist;
        }

        /* JADX INFO: renamed from: getVolumeDown-EK5gGoQ, reason: not valid java name */
        public final long m7370getVolumeDownEK5gGoQ() {
            return Key.VolumeDown;
        }

        /* JADX INFO: renamed from: getVolumeMute-EK5gGoQ, reason: not valid java name */
        public final long m7371getVolumeMuteEK5gGoQ() {
            return Key.VolumeMute;
        }

        /* JADX INFO: renamed from: getVolumeUp-EK5gGoQ, reason: not valid java name */
        public final long m7372getVolumeUpEK5gGoQ() {
            return Key.VolumeUp;
        }

        /* JADX INFO: renamed from: getW-EK5gGoQ, reason: not valid java name */
        public final long m7373getWEK5gGoQ() {
            return Key.W;
        }

        /* JADX INFO: renamed from: getWakeUp-EK5gGoQ, reason: not valid java name */
        public final long m7374getWakeUpEK5gGoQ() {
            return Key.WakeUp;
        }

        /* JADX INFO: renamed from: getWindow-EK5gGoQ, reason: not valid java name */
        public final long m7375getWindowEK5gGoQ() {
            return Key.Window;
        }

        /* JADX INFO: renamed from: getX-EK5gGoQ, reason: not valid java name */
        public final long m7376getXEK5gGoQ() {
            return Key.X;
        }

        /* JADX INFO: renamed from: getY-EK5gGoQ, reason: not valid java name */
        public final long m7377getYEK5gGoQ() {
            return Key.Y;
        }

        /* JADX INFO: renamed from: getYen-EK5gGoQ, reason: not valid java name */
        public final long m7378getYenEK5gGoQ() {
            return Key.Yen;
        }

        /* JADX INFO: renamed from: getZ-EK5gGoQ, reason: not valid java name */
        public final long m7379getZEK5gGoQ() {
            return Key.Z;
        }

        /* JADX INFO: renamed from: getZenkakuHankaru-EK5gGoQ, reason: not valid java name */
        public final long m7380getZenkakuHankaruEK5gGoQ() {
            return Key.ZenkakuHankaru;
        }

        /* JADX INFO: renamed from: getZero-EK5gGoQ, reason: not valid java name */
        public final long m7381getZeroEK5gGoQ() {
            return Key.Zero;
        }

        /* JADX INFO: renamed from: getZoomIn-EK5gGoQ, reason: not valid java name */
        public final long m7382getZoomInEK5gGoQ() {
            return Key.ZoomIn;
        }

        /* JADX INFO: renamed from: getZoomOut-EK5gGoQ, reason: not valid java name */
        public final long m7383getZoomOutEK5gGoQ() {
            return Key.ZoomOut;
        }

        private Companion() {
        }
    }
}
