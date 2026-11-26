package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.location.DetailedLocation;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.location.LocationVerifier;

/* JADX INFO: loaded from: classes5.dex */
public final class H0 implements LocationProvider {
    @Override // io.appmetrica.analytics.push.location.LocationProvider
    public final DetailedLocation getLocation(String str, long j, LocationVerifier locationVerifier) {
        return new L().getLocation(str, j, locationVerifier);
    }
}
