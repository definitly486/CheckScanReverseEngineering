package com.google.protobuf;

import defpackage.ej0;
import defpackage.fx0;
import defpackage.i29;
import defpackage.ti0;
import defpackage.ud;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 {
    public static final k0 f = new k0(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public k0(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static k0 e(k0 k0Var, k0 k0Var2) {
        int i = k0Var.a + k0Var2.a;
        int[] iArrCopyOf = Arrays.copyOf(k0Var.b, i);
        System.arraycopy(k0Var2.b, 0, iArrCopyOf, k0Var.a, k0Var2.a);
        Object[] objArrCopyOf = Arrays.copyOf(k0Var.c, i);
        System.arraycopy(k0Var2.c, 0, objArrCopyOf, k0Var.a, k0Var2.a);
        return new k0(i, iArrCopyOf, objArrCopyOf, true);
    }

    public final void a() {
        if (this.e) {
            return;
        }
        ud.d();
    }

    public final void b(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    public final int c() {
        int iY;
        int iA0;
        int iY2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iC = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2) {
                        fx0 fx0Var = (fx0) this.c[i2];
                        int iY3 = CodedOutputStream.Y(i4);
                        int size = fx0Var.size();
                        iC = ej0.c(size, size, iY3, iC);
                    } else if (i5 == 3) {
                        iY = CodedOutputStream.Y(i4) * 2;
                        iA0 = ((k0) this.c[i2]).c();
                    } else {
                        if (i5 != 5) {
                            i29.a(InvalidProtocolBufferException.e());
                            return 0;
                        }
                        ((Integer) this.c[i2]).getClass();
                        iY2 = CodedOutputStream.Y(i4) + 4;
                    }
                } else {
                    ((Long) this.c[i2]).getClass();
                    iY2 = CodedOutputStream.Y(i4) + 8;
                }
                iC = iY2 + iC;
            } else {
                long jLongValue = ((Long) this.c[i2]).longValue();
                iY = CodedOutputStream.Y(i4);
                iA0 = CodedOutputStream.a0(jLongValue);
            }
            iC = iA0 + iY + iC;
        }
        this.d = iC;
        return iC;
    }

    public final boolean d(int i, f fVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iZ;
        a();
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            f(i, Long.valueOf(fVar.r()));
            return true;
        }
        if (i3 == 1) {
            f(i, Long.valueOf(fVar.o()));
            return true;
        }
        if (i3 == 2) {
            f(i, fVar.k());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw InvalidProtocolBufferException.e();
            }
            f(i, Integer.valueOf(fVar.n()));
            return true;
        }
        k0 k0Var = new k0();
        do {
            iZ = fVar.z();
            if (iZ == 0) {
                break;
            }
        } while (k0Var.d(iZ, fVar));
        fVar.a((i2 << 3) | 4);
        f(i, k0Var);
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        int i = this.a;
        if (i == k0Var.a) {
            int[] iArr = this.b;
            int[] iArr2 = k0Var.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = k0Var.c;
            int i3 = this.a;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final void f(int i, Object obj) {
        a();
        b(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void g(n0 n0Var) {
        if (this.a == 0) {
            return;
        }
        ((h) n0Var).getClass();
        for (int i = 0; i < this.a; i++) {
            int i2 = this.b[i];
            Object obj = this.c[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                ((h) n0Var).f(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                ((h) n0Var).c(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                ((h) n0Var).a(i3, (fx0) obj);
            } else if (i4 == 3) {
                CodedOutputStream codedOutputStream = ((h) n0Var).a;
                codedOutputStream.u0(i3, 3);
                ((k0) obj).g(n0Var);
                codedOutputStream.u0(i3, 4);
            } else {
                if (i4 != 5) {
                    ti0.f(InvalidProtocolBufferException.e());
                    return;
                }
                ((h) n0Var).b(i3, ((Integer) obj).intValue());
            }
        }
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = (527 + i) * 31;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public k0() {
        this(0, new int[8], new Object[8], true);
    }
}
