package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ya, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1404ya implements InterfaceC1047kc {
    @Override // io.appmetrica.analytics.impl.InterfaceC1047kc
    public final C1070l9 a(C1326v7 c1326v7) {
        C1070l9 c1070l9 = null;
        if ((c1326v7 != null ? c1326v7.b : null) != null && c1326v7.c != null) {
            c1070l9 = new C1070l9();
            c1070l9.b = c1326v7.b.doubleValue();
            c1070l9.a = c1326v7.c.doubleValue();
            Integer num = c1326v7.d;
            if (num != null) {
                c1070l9.g = num.intValue();
            }
            Integer num2 = c1326v7.e;
            if (num2 != null) {
                c1070l9.e = num2.intValue();
            }
            Integer num3 = c1326v7.f;
            if (num3 != null) {
                c1070l9.d = num3.intValue();
            }
            Integer num4 = c1326v7.g;
            if (num4 != null) {
                c1070l9.f = num4.intValue();
            }
            Long l = c1326v7.h;
            if (l != null) {
                c1070l9.c = l.longValue() / 1000;
            }
            String str = c1326v7.i;
            if (str != null) {
                if (str.equals("gps")) {
                    c1070l9.h = 1;
                } else if (str.equals("network")) {
                    c1070l9.h = 2;
                }
            }
            String str2 = c1326v7.j;
            if (str2 != null) {
                c1070l9.i = str2;
            }
        }
        return c1070l9;
    }
}
