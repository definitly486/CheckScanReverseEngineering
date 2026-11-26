package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.extractor.OpusUtil;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class vq4 extends fs5 {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    @Override // yads.fs5
    public final boolean a(os4 os4Var, long j, ds5 ds5Var) {
        if (a(os4Var, o)) {
            byte[] bArrCopyOf = Arrays.copyOf(os4Var.a, os4Var.c);
            int i = bArrCopyOf[9] & 255;
            ArrayList arrayListA = wq4.a(bArrCopyOf);
            if (ds5Var.a != null) {
                return true;
            }
            uz2 uz2Var = new uz2();
            uz2Var.k = MimeTypes.AUDIO_OPUS;
            uz2Var.x = i;
            uz2Var.y = OpusUtil.SAMPLE_RATE;
            uz2Var.m = arrayListA;
            ds5Var.a = new vz2(uz2Var);
            return true;
        }
        if (!a(os4Var, p)) {
            if (ds5Var.a != null) {
                return false;
            }
            defpackage.ud.g();
            return false;
        }
        if (ds5Var.a == null) {
            defpackage.ud.g();
            return false;
        }
        if (this.n) {
            return true;
        }
        this.n = true;
        os4Var.e(os4Var.b + 8);
        h84 h84VarA = dj6.a(oe3.b(dj6.a(os4Var, false, false).a));
        if (h84VarA == null) {
            return true;
        }
        vz2 vz2Var = ds5Var.a;
        vz2Var.getClass();
        uz2 uz2Var2 = new uz2(vz2Var);
        h84 h84Var = ds5Var.a.k;
        if (h84Var != null) {
            g84[] g84VarArr = h84Var.b;
            if (g84VarArr.length != 0) {
                h84VarA = new h84((g84[]) u56.a((Object[]) h84VarA.b, (Object[]) g84VarArr));
            }
        }
        uz2Var2.i = h84VarA;
        ds5Var.a = new vz2(uz2Var2);
        return true;
    }

    @Override // yads.fs5
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = false;
        }
    }

    public static boolean a(os4 os4Var, byte[] bArr) {
        int i = os4Var.c;
        int i2 = os4Var.b;
        if (i - i2 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        os4Var.a(bArr2, 0, bArr.length);
        os4Var.e(i2);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // yads.fs5
    public final long a(os4 os4Var) {
        int i;
        int i2;
        byte[] bArr = os4Var.a;
        byte b = bArr[0];
        int i3 = b & 255;
        int i4 = b & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = bArr[1] & 63;
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        int i6 = i5 & 3;
        if (i5 >= 16) {
            i2 = 2500 << i6;
        } else if (i5 >= 12) {
            i2 = 10000 << (i5 & 1);
        } else {
            i2 = i6 == 3 ? ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS : 10000 << i6;
        }
        return (((long) this.i) * (((long) i) * ((long) i2))) / 1000000;
    }
}
