package yads;

import androidx.media3.extractor.ts.PsExtractor;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class hy2 extends fs5 {
    public ky2 n;
    public gy2 o;

    @Override // yads.fs5
    public final boolean a(os4 os4Var, long j, ds5 ds5Var) {
        byte[] bArr = os4Var.a;
        ky2 ky2Var = this.n;
        if (ky2Var == null) {
            ky2 ky2Var2 = new ky2(bArr, 17);
            this.n = ky2Var2;
            ds5Var.a = ky2Var2.a(Arrays.copyOfRange(bArr, 9, os4Var.c), null);
            return true;
        }
        byte b = bArr[0];
        if ((b & 127) == 3) {
            jy2 jy2VarA = fy2.a(os4Var);
            ky2 ky2Var3 = new ky2(ky2Var.a, ky2Var.b, ky2Var.c, ky2Var.d, ky2Var.e, ky2Var.g, ky2Var.h, ky2Var.j, jy2VarA, ky2Var.l);
            this.n = ky2Var3;
            this.o = new gy2(ky2Var3, jy2VarA);
            return true;
        }
        if (b != -1) {
            return true;
        }
        gy2 gy2Var = this.o;
        if (gy2Var != null) {
            gy2Var.c = j;
            ds5Var.b = gy2Var;
        }
        ds5Var.a.getClass();
        return false;
    }

    @Override // yads.fs5
    public final long a(os4 os4Var) {
        int i;
        int i2;
        int iK;
        byte[] bArr = os4Var.a;
        int i3 = -1;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i4 = (bArr[2] & 255) >> 4;
        if (i4 == 6 || i4 == 7) {
            os4Var.e(os4Var.b + 4);
            os4Var.q();
        }
        switch (i4) {
            case 1:
                i3 = PsExtractor.AUDIO_STREAM;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                i = i4 - 2;
                i2 = 576;
                i3 = i2 << i;
                break;
            case 6:
                iK = os4Var.k();
                i3 = iK + 1;
                break;
            case 7:
                iK = os4Var.p();
                i3 = iK + 1;
                break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i = i4 - 8;
                i2 = 256;
                i3 = i2 << i;
                break;
        }
        os4Var.e(0);
        return i3;
    }

    @Override // yads.fs5
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
