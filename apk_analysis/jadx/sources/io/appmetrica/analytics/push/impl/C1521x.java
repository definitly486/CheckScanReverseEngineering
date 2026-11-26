package io.appmetrica.analytics.push.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1521x {
    public final L1 a;
    public final String b;

    public C1521x(L1 l1, String str) {
        this.a = l1;
        this.b = str;
    }

    public final synchronized long a() {
        long j;
        L1 l1 = this.a;
        String str = this.b;
        l1.getClass();
        j = l1.a.getSharedPreferences(l1.b, 0).getLong("appmetrica_tracker_event_id_" + str, -1L) + 1;
        this.a.a(this.b, j);
        return j;
    }
}
