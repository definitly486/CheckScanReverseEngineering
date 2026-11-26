package io.appmetrica.analytics.push.impl;

import android.location.Location;
import defpackage.kn1;
import io.appmetrica.analytics.push.location.LocationStatus;
import io.appmetrica.analytics.push.location.LocationVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class H implements LocationVerifier {
    public final List a;

    public H(List list) {
        this.a = list;
    }

    @Override // io.appmetrica.analytics.push.location.LocationVerifier
    public final LocationStatus verifyLocation(Location location) {
        Object next;
        List list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((LocationVerifier) it.next()).verifyLocation(location));
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (((LocationStatus) next).isSuccess());
        LocationStatus locationStatus = (LocationStatus) next;
        return locationStatus == null ? new LocationStatus.Success() : locationStatus;
    }
}
