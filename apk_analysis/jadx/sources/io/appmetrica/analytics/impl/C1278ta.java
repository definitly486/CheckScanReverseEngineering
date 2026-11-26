package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.kn1;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ta, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1278ta {
    public static final C1278ta d = new C1278ta();
    public final Ed a = new Ed();
    public final ServiceComponentsInitializer b = AbstractC1236rk.a();
    public boolean c = false;

    public final void a(Context context) {
        C1126nd c1126nd;
        Fa.a(context);
        this.b.onCreate(context);
        this.a.getClass();
        List<String> listA = Fa.I.s.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (String str : listA) {
            Object objLoadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(str, ModuleServiceEntryPoint.class);
            if (objLoadAndInstantiateClassWithDefaultConstructor == null) {
                c1126nd = new C1126nd(str, false);
            } else {
                Fa.I.p().a((ModuleServiceEntryPoint<Object>) objLoadAndInstantiateClassWithDefaultConstructor);
                c1126nd = new C1126nd(str, true);
            }
            arrayList.add(c1126nd);
        }
        new Dk(Fa.I.D().d).a(context);
        Fo fo = Fa.I.D().c;
        synchronized (fo) {
            fo.a.a();
        }
        Fa.I.q().a();
        new C1152od(Fa.I.d.b(), Fa.I.y(), "service_modules", new SystemTimeProvider()).a(arrayList);
    }

    public final void b(Context context) {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.c) {
                    a(context);
                    this.c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
