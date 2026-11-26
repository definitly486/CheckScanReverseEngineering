package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import io.appmetrica.analytics.impl.C1356wc;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1186pl {
    public final C1138o a;
    public final C1374x5 b;
    public final ActivityLifecycleListener c;
    public final ActivityLifecycleListener d;
    public final C1190q e;
    public final C1086m f;
    public boolean g;

    public C1186pl(C1138o c1138o, C1086m c1086m, C1374x5 c1374x5, C1190q c1190q) {
        this.g = false;
        this.a = c1138o;
        this.f = c1086m;
        this.b = c1374x5;
        this.e = c1190q;
        this.c = new ActivityLifecycleListener() { // from class: t5a
            @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
            public final void onEvent(Activity activity, ActivityEvent activityEvent) {
                this.a.a(activity, activityEvent);
            }
        };
        this.d = new ActivityLifecycleListener() { // from class: u5a
            @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
            public final void onEvent(Activity activity, ActivityEvent activityEvent) {
                this.a.b(activity, activityEvent);
            }
        };
    }

    public final synchronized EnumC1112n a() {
        try {
            if (!this.g) {
                this.a.registerListener(this.c, ActivityEvent.RESUMED);
                this.a.registerListener(this.d, ActivityEvent.PAUSED);
                this.g = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a.b;
    }

    public final void b(final Activity activity, ActivityEvent activityEvent) {
        synchronized (this) {
            C1374x5 c1374x5 = this.b;
            InterfaceC1075le interfaceC1075le = new InterfaceC1075le() { // from class: v5a
                @Override // io.appmetrica.analytics.impl.InterfaceC1075le
                public final void consume(Object obj) {
                    this.a.b(activity, (C1356wc) obj);
                }
            };
            c1374x5.getClass();
            C1169p4.l().c.a().execute(new RunnableC1349w5(c1374x5, interfaceC1075le));
        }
    }

    public C1186pl(C1138o c1138o, C1086m c1086m) {
        this(c1138o, c1086m, new C1374x5(), new C1190q());
    }

    public final void b(Activity activity, C1356wc c1356wc) {
        if (this.g && this.e.a(activity, EnumC1164p.PAUSED)) {
            c1356wc.b(activity);
        }
    }

    public final void a(Activity activity, C1356wc c1356wc) {
        if (this.g && this.e.a(activity, EnumC1164p.RESUMED)) {
            c1356wc.a(activity);
        }
    }

    public final void a(final Activity activity, ActivityEvent activityEvent) {
        synchronized (this) {
            C1374x5 c1374x5 = this.b;
            InterfaceC1075le interfaceC1075le = new InterfaceC1075le() { // from class: w5a
                @Override // io.appmetrica.analytics.impl.InterfaceC1075le
                public final void consume(Object obj) {
                    this.a.a(activity, (C1356wc) obj);
                }
            };
            c1374x5.getClass();
            C1169p4.l().c.a().execute(new RunnableC1349w5(c1374x5, interfaceC1075le));
        }
    }
}
