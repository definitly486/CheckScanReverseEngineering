package io.appmetrica.analytics.push.impl;

import android.location.LocationManager;
import io.appmetrica.analytics.push.location.LocationVerifier;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes5.dex */
public final class J0 extends l2 {
    public final /* synthetic */ LocationManager b;
    public final /* synthetic */ LocationVerifier c;
    public final /* synthetic */ String d;
    public final /* synthetic */ L0 e;

    public J0(L0 l0, LocationManager locationManager, LocationVerifier locationVerifier, String str) {
        this.e = l0;
        this.b = locationManager;
        this.c = locationVerifier;
        this.d = str;
    }

    @Override // io.appmetrica.analytics.push.impl.l2
    public final void a(CountDownLatch countDownLatch) {
        L0 l0 = this.e;
        LocationManager locationManager = this.b;
        K0 k0 = l0.b;
        if (k0 != null) {
            locationManager.removeUpdates(k0);
        }
        l0.b = null;
        L0 l1 = this.e;
        K0 k1 = new K0(countDownLatch, this.c);
        l1.b = k1;
        try {
            this.b.requestLocationUpdates(this.d, 0L, 0.0f, k1, this.a);
        } catch (Throwable th) {
            PublicLogger.INSTANCE.error(th, th.getMessage(), new Object[0]);
        }
    }
}
