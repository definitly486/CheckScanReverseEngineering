package com.google.protobuf;

import defpackage.fx0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j0<T, B> {
    public abstract void a(B b, int i, int i2);

    public abstract void b(B b, int i, long j);

    public abstract void c(B b, int i, T t);

    public abstract void d(B b, int i, fx0 fx0Var);

    public abstract void e(B b, int i, long j);

    public abstract k0 f(Object obj);

    public abstract k0 g(Object obj);

    public abstract int h(T t);

    public abstract int i(T t);

    public abstract void j(Object obj);

    public abstract k0 k(Object obj, Object obj2);

    public final boolean l(int i, g gVar, Object obj) throws InvalidProtocolBufferException {
        f fVar = gVar.a;
        int i2 = gVar.b;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            gVar.x(0);
            e(obj, i3, fVar.r());
            return true;
        }
        if (i4 == 1) {
            gVar.x(1);
            b(obj, i3, fVar.o());
            return true;
        }
        if (i4 == 2) {
            d(obj, i3, gVar.e());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw InvalidProtocolBufferException.e();
            }
            gVar.x(5);
            a(obj, i3, fVar.n());
            return true;
        }
        k0 k0VarM = m();
        int i5 = (i3 << 3) | 4;
        int i6 = i + 1;
        if (i6 >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (gVar.a() != Integer.MAX_VALUE && l(i6, gVar, k0VarM)) {
        }
        if (i5 != gVar.b) {
            throw InvalidProtocolBufferException.a();
        }
        c(obj, i3, p(k0VarM));
        return true;
    }

    public abstract k0 m();

    public abstract void n(Object obj, B b);

    public abstract void o(Object obj, T t);

    public abstract k0 p(Object obj);

    public abstract void q(T t, n0 n0Var);

    public abstract void r(T t, n0 n0Var);
}
