package yads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class wk0 implements xs2 {
    public final tc0 b;
    public final long c;
    public long d;
    public int f;
    public int g;
    public byte[] e = new byte[65536];
    public final byte[] a = new byte[4096];

    static {
        nq2.a("goog.exo.extractor");
    }

    public wk0(tc0 tc0Var, long j, long j2) {
        this.b = tc0Var;
        this.d = j;
        this.c = j2;
    }

    public final boolean a(int i, boolean z) {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            int i3 = u56.a;
            this.e = Arrays.copyOf(this.e, Math.max(65536 + i2, Math.min(bArr.length * 2, i2 + 524288)));
        }
        int iA = this.g - this.f;
        while (iA < i) {
            wk0 wk0Var = this;
            int i4 = i;
            boolean z2 = z;
            iA = wk0Var.a(this.e, this.f, i4, iA, z2);
            if (iA == -1) {
                return false;
            }
            wk0Var.g = wk0Var.f + iA;
            this = wk0Var;
            i = i4;
            z = z2;
        }
        this.f += i;
        return true;
    }

    @Override // yads.xs2
    public final boolean b(byte[] bArr, int i, int i2, boolean z) {
        if (!a(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override // yads.tc0
    public final int c(byte[] bArr, int i, int i2) {
        wk0 wk0Var;
        int i3 = this.g;
        int iA = 0;
        if (i3 != 0) {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, iMin);
            c(iMin);
            iA = iMin;
        }
        if (iA == 0) {
            wk0Var = this;
            iA = wk0Var.a(bArr, i, i2, 0, true);
        } else {
            wk0Var = this;
        }
        if (iA != -1) {
            wk0Var.d += (long) iA;
        }
        return iA;
    }

    public final int d(byte[] bArr, int i, int i2) {
        wk0 wk0Var;
        int iMin;
        int i3 = this.f + i2;
        byte[] bArrCopyOf = this.e;
        if (i3 > bArrCopyOf.length) {
            int i4 = u56.a;
            bArrCopyOf = Arrays.copyOf(this.e, Math.max(65536 + i3, Math.min(bArrCopyOf.length * 2, i3 + 524288)));
            this.e = bArrCopyOf;
        }
        byte[] bArr2 = bArrCopyOf;
        int i5 = this.g;
        int i6 = this.f;
        int i7 = i5 - i6;
        if (i7 == 0) {
            wk0Var = this;
            iMin = wk0Var.a(bArr2, i6, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            wk0Var.g += iMin;
        } else {
            wk0Var = this;
            iMin = Math.min(i2, i7);
        }
        System.arraycopy(wk0Var.e, wk0Var.f, bArr, i, iMin);
        wk0Var.f += iMin;
        return iMin;
    }

    @Override // yads.xs2
    public final long e() {
        return this.d + ((long) this.f);
    }

    @Override // yads.xs2
    public final long f() {
        return this.d;
    }

    @Override // yads.xs2
    public final void b(byte[] bArr, int i, int i2) {
        a(bArr, i, i2, false);
    }

    @Override // yads.xs2
    public final void b(int i) {
        a(i, false);
    }

    @Override // yads.xs2
    public final void c() {
        this.f = 0;
    }

    public final void c(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    @Override // yads.xs2
    public final long a() {
        return this.c;
    }

    @Override // yads.xs2
    public final void a(byte[] bArr, int i, int i2) {
        b(bArr, i, i2, false);
    }

    @Override // yads.xs2
    public final void a(int i) {
        int iMin = Math.min(this.g, i);
        c(iMin);
        int iA = iMin;
        while (iA < i && iA != -1) {
            iA = a(this.a, -iA, Math.min(i, this.a.length + iA), iA, false);
        }
        if (iA != -1) {
            this.d += (long) iA;
        }
    }

    @Override // yads.xs2
    public final boolean a(byte[] bArr, int i, int i2, boolean z) {
        int iA;
        int i3 = this.g;
        if (i3 == 0) {
            iA = 0;
        } else {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, iMin);
            c(iMin);
            iA = iMin;
        }
        while (iA < i2 && iA != -1) {
            iA = a(bArr, i, i2, iA, z);
        }
        if (iA != -1) {
            this.d += (long) iA;
        }
        return iA != -1;
    }

    public final int a(byte[] bArr, int i, int i2, int i3, boolean z) throws EOFException, InterruptedIOException {
        if (!Thread.interrupted()) {
            int iC = this.b.c(bArr, i + i3, i2 - i3);
            if (iC != -1) {
                return i3 + iC;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            defpackage.n7.e();
            return 0;
        }
        throw new InterruptedIOException();
    }
}
