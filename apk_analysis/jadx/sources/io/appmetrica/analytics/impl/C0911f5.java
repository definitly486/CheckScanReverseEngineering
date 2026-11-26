package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0911f5 extends AbstractC0885e5 {
    public C0911f5(C0989i5 c0989i5) {
        super(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC0885e5
    public final boolean b(int i) {
        return i < 113;
    }

    @Override // io.appmetrica.analytics.impl.AbstractC0885e5
    public final void c() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        C1024jf c1024jf = this.a.c;
        try {
            C1134nl c1134nl = new C1134nl(c1024jf, "background");
            Long lB = c1134nl.c.b(C1134nl.d);
            if (lB != null) {
                c1134nl.a(C1134nl.d, Long.valueOf(timeUnit.toMillis(lB.longValue())));
            }
            Long lB2 = c1134nl.c.b(C1134nl.e);
            if (lB2 != null) {
                c1134nl.a(C1134nl.e, Long.valueOf(timeUnit.toMillis(lB2.longValue())));
            }
        } catch (Throwable unused) {
        }
        try {
            C1134nl c1134nl2 = new C1134nl(c1024jf, "foreground");
            Long lB3 = c1134nl2.c.b(C1134nl.d);
            if (lB3 != null) {
                c1134nl2.a(C1134nl.d, Long.valueOf(timeUnit.toMillis(lB3.longValue())));
            }
            Long lB4 = c1134nl2.c.b(C1134nl.e);
            if (lB4 != null) {
                c1134nl2.a(C1134nl.e, Long.valueOf(timeUnit.toMillis(lB4.longValue())));
            }
        } catch (Throwable unused2) {
        }
    }
}
