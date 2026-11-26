package io.appmetrica.analytics.push.impl;

import android.location.Location;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1443a implements LocationVerifier {
    public final Long a;

    public C1443a(Long l) {
        this.a = l;
    }

    @Override // io.appmetrica.analytics.push.location.LocationVerifier
    public final LocationStatus verifyLocation(Location location) {
        return (this.a == null || location.getAccuracy() <= ((float) this.a.longValue())) ? new LocationStatus.Success() : new LocationStatus.LocationIsNotAccurate(location.getAccuracy(), this.a.longValue());
    }
}
