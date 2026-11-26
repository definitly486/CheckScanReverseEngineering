package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.il, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1004il {
    public final Go a;

    public C1004il(Go go) {
        this.a = go;
    }

    public final long a() {
        long jOptLong;
        Go go = this.a;
        synchronized (go) {
            jOptLong = go.a.a().optLong("session_id", -1L);
        }
        long j = jOptLong >= 10000000000L ? 1 + jOptLong : 10000000000L;
        this.a.b(j);
        return j;
    }
}
