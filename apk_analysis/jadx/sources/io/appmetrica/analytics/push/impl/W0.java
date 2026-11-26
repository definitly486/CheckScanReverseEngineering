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

/* JADX INFO: loaded from: classes5.dex */
public final class W0 implements LocationProvider {
    public final Context a;

    public W0(Context context) {
        this.a = context;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0080  */
    @Override // io.appmetrica.analytics.push.location.LocationProvider
    public final DetailedLocation getLocation(String str, long j, LocationVerifier locationVerifier) {
        LocationManager locationManager;
        Location lastKnownLocation;
        PublicLogger publicLogger = PublicLogger.INSTANCE;
        publicLogger.info("Trying get last known location", new Object[0]);
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
        for (String str2 : locationManager.getProviders(true)) {
            try {
                Context context = this.a;
                if (str2 != null) {
                    if (I1.a.contains(str2)) {
                        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                            lastKnownLocation = locationManager.getLastKnownLocation(str2);
                        } else {
                            lastKnownLocation = null;
                        }
                    }
                    if (lastKnownLocation == null && locationVerifier.verifyLocation(lastKnownLocation).isSuccess()) {
                        return new DetailedLocation(lastKnownLocation, new LocationStatus.Success());
                    }
                } else {
                    List list = I1.a;
                }
                if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    lastKnownLocation = locationManager.getLastKnownLocation(str2);
                } else {
                    lastKnownLocation = null;
                }
            } catch (Throwable th2) {
                PublicLogger.INSTANCE.error(th2, "Failed to get last known location", new Object[0]);
            }
            if (lastKnownLocation == null) {
            }
        }
        return new DetailedLocation(null, new LocationStatus.LocationProviderReturnedNull("LastKnownLocationProvider"));
    }
}
