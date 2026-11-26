package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.kn1;
import defpackage.nn1;
import defpackage.u96;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Q7 implements ServiceComponentsInitializer {
    public final List a = u96.i("io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint", "io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint", "io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoServiceModuleEntryPoint", "io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint", "io.appmetrica.analytics.billing.internal.BillingServiceModuleEntryPoint", "io.appmetrica.analytics.idsync.internal.IdSyncModuleEntryPoint");

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer
    public final void onCreate(Context context) {
        C0893ed c0893ed = Fa.I.s;
        List list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new B5((String) it.next()));
        }
        B5[] b5Arr = (B5[]) arrayList.toArray(new B5[0]);
        B5[] b5Arr2 = (B5[]) Arrays.copyOf(b5Arr, b5Arr.length);
        synchronized (c0893ed) {
            nn1.u(c0893ed.a, b5Arr2);
        }
    }
}
