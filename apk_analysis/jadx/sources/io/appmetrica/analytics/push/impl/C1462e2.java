package io.appmetrica.analytics.push.impl;

import android.location.Location;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1462e2 implements LocationVerifier {
    public final Long a;

    public C1462e2(Long l) {
        this.a = l != null ? Long.valueOf(TimeUnit.SECONDS.toNanos(l.longValue())) : null;
    }

    @Override // io.appmetrica.analytics.push.location.LocationVerifier
    public final LocationStatus verifyLocation(Location location) {
        long jA = AbstractC1465f1.a(location);
        Long l = this.a;
        return (l == null || jA <= l.longValue()) ? new LocationStatus.Success() : new LocationStatus.LocationIsNotRecent(jA, this.a.longValue());
    }
}
