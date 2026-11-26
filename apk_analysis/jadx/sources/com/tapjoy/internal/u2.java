package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u2 {
    public static volatile long a;
    public static volatile long b;
    public static volatile long c;
    public static final /* synthetic */ int d = 0;

    static {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (u2.class) {
            a = jCurrentTimeMillis;
            b = jElapsedRealtime;
            c = a - b;
        }
    }
}
