package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1086m implements ActivityLifecycleListener {
    public final HashSet a = new HashSet();

    public C1086m(C1138o c1138o) {
        c1138o.registerListener(this, new ActivityEvent[0]);
    }

    public final void a(Activity activity) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((C1184pj) ((InterfaceC1060l) it.next())).a(activity);
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        C1169p4.l().c.a().execute(new RunnableC1034k(this, activity));
    }

    public final synchronized void a(InterfaceC1060l interfaceC1060l) {
        this.a.add(interfaceC1060l);
    }
}
