package com.google.protobuf;

import androidx.tracing.Trace;
import defpackage.fx0;
import defpackage.ui9;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ui9.values().length];
            a = iArr;
            try {
                iArr[ui9.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ui9.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ui9.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ui9.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ui9.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ui9.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ui9.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ui9.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ui9.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ui9.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ui9.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ui9.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[ui9.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[ui9.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[ui9.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[ui9.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[ui9.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[ui9.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static final class b {
        public int a;
        public long b;
        public Object c;
        public final j d;
        public int e;

        public b(j jVar) {
            jVar.getClass();
            this.d = jVar;
        }
    }

    public static int a(byte[] bArr, int i, b bVar) throws InvalidProtocolBufferException {
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.g();
        }
        if (i2 > bArr.length - iR) {
            throw InvalidProtocolBufferException.j();
        }
        if (i2 == 0) {
            bVar.c = fx0.c;
            return iR;
        }
        bVar.c = fx0.d(bArr, iR, i2);
        return iR + i2;
    }

    public static int b(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static long c(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static int d(f0 f0Var, byte[] bArr, int i, int i2, int i3, b bVar) throws InvalidProtocolBufferException {
        Object objNewInstance = f0Var.newInstance();
        int iU = u(objNewInstance, f0Var, bArr, i, i2, i3, bVar);
        f0Var.makeImmutable(objNewInstance);
        bVar.c = objNewInstance;
        return iU;
    }

    public static int e(f0 f0Var, byte[] bArr, int i, int i2, b bVar) throws InvalidProtocolBufferException {
        Object objNewInstance = f0Var.newInstance();
        int iV = v(objNewInstance, f0Var, bArr, i, i2, bVar);
        f0Var.makeImmutable(objNewInstance);
        bVar.c = objNewInstance;
        return iV;
    }

    public static int f(f0<?> f0Var, int i, byte[] bArr, int i2, int i3, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        int iE = e(f0Var, bArr, i2, i3, bVar);
        jVar.add(bVar.c);
        while (iE < i3) {
            int iR = r(bArr, iE, bVar);
            if (i != bVar.a) {
                break;
            }
            iE = e(f0Var, bArr, iR, i3, bVar);
            jVar.add(bVar.c);
        }
        return iE;
    }

    public static int g(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        e eVar = (e) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            iR = t(bArr, iR, bVar);
            eVar.addBoolean(bVar.b != 0);
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int h(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        i iVar = (i) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            iVar.addDouble(Double.longBitsToDouble(c(bArr, iR)));
            iR += 8;
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int i(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        p pVar = (p) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            pVar.addInt(b(bArr, iR));
            iR += 4;
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int j(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        v vVar = (v) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            vVar.addLong(c(bArr, iR));
            iR += 8;
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int k(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        n nVar = (n) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            nVar.addFloat(Float.intBitsToFloat(b(bArr, iR)));
            iR += 4;
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int l(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        p pVar = (p) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            iR = r(bArr, iR, bVar);
            pVar.addInt(f.b(bVar.a));
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int m(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        v vVar = (v) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            iR = t(bArr, iR, bVar);
            vVar.addLong(f.c(bVar.b));
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int n(byte[] bArr, int i, q.j<?> jVar, b bVar) throws InvalidProtocolBufferException {
        p pVar = (p) jVar;
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a + iR;
        while (iR < i2) {
            iR = r(bArr, iR, bVar);
            pVar.addInt(bVar.a);
        }
        if (iR == i2) {
            return iR;
        }
        throw InvalidProtocolBufferException.j();
    }

    public static int o(byte[] bArr, int i, b bVar) throws InvalidProtocolBufferException {
        int iR = r(bArr, i, bVar);
        int i2 = bVar.a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.g();
        }
        if (i2 == 0) {
            bVar.c = "";
            return iR;
        }
        bVar.c = new String(bArr, iR, i2, q.a);
        return iR + i2;
    }

    public static int p(int i, byte[] bArr, int i2, int i3, k0 k0Var, b bVar) throws InvalidProtocolBufferException {
        if ((i >>> 3) == 0) {
            throw InvalidProtocolBufferException.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iT = t(bArr, i2, bVar);
            k0Var.f(i, Long.valueOf(bVar.b));
            return iT;
        }
        if (i4 == 1) {
            k0Var.f(i, Long.valueOf(c(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iR = r(bArr, i2, bVar);
            int i5 = bVar.a;
            if (i5 < 0) {
                throw InvalidProtocolBufferException.g();
            }
            if (i5 > bArr.length - iR) {
                throw InvalidProtocolBufferException.j();
            }
            if (i5 == 0) {
                k0Var.f(i, fx0.c);
            } else {
                k0Var.f(i, fx0.d(bArr, iR, i5));
            }
            return iR + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw InvalidProtocolBufferException.b();
            }
            k0Var.f(i, Integer.valueOf(b(bArr, i2)));
            return i2 + 4;
        }
        k0 k0Var2 = new k0();
        int i6 = (i & (-8)) | 4;
        int i7 = bVar.e + 1;
        bVar.e = i7;
        if (i7 >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i8 = 0;
        while (i2 < i3) {
            int iR2 = r(bArr, i2, bVar);
            i8 = bVar.a;
            if (i8 == i6) {
                i2 = iR2;
                break;
            }
            i2 = p(i8, bArr, iR2, i3, k0Var2, bVar);
        }
        bVar.e--;
        if (i2 > i3 || i8 != i6) {
            throw InvalidProtocolBufferException.i();
        }
        k0Var.f(i, k0Var2);
        return i2;
    }

    public static int q(int i, byte[] bArr, int i2, b bVar) {
        int i3 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            bVar.a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & 127) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            bVar.a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & 127) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            bVar.a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & 127) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            bVar.a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                bVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int r(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return q(b2, bArr, i2, bVar);
        }
        bVar.a = b2;
        return i2;
    }

    public static int s(int i, byte[] bArr, int i2, int i3, q.j<?> jVar, b bVar) {
        p pVar = (p) jVar;
        int iR = r(bArr, i2, bVar);
        pVar.addInt(bVar.a);
        while (iR < i3) {
            int iR2 = r(bArr, iR, bVar);
            if (i != bVar.a) {
                break;
            }
            iR = r(bArr, iR2, bVar);
            pVar.addInt(bVar.a);
        }
        return iR;
    }

    public static int t(byte[] bArr, int i, b bVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            bVar.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & 127)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & 127)) << i4;
            b2 = b3;
            i3 = i5;
        }
        bVar.b = j2;
        return i3;
    }

    public static int u(Object obj, f0 f0Var, byte[] bArr, int i, int i2, int i3, b bVar) throws InvalidProtocolBufferException {
        c0 c0Var = (c0) f0Var;
        int i4 = bVar.e + 1;
        bVar.e = i4;
        if (i4 >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iB = c0Var.B(obj, bArr, i, i2, i3, bVar);
        bVar.e--;
        bVar.c = obj;
        return iB;
    }

    public static int v(Object obj, f0 f0Var, byte[] bArr, int i, int i2, b bVar) throws InvalidProtocolBufferException {
        int iQ = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iQ = q(i3, bArr, iQ, bVar);
            i3 = bVar.a;
        }
        int i4 = iQ;
        if (i3 < 0 || i3 > i2 - i4) {
            throw InvalidProtocolBufferException.j();
        }
        int i5 = bVar.e + 1;
        bVar.e = i5;
        if (i5 >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i6 = i4 + i3;
        f0Var.c(obj, bArr, i4, i6, bVar);
        bVar.e--;
        bVar.c = obj;
        return i6;
    }

    public static int w(int i, byte[] bArr, int i2, int i3, b bVar) throws InvalidProtocolBufferException {
        if ((i >>> 3) == 0) {
            throw InvalidProtocolBufferException.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return t(bArr, i2, bVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return r(bArr, i2, bVar) + bVar.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw InvalidProtocolBufferException.b();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = r(bArr, i2, bVar);
            i6 = bVar.a;
            if (i6 == i5) {
                break;
            }
            i2 = w(i6, bArr, i2, i3, bVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw InvalidProtocolBufferException.i();
        }
        return i2;
    }
}
