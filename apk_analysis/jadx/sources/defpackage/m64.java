package defpackage;

import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes5.dex */
public final class m64 {
    public static final int[] a = {1, 10, 100, 1000, 10000, 100000, PlaybackException.CUSTOM_ERROR_CODE_BASE, DefaultEncoderProfilesProvider.DEFAULT_VIDEO_BITRATE_FHD, 100000000, 1000000000};
    public static final int[] b = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    public static final int[] c = {3, 6};
    public static final int[] d = {1, 2, 4, 5, 7, 8};

    public static final void a(StringBuilder sb, StringBuilder sb2, int i) {
        if (i < 10) {
            sb.append('0');
        }
        sb2.append(i);
    }

    public static final n64.a b(String str, String str2, int i, nl3 nl3Var) {
        char cCharAt = str.charAt(i);
        if (((Boolean) nl3Var.invoke(Character.valueOf(cCharAt))).booleanValue()) {
            return null;
        }
        return c(str, "Expected " + str2 + ", but got '" + cCharAt + "' at position " + i);
    }

    public static final n64.a c(String str, String str2) {
        StringBuilder sbD = fh.d(str2, " when parsing an Instant from \"");
        sbD.append(e(64, str));
        sbD.append('\"');
        return new n64.a(sbD.toString(), str);
    }

    public static final int d(int i, String str) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    public static final String e(int i, String str) {
        if (str.length() <= i) {
            return str.toString();
        }
        return str.subSequence(0, i).toString() + "...";
    }
}
