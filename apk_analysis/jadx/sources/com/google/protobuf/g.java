package com.google.protobuf;

import defpackage.fg;
import defpackage.fx0;
import defpackage.oo4;
import defpackage.rs6;
import defpackage.ui9;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class g {
    public final f a;
    public int b;
    public int c;
    public int d = 0;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ui9.values().length];
            a = iArr;
            try {
                iArr[ui9.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ui9.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ui9.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ui9.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ui9.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ui9.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ui9.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ui9.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ui9.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ui9.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ui9.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ui9.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[ui9.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[ui9.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[ui9.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[ui9.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[ui9.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public g(f fVar) {
        q.a(fVar, "input");
        this.a = fVar;
        fVar.d = this;
    }

    public static void A(int i) throws InvalidProtocolBufferException {
        if ((i & 7) != 0) {
            throw InvalidProtocolBufferException.i();
        }
    }

    public static void z(int i) throws InvalidProtocolBufferException {
        if ((i & 3) != 0) {
            throw InvalidProtocolBufferException.i();
        }
    }

    public final int a() {
        int iZ = this.d;
        if (iZ != 0) {
            this.b = iZ;
            this.d = 0;
        } else {
            iZ = this.a.z();
            this.b = iZ;
        }
        if (iZ == 0 || iZ == this.c) {
            return Integer.MAX_VALUE;
        }
        return iZ >>> 3;
    }

    public final <T> void b(T t, f0<T> f0Var, j jVar) {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            f0Var.e(t, this, jVar);
            if (this.b != this.c) {
                throw InvalidProtocolBufferException.i();
            }
            this.c = i;
        } catch (Throwable th) {
            this.c = i;
            throw th;
        }
    }

    public final <T> void c(T t, f0<T> f0Var, j jVar) throws InvalidProtocolBufferException {
        f fVar = this.a;
        int iA = fVar.A();
        if (fVar.a >= fVar.b) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i = fVar.i(iA);
        fVar.a++;
        f0Var.e(t, this, jVar);
        fVar.a(0);
        fVar.a--;
        fVar.h(i);
    }

    public final void d(List<Boolean> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof e;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(fVar.j()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Boolean.valueOf(fVar.j()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        e eVar = (e) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                eVar.addBoolean(fVar.j());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            eVar.addBoolean(fVar.j());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final fx0 e() throws InvalidProtocolBufferException.InvalidWireTypeException {
        x(2);
        return this.a.k();
    }

    public final void f(List<fx0> list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iZ;
        if ((this.b & 7) != 2) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            list.add(e());
            f fVar = this.a;
            if (fVar.e()) {
                return;
            } else {
                iZ = fVar.z();
            }
        } while (iZ == this.b);
        this.d = iZ;
    }

    public final void g(List<Double> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof i;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(fVar.l()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iA = fVar.A();
            A(iA);
            int iD = fVar.d() + iA;
            do {
                list.add(Double.valueOf(fVar.l()));
            } while (fVar.d() < iD);
            return;
        }
        i iVar = (i) list;
        int i3 = i & 7;
        if (i3 == 1) {
            do {
                iVar.addDouble(fVar.l());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iA2 = fVar.A();
        A(iA2);
        int iD2 = fVar.d() + iA2;
        do {
            iVar.addDouble(fVar.l());
        } while (fVar.d() < iD2);
    }

    public final void h(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(fVar.m()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Integer.valueOf(fVar.m()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                pVar.addInt(fVar.m());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            pVar.addInt(fVar.m());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final Object i(ui9 ui9Var, Class<?> cls, j jVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int i = a.a[ui9Var.ordinal()];
        f fVar = this.a;
        switch (i) {
            case 1:
                x(0);
                return Boolean.valueOf(fVar.j());
            case 2:
                return e();
            case 3:
                x(1);
                return Double.valueOf(fVar.l());
            case 4:
                x(0);
                return Integer.valueOf(fVar.m());
            case 5:
                x(5);
                return Integer.valueOf(fVar.n());
            case 6:
                x(1);
                return Long.valueOf(fVar.o());
            case 7:
                x(5);
                return Float.valueOf(fVar.p());
            case 8:
                x(0);
                return Integer.valueOf(fVar.q());
            case 9:
                x(0);
                return Long.valueOf(fVar.r());
            case 10:
                return o(cls, jVar);
            case 11:
                x(5);
                return Integer.valueOf(fVar.t());
            case 12:
                x(1);
                return Long.valueOf(fVar.u());
            case 13:
                x(0);
                return Integer.valueOf(fVar.v());
            case 14:
                x(0);
                return Long.valueOf(fVar.w());
            case 15:
                x(2);
                return fVar.y();
            case 16:
                x(0);
                return Integer.valueOf(fVar.A());
            case 17:
                x(0);
                return Long.valueOf(fVar.B());
            default:
                fg.c("unsupported field type.");
                return null;
        }
    }

    public final void j(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 2) {
                int iA = fVar.A();
                z(iA);
                int iD = fVar.d() + iA;
                do {
                    list.add(Integer.valueOf(fVar.n()));
                } while (fVar.d() < iD);
                return;
            }
            if (i2 != 5) {
                throw InvalidProtocolBufferException.e();
            }
            do {
                list.add(Integer.valueOf(fVar.n()));
                if (fVar.e()) {
                    return;
                } else {
                    iZ = fVar.z();
                }
            } while (iZ == this.b);
            this.d = iZ;
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 2) {
            int iA2 = fVar.A();
            z(iA2);
            int iD2 = fVar.d() + iA2;
            do {
                pVar.addInt(fVar.n());
            } while (fVar.d() < iD2);
            return;
        }
        if (i3 != 5) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            pVar.addInt(fVar.n());
            if (fVar.e()) {
                return;
            } else {
                iZ2 = fVar.z();
            }
        } while (iZ2 == this.b);
        this.d = iZ2;
    }

    public final void k(List<Long> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof v;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(fVar.o()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iA = fVar.A();
            A(iA);
            int iD = fVar.d() + iA;
            do {
                list.add(Long.valueOf(fVar.o()));
            } while (fVar.d() < iD);
            return;
        }
        v vVar = (v) list;
        int i3 = i & 7;
        if (i3 == 1) {
            do {
                vVar.addLong(fVar.o());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iA2 = fVar.A();
        A(iA2);
        int iD2 = fVar.d() + iA2;
        do {
            vVar.addLong(fVar.o());
        } while (fVar.d() < iD2);
    }

    public final void l(List<Float> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof n;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 2) {
                int iA = fVar.A();
                z(iA);
                int iD = fVar.d() + iA;
                do {
                    list.add(Float.valueOf(fVar.p()));
                } while (fVar.d() < iD);
                return;
            }
            if (i2 != 5) {
                throw InvalidProtocolBufferException.e();
            }
            do {
                list.add(Float.valueOf(fVar.p()));
                if (fVar.e()) {
                    return;
                } else {
                    iZ = fVar.z();
                }
            } while (iZ == this.b);
            this.d = iZ;
            return;
        }
        n nVar = (n) list;
        int i3 = i & 7;
        if (i3 == 2) {
            int iA2 = fVar.A();
            z(iA2);
            int iD2 = fVar.d() + iA2;
            do {
                nVar.addFloat(fVar.p());
            } while (fVar.d() < iD2);
            return;
        }
        if (i3 != 5) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            nVar.addFloat(fVar.p());
            if (fVar.e()) {
                return;
            } else {
                iZ2 = fVar.z();
            }
        } while (iZ2 == this.b);
        this.d = iZ2;
    }

    public final void m(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(fVar.q()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Integer.valueOf(fVar.q()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                pVar.addInt(fVar.q());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            pVar.addInt(fVar.q());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final void n(List<Long> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof v;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(fVar.r()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Long.valueOf(fVar.r()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        v vVar = (v) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                vVar.addLong(fVar.r());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            vVar.addLong(fVar.r());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final <T> T o(Class<T> cls, j jVar) throws InvalidProtocolBufferException {
        x(2);
        f0<T> f0VarA = rs6.c.a(cls);
        T tNewInstance = f0VarA.newInstance();
        c(tNewInstance, f0VarA, jVar);
        f0VarA.makeImmutable(tNewInstance);
        return tNewInstance;
    }

    public final void p(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 2) {
                int iA = fVar.A();
                z(iA);
                int iD = fVar.d() + iA;
                do {
                    list.add(Integer.valueOf(fVar.t()));
                } while (fVar.d() < iD);
                return;
            }
            if (i2 != 5) {
                throw InvalidProtocolBufferException.e();
            }
            do {
                list.add(Integer.valueOf(fVar.t()));
                if (fVar.e()) {
                    return;
                } else {
                    iZ = fVar.z();
                }
            } while (iZ == this.b);
            this.d = iZ;
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 2) {
            int iA2 = fVar.A();
            z(iA2);
            int iD2 = fVar.d() + iA2;
            do {
                pVar.addInt(fVar.t());
            } while (fVar.d() < iD2);
            return;
        }
        if (i3 != 5) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            pVar.addInt(fVar.t());
            if (fVar.e()) {
                return;
            } else {
                iZ2 = fVar.z();
            }
        } while (iZ2 == this.b);
        this.d = iZ2;
    }

    public final void q(List<Long> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof v;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(fVar.u()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iA = fVar.A();
            A(iA);
            int iD = fVar.d() + iA;
            do {
                list.add(Long.valueOf(fVar.u()));
            } while (fVar.d() < iD);
            return;
        }
        v vVar = (v) list;
        int i3 = i & 7;
        if (i3 == 1) {
            do {
                vVar.addLong(fVar.u());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iA2 = fVar.A();
        A(iA2);
        int iD2 = fVar.d() + iA2;
        do {
            vVar.addLong(fVar.u());
        } while (fVar.d() < iD2);
    }

    public final void r(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(fVar.v()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Integer.valueOf(fVar.v()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                pVar.addInt(fVar.v());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            pVar.addInt(fVar.v());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final void s(List<Long> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof v;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(fVar.w()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Long.valueOf(fVar.w()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        v vVar = (v) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                vVar.addLong(fVar.w());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            vVar.addLong(fVar.w());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final void t(List<String> list, boolean z) throws InvalidProtocolBufferException.InvalidWireTypeException {
        String strX;
        int iZ;
        int iZ2;
        if ((this.b & 7) != 2) {
            throw InvalidProtocolBufferException.e();
        }
        boolean z2 = list instanceof oo4;
        f fVar = this.a;
        if (z2 && !z) {
            oo4 oo4Var = (oo4) list;
            do {
                oo4Var.e(e());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        do {
            if (z) {
                x(2);
                strX = fVar.y();
            } else {
                x(2);
                strX = fVar.x();
            }
            list.add(strX);
            if (fVar.e()) {
                return;
            } else {
                iZ = fVar.z();
            }
        } while (iZ == this.b);
        this.d = iZ;
    }

    public final void u(List<Integer> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof p;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(fVar.A()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Integer.valueOf(fVar.A()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        p pVar = (p) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                pVar.addInt(fVar.A());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            pVar.addInt(fVar.A());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final void v(List<Long> list) throws InvalidProtocolBufferException {
        int iZ;
        int iZ2;
        boolean z = list instanceof v;
        int i = this.b;
        f fVar = this.a;
        if (!z) {
            int i2 = i & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(fVar.B()));
                    if (fVar.e()) {
                        return;
                    } else {
                        iZ = fVar.z();
                    }
                } while (iZ == this.b);
                this.d = iZ;
                return;
            }
            if (i2 != 2) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = fVar.d() + fVar.A();
            do {
                list.add(Long.valueOf(fVar.B()));
            } while (fVar.d() < iD);
            w(iD);
            return;
        }
        v vVar = (v) list;
        int i3 = i & 7;
        if (i3 == 0) {
            do {
                vVar.addLong(fVar.B());
                if (fVar.e()) {
                    return;
                } else {
                    iZ2 = fVar.z();
                }
            } while (iZ2 == this.b);
            this.d = iZ2;
            return;
        }
        if (i3 != 2) {
            throw InvalidProtocolBufferException.e();
        }
        int iD2 = fVar.d() + fVar.A();
        do {
            vVar.addLong(fVar.B());
        } while (fVar.d() < iD2);
        w(iD2);
    }

    public final void w(int i) throws InvalidProtocolBufferException {
        if (this.a.d() != i) {
            throw InvalidProtocolBufferException.j();
        }
    }

    public final void x(int i) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if ((this.b & 7) != i) {
            throw InvalidProtocolBufferException.e();
        }
    }

    public final boolean y() {
        int i;
        f fVar = this.a;
        if (fVar.e() || (i = this.b) == this.c) {
            return false;
        }
        return fVar.C(i);
    }
}
