package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.g9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0941g9 {
    public static final Map h;
    public static final C0941g9 i;
    public final Jd a;
    public final Co b;
    public final J8 c;
    public final F9 d;
    public final InterfaceC1047kc e;
    public final InterfaceC0972he f;
    public final InterfaceC0787aa g;

    static {
        HashMap map = new HashMap();
        map.put(EnumC1252sa.FIRST_OCCURRENCE, 1);
        map.put(EnumC1252sa.NON_FIRST_OCCURENCE, 0);
        map.put(EnumC1252sa.UNKNOWN, -1);
        h = Collections.unmodifiableMap(map);
        i = new C0941g9(new C0951gj(), new C1136nn(), new C1101me(), new C0925fj(), new C1404ya(), new C1429za(), new C1379xa());
    }

    public C0941g9(C0915f9 c0915f9) {
        this(c0915f9.a, c0915f9.b, c0915f9.c, c0915f9.d, c0915f9.e, c0915f9.f, c0915f9.g);
    }

    public final C1200q9 a(Z8 z8, C1233rh c1233rh) {
        C1200q9 c1200q9 = new C1200q9();
        C1174p9 c1174p9A = this.f.a(z8.l, z8.m);
        C1070l9 c1070l9A = this.e.a(z8.g);
        if (c1174p9A != null) {
            c1200q9.g = c1174p9A;
        }
        if (c1070l9A != null) {
            c1200q9.f = c1070l9A;
        }
        String strA = this.a.a(z8.a);
        if (strA != null) {
            c1200q9.d = strA;
        }
        c1200q9.e = this.b.a(z8, c1233rh);
        String str = z8.j;
        if (str != null) {
            c1200q9.h = str;
        }
        Integer numA = this.d.a(z8);
        if (numA != null) {
            c1200q9.c = numA.intValue();
        }
        Long l = z8.c;
        if (l != null) {
            c1200q9.a = l.longValue();
        }
        Long l2 = z8.d;
        if (l2 != null) {
            c1200q9.n = l2.longValue();
        }
        Long l3 = z8.e;
        if (l3 != null) {
            c1200q9.o = l3.longValue();
        }
        Long l4 = z8.f;
        if (l4 != null) {
            c1200q9.b = l4.longValue();
        }
        Integer num = z8.k;
        if (num != null) {
            c1200q9.i = num.intValue();
        }
        c1200q9.j = this.c.a(z8.o);
        C1326v7 c1326v7 = z8.g;
        c1200q9.k = c1326v7 != null ? new C1248s6().a(c1326v7.a) : -1;
        String str2 = z8.n;
        if (str2 != null) {
            c1200q9.l = str2.getBytes();
        }
        EnumC1252sa enumC1252sa = z8.p;
        Integer num2 = enumC1252sa != null ? (Integer) h.get(enumC1252sa) : null;
        if (num2 != null) {
            c1200q9.m = num2.intValue();
        }
        EnumC1403y9 enumC1403y9 = z8.q;
        if (enumC1403y9 != null) {
            int iOrdinal = enumC1403y9.ordinal();
            if (iOrdinal == 0) {
                c1200q9.p = 0;
            } else if (iOrdinal == 1) {
                c1200q9.p = 1;
            } else if (iOrdinal == 2) {
                c1200q9.p = 2;
            }
        }
        Boolean bool = z8.r;
        if (bool != null) {
            c1200q9.q = bool.booleanValue();
        }
        Integer num3 = z8.s;
        if (num3 != null) {
            c1200q9.r = num3.intValue();
        }
        c1200q9.s = ((C1379xa) this.g).a(z8.t);
        return c1200q9;
    }

    public C0941g9(Jd jd, Co co, J8 j8, F9 f9, InterfaceC1047kc interfaceC1047kc, InterfaceC0972he interfaceC0972he, InterfaceC0787aa interfaceC0787aa) {
        this.a = jd;
        this.b = co;
        this.c = j8;
        this.d = f9;
        this.e = interfaceC1047kc;
        this.f = interfaceC0972he;
        this.g = interfaceC0787aa;
    }

    public static C0915f9 a() {
        return new C0915f9(i);
    }
}
