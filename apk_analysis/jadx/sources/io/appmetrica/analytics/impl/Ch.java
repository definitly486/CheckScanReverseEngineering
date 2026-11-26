package io.appmetrica.analytics.impl;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Ch {
    public final C0783a6 a;
    public final boolean b;
    public final int c;
    public final HashMap d;
    public final Mh e;

    public Ch(C0783a6 c0783a6, boolean z, int i, HashMap map, Mh mh) {
        this.a = c0783a6;
        this.b = z;
        this.c = i;
        this.d = map;
        this.e = mh;
    }

    public final String toString() {
        return "ReportToSend(report=" + this.a + ", serviceDataReporterType=" + this.c + ", environment=" + this.e + ", isCrashReport=" + this.b + ", trimmedFields=" + this.d + ')';
    }
}
