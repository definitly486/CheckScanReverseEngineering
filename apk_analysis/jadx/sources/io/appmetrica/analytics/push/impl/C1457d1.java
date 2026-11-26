package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.location.Location;
import defpackage.u96;
import defpackage.yr;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import io.appmetrica.analytics.push.location.DetailedLocation;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import io.appmetrica.analytics.push.model.LocationRequestInfo;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1457d1 implements LazyPushTransformRule {
    public static final long d = 300;
    public static final Location e = new Location("");
    public final LocationRequestInfo a;
    public Location b = e;
    public final X0 c;

    public C1457d1(Context context, LocationRequestInfo locationRequestInfo) {
        this.a = locationRequestInfo;
        this.c = new X0(context);
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final String getNewValue(String str) {
        if (this.b == e) {
            X0 x0 = this.c;
            LocationRequestInfo locationRequestInfo = this.a;
            String provider = locationRequestInfo != null ? locationRequestInfo.getProvider() : null;
            if (provider == null) {
                provider = "network";
            }
            LocationRequestInfo locationRequestInfo2 = this.a;
            Long requestTimeoutSeconds = locationRequestInfo2 != null ? locationRequestInfo2.getRequestTimeoutSeconds() : null;
            long jLongValue = requestTimeoutSeconds != null ? requestTimeoutSeconds.longValue() : 30L;
            LocationRequestInfo locationRequestInfo3 = this.a;
            Integer minAccuracy = locationRequestInfo3 != null ? locationRequestInfo3.getMinAccuracy() : null;
            C1443a c1443a = new C1443a(Long.valueOf(minAccuracy != null ? minAccuracy.intValue() : 500L));
            LocationRequestInfo locationRequestInfo4 = this.a;
            Long minRecency = locationRequestInfo4 != null ? locationRequestInfo4.getMinRecency() : null;
            DetailedLocation location = x0.getLocation(provider, jLongValue, new H(yr.h0(new LocationVerifier[]{c1443a, new C1462e2(Long.valueOf(minRecency != null ? minRecency.longValue() : d))})));
            Location location2 = location.getLocation();
            LocationStatus locationStatus = location.getLocationStatus();
            if (location2 == null) {
                throw new A2(locationStatus.getCategory(), locationStatus.getDetails());
            }
            this.b = location2;
        }
        if ("lat".equals(str)) {
            return String.valueOf(this.b.getLatitude());
        }
        return "lon".equals(str) ? String.valueOf(this.b.getLongitude()) : "";
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final List getPatternList() {
        return u96.i("lat", "lon");
    }
}
