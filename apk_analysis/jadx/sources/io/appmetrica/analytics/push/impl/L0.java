package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.location.LocationProvider;

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
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.push.location.DetailedLocation getLocation(java.lang.String r8, long r9, io.appmetrica.analytics.push.location.LocationVerifier r11) {
        /*
            r7 = this;
            io.appmetrica.analytics.push.logger.internal.PublicLogger r0 = io.appmetrica.analytics.push.logger.internal.PublicLogger.INSTANCE
            java.lang.Object[] r1 = new java.lang.Object[]{r8}
            java.lang.String r2 = "Trying request new location from %s provider"
            r0.info(r2, r1)
            android.content.Context r1 = r7.a
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            r3 = 0
            if (r8 == 0) goto L21
            java.util.List r4 = io.appmetrica.analytics.push.impl.I1.a
            boolean r4 = r4.contains(r8)
            if (r4 == 0) goto L23
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r1, r2)
            if (r1 != 0) goto L9f
            goto L32
        L21:
            java.util.List r4 = io.appmetrica.analytics.push.impl.I1.a
        L23:
            int r2 = androidx.core.content.ContextCompat.checkSelfPermission(r1, r2)
            if (r2 != 0) goto L2a
            goto L32
        L2a:
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r1, r2)
            if (r1 != 0) goto L9f
        L32:
            android.content.Context r1 = r7.a
            r2 = 0
            java.lang.String r4 = "location"
            java.lang.Object r1 = r1.getSystemService(r4)     // Catch: java.lang.Throwable -> L3e
            android.location.LocationManager r1 = (android.location.LocationManager) r1     // Catch: java.lang.Throwable -> L3e
            goto L49
        L3e:
            r1 = move-exception
            io.appmetrica.analytics.push.logger.internal.PublicLogger r4 = io.appmetrica.analytics.push.logger.internal.PublicLogger.INSTANCE
            java.lang.Object[] r5 = new java.lang.Object[r2]
            java.lang.String r6 = "Failed to get location manager"
            r4.error(r1, r6, r5)
            r1 = r3
        L49:
            if (r1 != 0) goto L5d
            java.lang.Object[] r7 = new java.lang.Object[r2]
            java.lang.String r8 = "LocationManager is null"
            r0.info(r8, r7)
            io.appmetrica.analytics.push.location.DetailedLocation r7 = new io.appmetrica.analytics.push.location.DetailedLocation
            io.appmetrica.analytics.push.location.LocationStatus$LocationManagerIsNull r8 = new io.appmetrica.analytics.push.location.LocationStatus$LocationManagerIsNull
            r8.<init>()
            r7.<init>(r3, r8)
            return r7
        L5d:
            io.appmetrica.analytics.push.impl.m2 r0 = new io.appmetrica.analytics.push.impl.m2
            io.appmetrica.analytics.push.impl.J0 r2 = new io.appmetrica.analytics.push.impl.J0
            r2.<init>(r7, r1, r11, r8)
            io.appmetrica.analytics.push.impl.F0 r8 = io.appmetrica.analytics.push.impl.F0.b()
            io.appmetrica.analytics.push.impl.E0 r8 = r8.a()
            r0.<init>(r2, r8)
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.SECONDS
            r0.a(r9, r8)
            io.appmetrica.analytics.push.impl.K0 r8 = r7.b
            if (r8 == 0) goto L7b
            android.location.Location r8 = r8.c
            goto L7c
        L7b:
            r8 = r3
        L7c:
            io.appmetrica.analytics.push.impl.K0 r9 = r7.b
            if (r9 == 0) goto L83
            r1.removeUpdates(r9)
        L83:
            r7.b = r3
            if (r8 == 0) goto L92
            io.appmetrica.analytics.push.location.DetailedLocation r7 = new io.appmetrica.analytics.push.location.DetailedLocation
            io.appmetrica.analytics.push.location.LocationStatus$Success r9 = new io.appmetrica.analytics.push.location.LocationStatus$Success
            r9.<init>()
            r7.<init>(r8, r9)
            return r7
        L92:
            io.appmetrica.analytics.push.location.DetailedLocation r7 = new io.appmetrica.analytics.push.location.DetailedLocation
            io.appmetrica.analytics.push.location.LocationStatus$LocationProviderReturnedNull r8 = new io.appmetrica.analytics.push.location.LocationStatus$LocationProviderReturnedNull
            java.lang.String r9 = "ForceScanLocationProvider"
            r8.<init>(r9)
            r7.<init>(r3, r8)
            return r7
        L9f:
            java.lang.Object[] r7 = new java.lang.Object[]{r8}
            java.lang.String r9 = "Location permissions is not granted for %s"
            r0.info(r9, r7)
            io.appmetrica.analytics.push.location.DetailedLocation r7 = new io.appmetrica.analytics.push.location.DetailedLocation
            io.appmetrica.analytics.push.location.LocationStatus$PermissionIsNotGranted r9 = new io.appmetrica.analytics.push.location.LocationStatus$PermissionIsNotGranted
            r9.<init>(r8)
            r7.<init>(r3, r9)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.push.impl.L0.getLocation(java.lang.String, long, io.appmetrica.analytics.push.location.LocationVerifier):io.appmetrica.analytics.push.location.DetailedLocation");
    }
}
