package yads;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class ic5 {
    public final aj0 a;
    public final os4 b;
    public hc5 c;
    public hc5 d;
    public hc5 e;
    public long f;

    public ic5(aj0 aj0Var) {
        this.a = aj0Var;
        aj0Var.getClass();
        this.b = new os4(32);
        hc5 hc5Var = new hc5(0L);
        this.c = hc5Var;
        this.d = hc5Var;
        this.e = hc5Var;
    }

    public static hc5 a(hc5 hc5Var, mi0 mi0Var, jc5 jc5Var, os4 os4Var) {
        hc5 hc5VarA;
        if (mi0Var.b(1073741824)) {
            long j = jc5Var.b;
            int iP = 1;
            os4Var.c(1);
            hc5 hc5VarA2 = a(hc5Var, j, os4Var.a, 1);
            long j2 = j + 1;
            byte b = os4Var.a[0];
            boolean z = (b & 128) != 0;
            int i = b & 127;
            ca0 ca0Var = mi0Var.c;
            byte[] bArr = ca0Var.a;
            if (bArr == null) {
                ca0Var.a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            hc5VarA = a(hc5VarA2, j2, ca0Var.a, i);
            long j3 = j2 + ((long) i);
            if (z) {
                os4Var.c(2);
                hc5VarA = a(hc5VarA, j3, os4Var.a, 2);
                j3 += 2;
                iP = os4Var.p();
            }
            int i2 = iP;
            int[] iArr = ca0Var.d;
            if (iArr == null || iArr.length < i2) {
                iArr = new int[i2];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = ca0Var.e;
            if (iArr3 == null || iArr3.length < i2) {
                iArr3 = new int[i2];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i3 = i2 * 6;
                os4Var.c(i3);
                hc5VarA = a(hc5VarA, j3, os4Var.a, i3);
                j3 += (long) i3;
                os4Var.e(0);
                for (int i4 = 0; i4 < i2; i4++) {
                    iArr2[i4] = os4Var.p();
                    iArr4[i4] = os4Var.n();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = jc5Var.a - ((int) (j3 - jc5Var.b));
            }
            j06 j06Var = jc5Var.c;
            int i5 = u56.a;
            ca0Var.a(i2, iArr2, iArr4, j06Var.b, ca0Var.a, j06Var.a, j06Var.c, j06Var.d);
            long j4 = jc5Var.b;
            int i6 = (int) (j3 - j4);
            jc5Var.b = j4 + ((long) i6);
            jc5Var.a -= i6;
        } else {
            hc5VarA = hc5Var;
        }
        if (!mi0Var.b(268435456)) {
            mi0Var.c(jc5Var.a);
            return a(hc5VarA, jc5Var.b, mi0Var.d, jc5Var.a);
        }
        os4Var.c(4);
        hc5 hc5VarA3 = a(hc5VarA, jc5Var.b, os4Var.a, 4);
        int iN = os4Var.n();
        jc5Var.b += 4;
        jc5Var.a -= 4;
        mi0Var.c(iN);
        hc5 hc5VarA4 = a(hc5VarA3, jc5Var.b, mi0Var.d, iN);
        jc5Var.b += (long) iN;
        int i7 = jc5Var.a - iN;
        jc5Var.a = i7;
        ByteBuffer byteBuffer = mi0Var.g;
        if (byteBuffer == null || byteBuffer.capacity() < i7) {
            mi0Var.g = ByteBuffer.allocate(i7);
        } else {
            mi0Var.g.clear();
        }
        return a(hc5VarA4, jc5Var.b, mi0Var.g, jc5Var.a);
    }

    public final void a(long j) {
        hc5 hc5Var;
        if (j == -1) {
            return;
        }
        while (true) {
            hc5Var = this.c;
            if (j < hc5Var.b) {
                break;
            }
            aj0 aj0Var = this.a;
            ee eeVar = hc5Var.c;
            synchronized (aj0Var) {
                ee[] eeVarArr = aj0Var.d;
                int i = aj0Var.c;
                aj0Var.c = i + 1;
                eeVarArr[i] = eeVar;
                aj0Var.b--;
                aj0Var.notifyAll();
            }
            hc5 hc5Var2 = this.c;
            hc5Var2.c = null;
            hc5 hc5Var3 = hc5Var2.d;
            hc5Var2.d = null;
            this.c = hc5Var3;
        }
        if (this.d.a < hc5Var.a) {
            this.d = hc5Var;
        }
    }

    public final void a(hc5 hc5Var) {
        if (hc5Var.c == null) {
            return;
        }
        aj0 aj0Var = this.a;
        synchronized (aj0Var) {
            hc5 hc5Var2 = hc5Var;
            while (hc5Var2 != null) {
                try {
                    ee[] eeVarArr = aj0Var.d;
                    int i = aj0Var.c;
                    aj0Var.c = i + 1;
                    ee eeVar = hc5Var2.c;
                    eeVar.getClass();
                    eeVarArr[i] = eeVar;
                    aj0Var.b--;
                    hc5Var2 = hc5Var2.d;
                    if (hc5Var2 == null || hc5Var2.c == null) {
                        hc5Var2 = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            aj0Var.notifyAll();
        }
        hc5Var.c = null;
        hc5Var.d = null;
    }

    public static hc5 a(hc5 hc5Var, long j, ByteBuffer byteBuffer, int i) {
        while (j >= hc5Var.b) {
            hc5Var = hc5Var.d;
        }
        while (i > 0) {
            int iMin = Math.min(i, (int) (hc5Var.b - j));
            ee eeVar = hc5Var.c;
            byteBuffer.put(eeVar.a, ((int) (j - hc5Var.a)) + eeVar.b, iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == hc5Var.b) {
                hc5Var = hc5Var.d;
            }
        }
        return hc5Var;
    }

    public static hc5 a(hc5 hc5Var, long j, byte[] bArr, int i) {
        while (j >= hc5Var.b) {
            hc5Var = hc5Var.d;
        }
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (hc5Var.b - j));
            ee eeVar = hc5Var.c;
            System.arraycopy(eeVar.a, ((int) (j - hc5Var.a)) + eeVar.b, bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == hc5Var.b) {
                hc5Var = hc5Var.d;
            }
        }
        return hc5Var;
    }
}
