package yads;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class z84 {
    public static final ArrayList a = new ArrayList();
    public static final Pattern b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static String a(String str) {
        y84 y84VarB;
        String strA = null;
        if (str == null) {
            return null;
        }
        String strA2 = oj.a(str.trim());
        if (strA2.startsWith("avc1") || strA2.startsWith("avc3")) {
            return "video/avc";
        }
        if (strA2.startsWith("hev1") || strA2.startsWith("hvc1")) {
            return MimeTypes.VIDEO_H265;
        }
        if (strA2.startsWith("dvav") || strA2.startsWith("dva1") || strA2.startsWith("dvhe") || strA2.startsWith("dvh1")) {
            return MimeTypes.VIDEO_DOLBY_VISION;
        }
        if (strA2.startsWith("av01")) {
            return MimeTypes.VIDEO_AV1;
        }
        if (strA2.startsWith("vp9") || strA2.startsWith("vp09")) {
            return MimeTypes.VIDEO_VP9;
        }
        if (strA2.startsWith("vp8") || strA2.startsWith("vp08")) {
            return MimeTypes.VIDEO_VP8;
        }
        if (strA2.startsWith("mp4a")) {
            if (strA2.startsWith("mp4a.") && (y84VarB = b(strA2)) != null) {
                strA = a(y84VarB.a);
            }
            return strA == null ? "audio/mp4a-latm" : strA;
        }
        if (strA2.startsWith("mha1")) {
            return MimeTypes.AUDIO_MPEGH_MHA1;
        }
        if (strA2.startsWith("mhm1")) {
            return MimeTypes.AUDIO_MPEGH_MHM1;
        }
        if (strA2.startsWith("ac-3") || strA2.startsWith("dac3")) {
            return MimeTypes.AUDIO_AC3;
        }
        if (strA2.startsWith("ec-3") || strA2.startsWith("dec3")) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (strA2.startsWith(MimeTypes.CODEC_E_AC3_JOC)) {
            return MimeTypes.AUDIO_E_AC3_JOC;
        }
        if (strA2.startsWith("ac-4") || strA2.startsWith("dac4")) {
            return MimeTypes.AUDIO_AC4;
        }
        if (strA2.startsWith("dtsc")) {
            return MimeTypes.AUDIO_DTS;
        }
        if (strA2.startsWith("dtse")) {
            return MimeTypes.AUDIO_DTS_EXPRESS;
        }
        if (strA2.startsWith("dtsh") || strA2.startsWith("dtsl")) {
            return MimeTypes.AUDIO_DTS_HD;
        }
        if (strA2.startsWith("dtsx")) {
            return MimeTypes.AUDIO_DTS_X;
        }
        if (strA2.startsWith("opus")) {
            return MimeTypes.AUDIO_OPUS;
        }
        if (strA2.startsWith("vorbis")) {
            return MimeTypes.AUDIO_VORBIS;
        }
        if (strA2.startsWith("flac")) {
            return MimeTypes.AUDIO_FLAC;
        }
        if (strA2.startsWith("stpp")) {
            return MimeTypes.APPLICATION_TTML;
        }
        if (strA2.startsWith("wvtt")) {
            return MimeTypes.TEXT_VTT;
        }
        if (strA2.contains("cea708")) {
            return MimeTypes.APPLICATION_CEA708;
        }
        if (strA2.contains("eia608") || strA2.contains("cea608")) {
            return MimeTypes.APPLICATION_CEA608;
        }
        ArrayList arrayList = a;
        if (arrayList.size() <= 0) {
            return null;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    public static y84 b(String str) {
        Matcher matcher = b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new y84(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String c(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (MimeTypes.BASE_TYPE_AUDIO.equals(c(str))) {
            return 1;
        }
        if (MimeTypes.BASE_TYPE_VIDEO.equals(c(str))) {
            return 2;
        }
        if (e(str)) {
            return 3;
        }
        if ("image".equals(c(str))) {
            return 4;
        }
        if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str)) {
            return 5;
        }
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        ArrayList arrayList = a;
        if (arrayList.size() <= 0) {
            return -1;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    public static boolean e(String str) {
        return "text".equals(c(str)) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_SUBRIP.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_RAWCC.equals(str) || MimeTypes.APPLICATION_VOBSUB.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str);
    }

    public static String a(int i) {
        if (i == 32) {
            return MimeTypes.VIDEO_MP4V;
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return MimeTypes.VIDEO_H265;
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return MimeTypes.VIDEO_VC1;
        }
        if (i == 177) {
            return MimeTypes.VIDEO_VP9;
        }
        if (i == 165) {
            return MimeTypes.AUDIO_AC3;
        }
        if (i != 166) {
            switch (i) {
                case 96:
                case 97:
                case 98:
                case 99:
                case 100:
                case TypedValues.TYPE_TARGET /* 101 */:
                    return MimeTypes.VIDEO_MPEG2;
                case 102:
                case 103:
                case 104:
                    return "audio/mp4a-latm";
                case 105:
                case 107:
                    return MimeTypes.AUDIO_MPEG;
                case 106:
                    return MimeTypes.VIDEO_MPEG;
                default:
                    switch (i) {
                        case 169:
                        case TsExtractor.TS_STREAM_TYPE_AC4 /* 172 */:
                            return MimeTypes.AUDIO_DTS;
                        case 170:
                        case WebmConstants.MkvEbmlElement.PREV_SIZE /* 171 */:
                            return MimeTypes.AUDIO_DTS_HD;
                        case 173:
                            return MimeTypes.AUDIO_OPUS;
                        case WebmConstants.MkvEbmlElement.TRACK_ENTRY /* 174 */:
                            return MimeTypes.AUDIO_AC4;
                        default:
                            return null;
                    }
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    public static int a(String str, String str2) {
        y84 y84VarB;
        str.getClass();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (y84VarB = b(str2)) == null) {
                    return 0;
                }
                int i = y84VarB.b;
                if (i == 2) {
                    return 10;
                }
                if (i == 5) {
                    return 11;
                }
                if (i == 29) {
                    return 12;
                }
                if (i == 42) {
                    return 16;
                }
                if (i != 22) {
                    return i != 23 ? 0 : 15;
                }
                return 1073741824;
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }
}
