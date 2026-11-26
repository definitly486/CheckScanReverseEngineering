package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import defpackage.aa4;
import defpackage.ra8;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0779a2 {
    public static E1 d;
    public final Context a;
    public final D1 b;
    public C1 c;

    public C0779a2(Context context, D1 d1) {
        this.a = context;
        this.b = d1;
    }

    public final IBinder a(Intent intent) {
        E1 e1 = d;
        if (e1 != null) {
            e1.a(intent);
        }
        String action = intent.getAction();
        if (action != null && ra8.C(action, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK", false)) {
            return new Mo();
        }
        C1 c1 = this.c;
        if (c1 != null) {
            return c1;
        }
        aa4.j("coreBinder");
        throw null;
    }

    public final void b() {
        Fa.a(this.a);
        PublicLogger.Companion.init(this.a);
        Context context = this.a;
        D1 d1 = this.b;
        E1 e1 = d;
        if (e1 == null) {
            Q1 q1 = new Q1(context, d1, new C1144o5(context));
            C1314uk c1314uk = Fa.I.v;
            T1 t1 = new T1(q1);
            LinkedHashMap linkedHashMap = c1314uk.a;
            Object arrayList = linkedHashMap.get(1);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(1, arrayList);
            }
            ((List) arrayList).add(t1);
            P1 p1 = new P1(Fa.I.d.b(), q1);
            d = p1;
            e1 = p1;
        }
        this.c = new C1(e1);
        Fa fa = Fa.I;
        fa.f = new C1438zj(fa.a, new Aj(e1));
        e1.onCreate();
    }

    public final boolean c(Intent intent) {
        E1 e1 = d;
        if (e1 != null) {
            e1.b(intent);
        }
        String action = intent.getAction();
        return (action == null || !ra8.C(action, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK", false)) && intent.getData() == null;
    }

    public final void d() {
        d = null;
    }

    public final void c() {
        E1 e1 = d;
        if (e1 != null) {
            e1.onDestroy();
        }
    }

    public final void a(Intent intent, int i) {
        E1 e1 = d;
        if (e1 != null) {
            e1.a(intent, i);
        }
    }

    public final int a(Intent intent, int i, int i2) {
        E1 e1 = d;
        if (e1 == null) {
            return 2;
        }
        e1.a(intent, i, i2);
        return 2;
    }

    public final void a(Configuration configuration) {
        E1 e1 = d;
        if (e1 != null) {
            e1.onConfigurationChanged(configuration);
        }
    }

    public final void b(Intent intent) {
        E1 e1 = d;
        if (e1 != null) {
            e1.c(intent);
        }
    }
}
