package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class Tk {
    public final C0989i5 a;
    public final C1134nl b;
    public final Wk c;
    public long d;
    public long e;
    public long f;
    public AtomicLong g;
    public boolean h;
    public long i;
    public long j;
    public boolean k;
    public final SystemTimeProvider l;

    public Tk(C0989i5 c0989i5, C1134nl c1134nl, Wk wk, SystemTimeProvider systemTimeProvider) {
        this.a = c0989i5;
        this.b = c1134nl;
        this.c = wk;
        this.l = systemTimeProvider;
        a();
    }

    public final void a() {
        Wk wk = this.c;
        long jElapsedRealtime = this.l.elapsedRealtime();
        Long l = wk.c;
        if (l != null) {
            jElapsedRealtime = l.longValue();
        }
        this.e = jElapsedRealtime;
        Wk wk2 = this.c;
        long jCurrentTimeMillis = this.l.currentTimeMillis();
        Long l2 = wk2.d;
        if (l2 != null) {
            jCurrentTimeMillis = l2.longValue();
        }
        this.f = jCurrentTimeMillis;
        Long l3 = this.c.b;
        this.d = l3 == null ? -1L : l3.longValue();
        Long l4 = this.c.f;
        this.g = new AtomicLong(l4 == null ? 0L : l4.longValue());
        Boolean bool = this.c.g;
        this.h = bool == null ? true : bool.booleanValue();
        Long l5 = this.c.h;
        long jLongValue = l5 != null ? l5.longValue() : 0L;
        this.i = jLongValue;
        Wk wk3 = this.c;
        long jLongValue2 = jLongValue - this.e;
        Long l6 = wk3.i;
        if (l6 != null) {
            jLongValue2 = l6.longValue();
        }
        this.j = jLongValue2;
        Boolean bool2 = this.c.j;
        this.k = bool2 == null ? false : bool2.booleanValue();
    }

    public final synchronized void b() {
        this.k = true;
        C1134nl c1134nl = this.b;
        c1134nl.a(C1134nl.k, Boolean.TRUE);
        c1134nl.a();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{id=");
        sb.append(this.d);
        sb.append(", creationTime=");
        sb.append(this.e);
        sb.append(", sessionCreationCurrentTimeMillis=");
        sb.append(this.f);
        sb.append(", currentReportId=");
        sb.append(this.g);
        sb.append(", sessionRequestParams=null, sleepStart=");
        sb.append(this.i);
        sb.append(", aliveNeeded=");
        sb.append(this.h);
        sb.append(", crashedSession=");
        return defpackage.sg.d(sb, this.k, '}');
    }
}
