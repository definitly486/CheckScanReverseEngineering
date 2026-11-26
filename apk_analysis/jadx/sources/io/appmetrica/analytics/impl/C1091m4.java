package io.appmetrica.analytics.impl;

import android.os.Bundle;
import defpackage.kn1;
import defpackage.qn1;
import defpackage.sj0;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1091m4 {
    public final C1065l4 a = new C1065l4();
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public S5 c;

    public final List<String> a() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            AdRevenueCollector adRevenueCollector = ((ModuleClientEntryPoint) it.next()).getAdRevenueCollector();
            if (adRevenueCollector != null) {
                arrayList.add(adRevenueCollector);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((AdRevenueCollector) obj).getEnabled()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((AdRevenueCollector) it2.next()).getSourceIdentifier());
        }
        return qn1.N(arrayList3);
    }

    public final ModuleAdRevenueProcessor b() {
        V5 v5;
        S5 s5 = this.c;
        if (s5 == null || (v5 = ((Y3) s5).b) == null) {
            return null;
        }
        return v5.a;
    }

    public final void c() {
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                moduleClientEntryPoint.onActivated();
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "onActivated", th);
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        C0900ek c0900ek = Bj.a;
        Map mapSingletonMap = Collections.singletonMap(str2, sj0.d(th));
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap(str, mapSingletonMap);
        mapSingletonMap2.getClass();
        c0900ek.getClass();
        c0900ek.a(new C0875dk("client_module_errors", mapSingletonMap2));
    }

    public final void a(ModuleClientEntryPoint<Object> moduleClientEntryPoint) {
        this.b.add(moduleClientEntryPoint);
    }

    public final void a(S5 s5) {
        this.c = s5;
        HashSet hashSet = new HashSet();
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                moduleClientEntryPoint.initClientSide(s5);
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "initClientSide", th);
                hashSet.add(moduleClientEntryPoint);
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        this.b.removeAll(hashSet);
    }

    public final void a(Bundle bundle, SdkIdentifiers sdkIdentifiers) {
        if (bundle == null) {
            return;
        }
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                ServiceConfigExtensionConfiguration serviceConfigExtensionConfiguration = moduleClientEntryPoint.getServiceConfigExtensionConfiguration();
                if (serviceConfigExtensionConfiguration != null) {
                    ServiceConfigUpdateListener serviceConfigUpdateListener = serviceConfigExtensionConfiguration.getServiceConfigUpdateListener2();
                    C1065l4 c1065l4 = this.a;
                    String identifier = moduleClientEntryPoint.getIdentifier();
                    c1065l4.getClass();
                    Bundle bundle2 = bundle.getBundle(identifier);
                    C1039k4 c1039k4 = bundle2 != null ? new C1039k4(sdkIdentifiers, serviceConfigExtensionConfiguration.getBundleConverter2().fromBundle(bundle2)) : null;
                    if (c1039k4 != null) {
                        serviceConfigUpdateListener.onServiceConfigUpdated(c1039k4);
                    }
                }
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "notifyModulesWithConfig", th);
            }
        }
    }
}
