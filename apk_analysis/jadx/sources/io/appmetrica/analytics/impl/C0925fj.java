package io.appmetrica.analytics.impl;

import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0925fj implements F9 {
    @Override // io.appmetrica.analytics.impl.F9
    public final Integer a(Z8 z8) {
        EnumC1176pb enumC1176pb = z8.h;
        if (enumC1176pb != null) {
            return (Integer) AbstractC0871dg.c.get(enumC1176pb);
        }
        Map map = AbstractC0871dg.a;
        return null;
    }
}
