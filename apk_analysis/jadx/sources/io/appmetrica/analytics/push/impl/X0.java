package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.yr;
import io.appmetrica.analytics.push.location.DetailedLocation;
import io.appmetrica.analytics.push.location.LocationProvider;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class X0 implements LocationProvider {
    public final Context a;

    public X0(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.location.LocationProvider
    public final DetailedLocation getLocation(String str, long j, LocationVerifier locationVerifier) {
        L l = new L();
        Context context = this.a;
        Iterator it = yr.G(new LocationProvider[]{l, new W0(context), new L0(context), new W0(context)}).iterator();
        while (it.hasNext()) {
            DetailedLocation location = ((LocationProvider) it.next()).getLocation(str, j, locationVerifier);
            if (location.getLocation() != null) {
                return location;
            }
        }
        return new DetailedLocation(null, new LocationStatus.LocationProviderReturnedNull("LazyPushLocationProvider"));
    }
}
