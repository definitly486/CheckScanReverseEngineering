package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.core.content.ContextCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.appmetrica.analytics.push.location.DetailedLocation;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class L0 implements LocationProvider {
    public final Context a;
    public K0 b = null;

    public L0(Context context) {
        this.a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        if (androidx.core.content.ContextCompat.checkSelfPermission(r1, "android.permission.ACCESS_COARSE_LOCATION") == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009f, code lost:
    
        r0.info("Location permissions is not granted for %s", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
    
        return new io.appmetrica.analytics.push.location.DetailedLocation(null, new io.appmetrica.analytics.push.location.LocationStatus.PermissionIsNotGranted(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (androidx.core.content.ContextCompat.checkSelfPermission(r1, "android.permission.ACCESS_FINE_LOCATION") == 0) goto L15;
     */
    @Override // io.appmetrica.analytics.push.location.LocationProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final DetailedLocation getLocation(String str, long j, LocationVerifier locationVerifier) {
        LocationManager locationManager;
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.info("Trying request new location from %s provider", str);
        Context context = this.a;
        if (str == null) {
            List list = I1.a;
        } else if (I1.a.contains(str)) {
        }
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") != 0) {
        }
        try {
            locationManager = (LocationManager) this.a.getSystemService(FirebaseAnalytics.Param.LOCATION);
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, "Failed to get location manager", new Object[0]);
            locationManager = null;
        }
        if (locationManager == null) {
            publicLogger.info("LocationManager is null", new Object[0]);
            return new DetailedLocation(null, new LocationStatus.LocationManagerIsNull());
        }
        new m2(new J0(this, locationManager, locationVerifier, str), F0.b().a()).a(j, TimeUnit.SECONDS);
        K0 k0 = this.b;
        Location location = k0 != null ? k0.c : null;
        K0 k1 = this.b;
        if (k1 != null) {
            locationManager.removeUpdates(k1);
        }
        this.b = null;
        return location != null ? new DetailedLocation(location, new LocationStatus.Success()) : new DetailedLocation(null, new LocationStatus.LocationProviderReturnedNull("ForceScanLocationProvider"));
    }
}
