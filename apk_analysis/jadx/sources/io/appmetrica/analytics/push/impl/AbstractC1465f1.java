package io.appmetrica.analytics.push.impl;

import android.location.Location;
import android.os.SystemClock;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1465f1 {
    public static final long a(Location location) {
        return SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos();
    }
}
