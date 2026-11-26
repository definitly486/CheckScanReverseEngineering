package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1384xf extends AbstractC0863d8 {
    @Override // io.appmetrica.analytics.impl.AbstractC0863d8
    public final boolean a(Df df, Df df2) {
        if (df.c) {
            return !df2.c || ((Number) this.a.a(df.e)).intValue() > ((Number) this.a.a(df2.e)).intValue();
        }
        return false;
    }
}
