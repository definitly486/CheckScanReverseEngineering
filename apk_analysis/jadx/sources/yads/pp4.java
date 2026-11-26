package yads;

import java.io.EOFException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes6.dex */
public final class pp4 {
    public int a;
    public long b;
    public int c;
    public int d;
    public int e;
    public final int[] f = new int[255];
    public final os4 g = new os4(255);

    public final boolean a(wk0 wk0Var, boolean z) throws xs4, EOFException {
        boolean zB;
        boolean zB2;
        this.a = 0;
        this.b = 0L;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.g.c(27);
        try {
            zB = wk0Var.b(this.g.a, 0, 27, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            zB = false;
        }
        if (!zB || this.g.l() != 1332176723) {
            return false;
        }
        if (this.g.k() != 0) {
            if (z) {
                return false;
            }
            throw xs4.a("unsupported bit stream revision");
        }
        this.a = this.g.k();
        this.b = this.g.d();
        this.g.e();
        this.g.e();
        this.g.e();
        int iK = this.g.k();
        this.c = iK;
        this.d = iK + 27;
        this.g.c(iK);
        try {
            zB2 = wk0Var.b(this.g.a, 0, this.c, z);
        } catch (EOFException e2) {
            if (!z) {
                throw e2;
            }
            zB2 = false;
        }
        if (!zB2) {
            return false;
        }
        for (int i = 0; i < this.c; i++) {
            this.f[i] = this.g.k();
            this.e += this.f[i];
        }
        return true;
    }

    public final boolean a(wk0 wk0Var, long j) throws EOFException, InterruptedIOException {
        boolean zB;
        wk0 wk0Var2;
        long j2 = wk0Var.d;
        if (j2 == ((long) wk0Var.f) + j2) {
            this.g.c(4);
            while (true) {
                if (j != -1 && wk0Var.d + 4 >= j) {
                    break;
                }
                try {
                    zB = wk0Var.b(this.g.a, 0, 4, true);
                } catch (EOFException unused) {
                    zB = false;
                }
                if (!zB) {
                    break;
                }
                this.g.e(0);
                if (this.g.l() == 1332176723) {
                    wk0Var.f = 0;
                    return true;
                }
                wk0Var.a(1);
            }
            while (true) {
                if (j != -1 && wk0Var.d >= j) {
                    break;
                }
                int iMin = Math.min(wk0Var.g, 1);
                wk0Var.c(iMin);
                if (iMin == 0) {
                    byte[] bArr = wk0Var.a;
                    wk0Var2 = wk0Var;
                    iMin = wk0Var2.a(bArr, 0, Math.min(1, bArr.length), 0, true);
                } else {
                    wk0Var2 = wk0Var;
                }
                if (iMin != -1) {
                    wk0Var2.d += (long) iMin;
                }
                if (iMin == -1) {
                    break;
                }
                wk0Var = wk0Var2;
            }
            return false;
        }
        defpackage.mi2.b();
        return false;
    }
}
