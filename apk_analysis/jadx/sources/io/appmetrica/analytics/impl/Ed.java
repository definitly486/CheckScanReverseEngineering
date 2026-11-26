package io.appmetrica.analytics.impl;

import defpackage.kn1;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Ed {
    public static ArrayList a() {
        C1126nd c1126nd;
        List<String> listA = C1169p4.l().m.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (String str : listA) {
            Object objLoadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(str, ModuleClientEntryPoint.class);
            if (objLoadAndInstantiateClassWithDefaultConstructor == null) {
                c1126nd = new C1126nd(str, false);
            } else {
                C1169p4.l().m().b.add((ModuleClientEntryPoint) objLoadAndInstantiateClassWithDefaultConstructor);
                c1126nd = new C1126nd(str, true);
            }
            arrayList.add(c1126nd);
        }
        return arrayList;
    }
}
