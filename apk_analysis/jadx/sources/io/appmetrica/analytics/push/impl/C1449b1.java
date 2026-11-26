package io.appmetrica.analytics.push.impl;

import android.location.Location;
import com.tapjoy.TapjoyCacheKt;
import defpackage.yr;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import io.appmetrica.analytics.push.model.Coordinates;
import io.appmetrica.analytics.push.model.Filters;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1449b1 implements PushFilter {
    public static final long b = TapjoyCacheKt.DEFAULT_TIME_TO_LIVE;
    public final LocationProvider a;

    public C1449b1(H0 h0) {
        this.a = h0;
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Filters filters = pushMessage.getFilters();
        Coordinates coordinates = filters == null ? null : filters.getCoordinates();
        List<Location> points = coordinates != null ? coordinates.getPoints() : null;
        if (points == null || points.isEmpty()) {
            return PushFilter.FilterResult.show();
        }
        LocationProvider locationProvider = this.a;
        Boolean passiveLocation = filters.getPassiveLocation();
        String str = "passive";
        if (passiveLocation != null && !passiveLocation.booleanValue()) {
            str = "";
        }
        Integer minAccuracy = filters.getMinAccuracy();
        C1443a c1443a = new C1443a(Long.valueOf(minAccuracy != null ? minAccuracy.intValue() : 500L));
        Long minRecency = filters.getMinRecency();
        C1462e2 c1462e2 = new C1462e2(Long.valueOf(minRecency != null ? minRecency.longValue() : b));
        Integer radius = coordinates.getRadius();
        LocationStatus locationStatus = locationProvider.getLocation(str, 30L, new H(yr.h0(new LocationVerifier[]{c1443a, c1462e2, new J1(points, radius != null ? radius.intValue() : 2000)}))).getLocationStatus();
        return locationStatus.isSuccess() ? PushFilter.FilterResult.show() : PushFilter.FilterResult.silence(locationStatus.getCategory(), locationStatus.getDetails());
    }
}
