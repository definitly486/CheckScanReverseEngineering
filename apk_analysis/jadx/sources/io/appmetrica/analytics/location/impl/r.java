package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.j59;
import defpackage.jl0;
import defpackage.me0;
import defpackage.v51;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.locationapi.internal.LocationReceiver;

/* JADX INFO: loaded from: classes5.dex */
public final class r extends u implements LocationReceiver {
    public final Looper e;
    public final long f;

    public r(Context context, Looper looper, PermissionResolutionStrategy permissionResolutionStrategy, LocationListener locationListener) {
        super(context, permissionResolutionStrategy, locationListener, "passive");
        this.e = looper;
        this.f = 1000L;
    }

    public static final j59 a(r rVar, LocationManager locationManager) {
        locationManager.requestLocationUpdates(rVar.d, rVar.f, 0.0f, rVar.c, rVar.e);
        return j59.a;
    }

    public static final j59 b(r rVar, LocationManager locationManager) {
        locationManager.removeUpdates(rVar.c);
        return j59.a;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiver
    public final void startLocationUpdates() {
        if (this.b.hasNecessaryPermissions(this.a)) {
            SystemServiceUtils.accessSystemServiceByNameSafely(this.a, FirebaseAnalytics.Param.LOCATION, me0.d(new StringBuilder("request location updates for "), this.d, " provider"), "location manager", new jl0(this, 8));
        }
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiver
    public final void stopLocationUpdates() {
        SystemServiceUtils.accessSystemServiceByNameSafely(this.a, FirebaseAnalytics.Param.LOCATION, "stop location updates for passive provider", "location manager", new v51(this, 6));
    }
}
