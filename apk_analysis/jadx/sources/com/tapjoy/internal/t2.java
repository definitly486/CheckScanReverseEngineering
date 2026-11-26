package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class t2 {
    public final long a;
    public final long b;

    static {
        new t2(-1L);
    }

    public t2() {
        this.a = 3600000L;
        try {
            this.b = SystemClock.elapsedRealtime() - 3600000;
        } catch (NullPointerException unused) {
            this.b = -1L;
        }
    }

    public t2(long j) {
        this.a = j;
        this.b = SystemClock.elapsedRealtime();
    }
}
