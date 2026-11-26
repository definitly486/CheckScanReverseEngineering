package com.my.tracker.obfuscated;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.mz0;
import defpackage.ot2;

/* JADX INFO: loaded from: classes4.dex */
public final class e1 {
    protected Location a;
    LocationManager c;
    int d = -1;
    protected final LocationListener b = new a();

    public class a implements LocationListener {
        public a() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            b3.a("LocationDataProvider: location has been updated");
            e1 e1Var = e1.this;
            e1Var.a = location;
            LocationManager locationManager = e1Var.c;
            if (locationManager != null) {
                locationManager.removeUpdates(this);
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            b3.a("LocationDataProvider: onProviderDisabled, provider – " + str);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            b3.a("LocationDataProvider: onProviderEnabled, provider –" + str);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            StringBuilder sbA = mz0.a(i, "LocationDataProvider: onStatusChanged, provider – ", str, ", status – ", ", extras – ");
            sbA.append(bundle);
            b3.a(sbA.toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public d1 a(int i, Context context) {
        float accuracy;
        long time;
        String provider;
        if (i == 0) {
            return d1.g;
        }
        this.d = -1;
        if (!q1.a("android.permission.ACCESS_FINE_LOCATION", context) || !q1.a("android.permission.ACCESS_COARSE_LOCATION", context)) {
            return d1.g;
        }
        if (q1.a()) {
            return d1.g;
        }
        LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.c = locationManager;
        if (locationManager == null) {
            return d1.g;
        }
        int i2 = 2;
        if (i == 2) {
            a();
        }
        Location location = this.a;
        if (location != null) {
            accuracy = location.getAccuracy();
            time = location.getTime();
            provider = location.getProvider();
        } else {
            location = null;
            accuracy = Float.MAX_VALUE;
            time = 0;
            provider = null;
        }
        for (String str : this.c.getAllProviders()) {
            try {
                Location lastKnownLocation = this.c.getLastKnownLocation(str);
                if (lastKnownLocation != null) {
                    float accuracy2 = lastKnownLocation.getAccuracy();
                    long time2 = lastKnownLocation.getTime();
                    if (location == null || (time2 > time && accuracy2 < accuracy)) {
                        provider = str;
                        location = lastKnownLocation;
                        accuracy = accuracy2;
                        time = time2;
                    }
                }
            } catch (SecurityException unused) {
                b3.a("LocationDataProvider: Permission android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION check was positive, but still got security exception on the location provider");
            }
        }
        if (location == null) {
            return d1.g;
        }
        provider.getClass();
        int i3 = 1;
        switch (provider) {
            case "passive":
                i2 = 4;
                i3 = i2;
                break;
            case "gps":
                i3 = i2;
                break;
            case "network":
                i2 = 3;
                i3 = i2;
                break;
        }
        return new d1(i3, location.getLatitude(), location.getLongitude(), location.getSpeed(), location.getAccuracy(), location.getTime());
    }

    public void a() {
        if (this.c != null) {
            Criteria criteria = new Criteria();
            criteria.setAccuracy(1);
            String bestProvider = this.c.getBestProvider(criteria, true);
            b3.a("LocationDataProvider: best provider is " + bestProvider);
            if (bestProvider != null) {
                m.f(new ot2(2, this, bestProvider));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        this.c.requestLocationUpdates(str, 2000L, 0.0f, this.b);
    }
}
