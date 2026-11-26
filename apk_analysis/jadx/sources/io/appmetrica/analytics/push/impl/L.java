package io.appmetrica.analytics.push.impl;

import android.location.Location;
import io.appmetrica.analytics.push.location.DetailedLocation;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class L implements LocationProvider {
    public volatile DetailedLocation a;

    @Override // io.appmetrica.analytics.push.location.LocationProvider
    public final DetailedLocation getLocation(String str, long j, LocationVerifier locationVerifier) {
        LocationProvider locationProvider = AbstractC1453c1.a;
        if (locationProvider == null) {
            return new DetailedLocation(null, new LocationStatus.CustomLocationProviderIsNull());
        }
        new m2(new K(this, locationProvider, str, j, locationVerifier), F0.b().a()).a(j, TimeUnit.SECONDS);
        DetailedLocation detailedLocation = this.a;
        if (detailedLocation == null) {
            return new DetailedLocation(null, new LocationStatus.ExpiredByTimeout());
        }
        if (!detailedLocation.getLocationStatus().isSuccess()) {
            return detailedLocation;
        }
        Location location = detailedLocation.getLocation();
        if (location == null) {
            return new DetailedLocation(null, new LocationStatus.LocationProviderReturnedNull("CustomLocationProvider"));
        }
        LocationStatus locationStatusVerifyLocation = locationVerifier.verifyLocation(location);
        return !locationStatusVerifyLocation.isSuccess() ? new DetailedLocation(null, locationStatusVerifyLocation) : detailedLocation;
    }
}
