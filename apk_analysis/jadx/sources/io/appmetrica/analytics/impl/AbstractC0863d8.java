package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0863d8 {
    public final Qc a;

    public AbstractC0863d8() {
        Qc qc = new Qc(0);
        qc.a(EnumC0914f8.c, 0);
        qc.a(EnumC0914f8.d, 1);
        qc.a(EnumC0914f8.e, 2);
        qc.a(EnumC0914f8.f, 3);
        this.a = qc;
    }

    public final Qc a() {
        return this.a;
    }

    public abstract boolean a(Object obj, Object obj2);
}
