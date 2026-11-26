package io.appmetrica.analytics.push.impl;

import android.location.Location;
import defpackage.qn1;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class J1 implements LocationVerifier {
    public final List a;
    public final float b;

    public J1(List list, float f) {
        this.a = list;
        this.b = f;
    }

    @Override // io.appmetrica.analytics.push.location.LocationVerifier
    public final LocationStatus verifyLocation(Location location) {
        Iterator it = qn1.R(this.a).iterator();
        while (it.hasNext()) {
            if (location.distanceTo((Location) it.next()) <= this.b) {
                return new LocationStatus.Success();
            }
        }
        return new LocationStatus.LocationIsNotNearPoints(this.a, this.b);
    }
}
