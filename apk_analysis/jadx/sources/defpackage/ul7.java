package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes5.dex */
public final class ul7 extends gx0 {
    public final transient byte[][] f;
    public final transient int[] g;

    public ul7(byte[][] bArr, int[] iArr) {
        super(gx0.e.b);
        this.f = bArr;
        this.g = iArr;
    }

    private final Object writeReplace() {
        return z();
    }

    @Override // defpackage.gx0
    public final String a() {
        throw null;
    }

    @Override // defpackage.gx0
    public final gx0 e(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new gx0(bArrDigest);
    }

    @Override // defpackage.gx0
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gx0) {
            gx0 gx0Var = (gx0) obj;
            if (gx0Var.f() == f() && s(0, gx0Var, f())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gx0
    public final int f() {
        return this.g[this.f.length - 1];
    }

    @Override // defpackage.gx0
    public final String g() {
        return z().g();
    }

    @Override // defpackage.gx0
    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.f;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.c = i3;
        return i3;
    }

    @Override // defpackage.gx0
    public final int i(int i, byte[] bArr) {
        bArr.getClass();
        return z().i(i, bArr);
    }

    @Override // defpackage.gx0
    public final byte[] k() {
        return w();
    }

    @Override // defpackage.gx0
    public final byte n(int i) {
        byte[][] bArr = this.f;
        int length = bArr.length - 1;
        int[] iArr = this.g;
        h.b(iArr[length], i, 1L);
        int iB = g.b(this, i);
        return bArr[iB][(i - (iB == 0 ? 0 : iArr[iB - 1])) + iArr[bArr.length + iB]];
    }

    @Override // defpackage.gx0
    public final int o(byte[] bArr) {
        bArr.getClass();
        return z().o(bArr);
    }

    @Override // defpackage.gx0
    public final boolean r(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        if (i >= 0 && i <= f() - i3 && i2 >= 0 && i2 <= bArr.length - i3) {
            int i4 = i3 + i;
            int iB = g.b(this, i);
            while (i < i4) {
                int[] iArr = this.g;
                int i5 = iB == 0 ? 0 : iArr[iB - 1];
                int i6 = iArr[iB] - i5;
                byte[][] bArr2 = this.f;
                int i7 = iArr[bArr2.length + iB];
                int iMin = Math.min(i4, i6 + i5) - i;
                if (h.a((i - i5) + i7, i2, iMin, bArr2[iB], bArr)) {
                    i2 += iMin;
                    i += iMin;
                    iB++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.gx0
    public final boolean s(int i, gx0 gx0Var, int i2) {
        gx0Var.getClass();
        if (i >= 0 && i <= f() - i2) {
            int i3 = i2 + i;
            int iB = g.b(this, i);
            int i4 = 0;
            while (i < i3) {
                int[] iArr = this.g;
                int i5 = iB == 0 ? 0 : iArr[iB - 1];
                int i6 = iArr[iB] - i5;
                byte[][] bArr = this.f;
                int i7 = iArr[bArr.length + iB];
                int iMin = Math.min(i3, i6 + i5) - i;
                if (gx0Var.r(i4, (i - i5) + i7, iMin, bArr[iB])) {
                    i4 += iMin;
                    i += iMin;
                    iB++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.gx0
    public final gx0 t(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = f();
        }
        if (i < 0) {
            c9.f(kv2.b(i, "beginIndex=", " < 0"));
            return null;
        }
        if (i2 > f()) {
            StringBuilder sbC = n7.c(i2, "endIndex=", " > length(");
            sbC.append(f());
            sbC.append(')');
            throw new IllegalArgumentException(sbC.toString().toString());
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            c9.f(rz0.c(i2, i, "endIndex=", " < beginIndex="));
            return null;
        }
        if (i == 0 && i2 == f()) {
            return this;
        }
        if (i == i2) {
            return gx0.e;
        }
        int iB = g.b(this, i);
        int iB2 = g.b(this, i2 - 1);
        byte[][] bArr = this.f;
        byte[][] bArr2 = (byte[][]) aq5.r(iB, iB2 + 1, bArr);
        int[] iArr = new int[bArr2.length * 2];
        int[] iArr2 = this.g;
        if (iB <= iB2) {
            int i4 = iB;
            int i5 = 0;
            while (true) {
                iArr[i5] = Math.min(iArr2[i4] - i, i3);
                int i6 = i5 + 1;
                iArr[i5 + bArr2.length] = iArr2[bArr.length + i4];
                if (i4 == iB2) {
                    break;
                }
                i4++;
                i5 = i6;
            }
        }
        int i7 = iB != 0 ? iArr2[iB - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i - i7) + iArr[length];
        return new ul7(bArr2, iArr);
    }

    @Override // defpackage.gx0
    public final String toString() {
        return z().toString();
    }

    @Override // defpackage.gx0
    public final gx0 v() {
        return z().v();
    }

    @Override // defpackage.gx0
    public final byte[] w() {
        byte[] bArr = new byte[f()];
        byte[][] bArr2 = this.f;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.g;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            aq5.g(i3, i4, i4 + i6, bArr2[i], bArr);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // defpackage.gx0
    public final void y(bu0 bu0Var, int i) {
        int iB = g.b(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.g;
            int i3 = iB == 0 ? 0 : iArr[iB - 1];
            int i4 = iArr[iB] - i3;
            byte[][] bArr = this.f;
            int i5 = iArr[bArr.length + iB];
            int iMin = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            gl7 gl7Var = new gl7(bArr[iB], i6, i6 + iMin, true);
            gl7 gl7Var2 = bu0Var.b;
            if (gl7Var2 == null) {
                gl7Var.g = gl7Var;
                gl7Var.f = gl7Var;
                bu0Var.b = gl7Var;
            } else {
                gl7 gl7Var3 = gl7Var2.g;
                gl7Var3.getClass();
                gl7Var3.b(gl7Var);
            }
            i2 += iMin;
            iB++;
        }
        bu0Var.c += (long) i;
    }

    public final gx0 z() {
        return new gx0(w());
    }
}
