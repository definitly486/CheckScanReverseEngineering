package yads;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class eb3 implements wc0 {
    public final wc0 a;
    public final int b;
    public final r15 c;
    public final byte[] d;
    public int e;

    public eb3(wc0 wc0Var, int i, r15 r15Var) {
        if (i <= 0) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = wc0Var;
        this.b = i;
        this.c = r15Var;
        this.d = new byte[1];
        this.e = i;
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        this.a.a(p16Var);
    }

    @Override // yads.wc0
    public final Map b() {
        return this.a.b();
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        int i3 = this.e;
        if (i3 == 0) {
            int i4 = 0;
            if (this.a.c(this.d, 0, 1) != -1) {
                int i5 = (this.d[0] & 255) << 4;
                if (i5 != 0) {
                    byte[] bArr2 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int iC = this.a.c(bArr2, i4, i6);
                        if (iC != -1) {
                            i4 += iC;
                            i6 -= iC;
                        }
                    }
                    while (i5 > 0 && bArr2[i5 - 1] == 0) {
                        i5--;
                    }
                    if (i5 > 0) {
                        r15 r15Var = this.c;
                        os4 os4Var = new os4(bArr2, i5);
                        long jMax = !r15Var.l ? r15Var.i : Math.max(r15Var.m.a(true), r15Var.i);
                        int i7 = os4Var.c - os4Var.b;
                        lc5 lc5Var = r15Var.k;
                        lc5Var.getClass();
                        lc5Var.a(i7, os4Var);
                        lc5Var.a(jMax, 1, i7, 0, null);
                        r15Var.l = true;
                    }
                }
                i3 = this.b;
                this.e = i3;
            }
            return -1;
        }
        int iC2 = this.a.c(bArr, i, Math.min(i3, i2));
        if (iC2 != -1) {
            this.e -= iC2;
        }
        return iC2;
    }

    @Override // yads.wc0
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // yads.wc0
    public final Uri d() {
        return this.a.d();
    }

    @Override // yads.wc0
    public final long a(bd0 bd0Var) {
        throw new UnsupportedOperationException();
    }
}
