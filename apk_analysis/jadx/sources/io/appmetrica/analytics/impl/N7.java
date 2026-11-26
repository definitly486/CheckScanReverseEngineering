package io.appmetrica.analytics.impl;

import defpackage.kn1;
import defpackage.nn1;
import defpackage.u96;
import io.appmetrica.analytics.coreapi.internal.clientcomponents.ClientComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class N7 implements ClientComponentsInitializer {
    public final List a = u96.i("io.appmetrica.analytics.adrevenue.admob.v23.internal.AdMobClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.applovin.v12.internal.AppLovinClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.fyber.v3.internal.FyberClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.ironsource.v7.internal.IronSourceClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.ironsource.v9.internal.IronSourceV9ClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherClientModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudClientModuleEntryPoint", "io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint", "io.appmetrica.analytics.reporterextension.internal.ReporterExtensionClientModuleEntryPoint");

    @Override // io.appmetrica.analytics.coreapi.internal.clientcomponents.ClientComponentsInitializer
    public final void onCreate() {
        if (C1169p4.l().a.b()) {
            C0893ed c0893ed = C1169p4.l().m;
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
}
