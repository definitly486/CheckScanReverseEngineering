package yads;

import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.muxer.MuxerUtil;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class ky2 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;
    public final jy2 k;
    public final h84 l;

    public ky2(byte[] bArr, int i) {
        int i2;
        ns4 ns4Var = new ns4(bArr);
        ns4Var.b(i * 8);
        this.a = ns4Var.a(16);
        this.b = ns4Var.a(16);
        this.c = ns4Var.a(24);
        this.d = ns4Var.a(24);
        int iA = ns4Var.a(20);
        this.e = iA;
        int i3 = 6;
        switch (iA) {
            case 8000:
                i2 = 4;
                break;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND /* 16000 */:
                i2 = 5;
                break;
            case 22050:
                i2 = 6;
                break;
            case 24000:
                i2 = 7;
                break;
            case 32000:
                i2 = 8;
                break;
            case 44100:
                i2 = 9;
                break;
            case OpusUtil.SAMPLE_RATE /* 48000 */:
                i2 = 10;
                break;
            case 88200:
                i2 = 1;
                break;
            case DefaultEncoderProfilesProvider.DEFAULT_AUDIO_BITRATE /* 96000 */:
                i2 = 11;
                break;
            case 176400:
                i2 = 2;
                break;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND /* 192000 */:
                i2 = 3;
                break;
            default:
                i2 = -1;
                break;
        }
        this.f = i2;
        this.g = ns4Var.a(3) + 1;
        int iA2 = ns4Var.a(5) + 1;
        this.h = iA2;
        if (iA2 == 8) {
            i3 = 1;
        } else if (iA2 == 12) {
            i3 = 2;
        } else if (iA2 == 16) {
            i3 = 4;
        } else if (iA2 == 20) {
            i3 = 5;
        } else if (iA2 != 24) {
            i3 = -1;
        }
        this.i = i3;
        int iA3 = ns4Var.a(4);
        int iA4 = ns4Var.a(32);
        int i4 = u56.a;
        this.j = ((((long) iA3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (((long) iA4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        this.k = null;
        this.l = null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0018  */
    public final vz2 a(byte[] bArr, h84 h84Var) {
        bArr[4] = -128;
        int i = this.d;
        if (i <= 0) {
            i = -1;
        }
        h84 h84Var2 = this.l;
        if (h84Var2 != null) {
            if (h84Var == null) {
                h84Var = h84Var2;
            } else {
                g84[] g84VarArr = h84Var.b;
                if (g84VarArr.length == 0) {
                    h84Var = h84Var2;
                } else {
                    h84Var = new h84((g84[]) u56.a((Object[]) h84Var2.b, (Object[]) g84VarArr));
                }
            }
        }
        uz2 uz2Var = new uz2();
        uz2Var.k = MimeTypes.AUDIO_FLAC;
        uz2Var.l = i;
        uz2Var.x = this.g;
        uz2Var.y = this.e;
        uz2Var.m = Collections.singletonList(bArr);
        uz2Var.i = h84Var;
        return new vz2(uz2Var);
    }

    public final long a(long j) {
        long j2 = (j * ((long) this.e)) / 1000000;
        long j3 = this.j - 1;
        int i = u56.a;
        return Math.max(0L, Math.min(j2, j3));
    }

    public ky2(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, jy2 jy2Var, h84 h84Var) {
        int i8;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        int i9 = 4;
        switch (i5) {
            case 8000:
                i8 = 4;
                break;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND /* 16000 */:
                i8 = 5;
                break;
            case 22050:
                i8 = 6;
                break;
            case 24000:
                i8 = 7;
                break;
            case 32000:
                i8 = 8;
                break;
            case 44100:
                i8 = 9;
                break;
            case OpusUtil.SAMPLE_RATE /* 48000 */:
                i8 = 10;
                break;
            case 88200:
                i8 = 1;
                break;
            case DefaultEncoderProfilesProvider.DEFAULT_AUDIO_BITRATE /* 96000 */:
                i8 = 11;
                break;
            case 176400:
                i8 = 2;
                break;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND /* 192000 */:
                i8 = 3;
                break;
            default:
                i8 = -1;
                break;
        }
        this.f = i8;
        this.g = i6;
        this.h = i7;
        if (i7 == 8) {
            i9 = 1;
        } else if (i7 == 12) {
            i9 = 2;
        } else if (i7 != 16) {
            i9 = i7 != 20 ? i7 != 24 ? -1 : 6 : 5;
        }
        this.i = i9;
        this.j = j;
        this.k = jy2Var;
        this.l = h84Var;
    }
}
