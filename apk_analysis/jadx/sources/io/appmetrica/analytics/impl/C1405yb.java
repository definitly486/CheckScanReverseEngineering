package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.kn1;
import defpackage.nn1;
import io.appmetrica.analytics.AppMetricaConfig;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1405yb {
    public final C1296u2 a = new C1296u2();
    public final C1325v6 b = new C1325v6();
    public Nn c;
    public boolean d;
    public boolean e;

    public final synchronized void a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC0866db interfaceC0866db) {
        if (this.e) {
            return;
        }
        nn1.u(this.b.a, new Ta[]{this.a.a(context, appMetricaConfig, interfaceC0866db)});
        this.e = true;
    }

    public final synchronized void b() {
        if (this.d) {
            return;
        }
        C1325v6 c1325v6 = this.b;
        ArrayList arrayList = C1169p4.l().i.a;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        c1325v6.a.addAll(arrayList2);
        this.d = true;
    }

    public final synchronized void c() {
        try {
            if (this.c != null) {
                return;
            }
            C0857d2 c0857d2 = new C0857d2(this.b);
            this.c = new Nn(c0857d2);
            Mn mn = new Mn();
            mn.a.add(c0857d2);
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                mn.a.add(defaultUncaughtExceptionHandler);
            }
            Thread.setDefaultUncaughtExceptionHandler(mn);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        this.b.a.clear();
        this.d = false;
        this.e = false;
    }
}
