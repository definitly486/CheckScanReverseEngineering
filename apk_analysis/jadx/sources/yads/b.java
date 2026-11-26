package yads;

import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {
    public static final int[] a = {DefaultEncoderProfilesProvider.DEFAULT_AUDIO_BITRATE, 88200, 64000, OpusUtil.SAMPLE_RATE, 44100, 32000, 24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 12000, 11025, 8000, 7350};
    public static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static a a(ns4 ns4Var, boolean z) {
        int iA;
        int iA2;
        int iA3 = ns4Var.a(5);
        if (iA3 == 31) {
            iA3 = ns4Var.a(6) + 32;
        }
        int iA4 = ns4Var.a(4);
        if (iA4 == 15) {
            iA = ns4Var.a(24);
        } else {
            if (iA4 >= 13) {
                throw new xs4(null, null, true, 1);
            }
            iA = a[iA4];
        }
        int iA5 = ns4Var.a(4);
        String strA = vx4.a(iA3, "mp4a.40.");
        if (iA3 == 5 || iA3 == 29) {
            int iA6 = ns4Var.a(4);
            if (iA6 == 15) {
                iA2 = ns4Var.a(24);
            } else {
                if (iA6 >= 13) {
                    throw new xs4(null, null, true, 1);
                }
                iA2 = a[iA6];
            }
            iA = iA2;
            int iA7 = ns4Var.a(5);
            if (iA7 == 31) {
                iA7 = ns4Var.a(6) + 32;
            }
            iA3 = iA7;
            if (iA3 == 22) {
                iA5 = ns4Var.a(4);
            }
        }
        if (z) {
            if (iA3 != 6 && iA3 != 7 && iA3 != 17 && iA3 != 1 && iA3 != 2 && iA3 != 3 && iA3 != 4) {
                switch (iA3) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw xs4.a("Unsupported audio object type: " + iA3);
                }
            }
            if (ns4Var.e()) {
                sv3.d("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (ns4Var.e()) {
                ns4Var.c(14);
            }
            boolean zE = ns4Var.e();
            if (iA5 == 0) {
                defpackage.ud.d();
                return null;
            }
            if (iA3 == 6 || iA3 == 20) {
                ns4Var.c(3);
            }
            if (zE) {
                if (iA3 == 22) {
                    ns4Var.c(16);
                }
                if (iA3 == 17 || iA3 == 19 || iA3 == 20 || iA3 == 23) {
                    ns4Var.c(3);
                }
                ns4Var.c(1);
            }
            switch (iA3) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iA8 = ns4Var.a(2);
                    if (iA8 == 2 || iA8 == 3) {
                        throw xs4.a("Unsupported epConfig: " + iA8);
                    }
                    break;
            }
        }
        int i = b[iA5];
        if (i != -1) {
            return new a(iA, i, strA);
        }
        throw new xs4(null, null, true, 1);
    }
}
