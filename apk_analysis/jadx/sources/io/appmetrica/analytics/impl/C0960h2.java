package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0960h2 implements ActivityLifecycleListener {
    public final ArrayList a = new ArrayList();
    public volatile K7 b = null;

    public final void a(K7 k7) {
        ArrayList arrayListA;
        synchronized (this) {
            this.b = k7;
            arrayListA = a();
        }
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            ((InterfaceC1075le) it.next()).consume(k7);
        }
    }

    public final void b() {
        C1169p4.l().e.registerListener(this, ActivityEvent.CREATED);
    }

    public final void c() {
        C1169p4.l().e.unregisterListener(this, ActivityEvent.CREATED);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        Intent intent = (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new C0908f2());
        String dataString = intent == null ? null : intent.getDataString();
        if (StringUtils.isNullOrEmpty(dataString)) {
            return;
        }
        C0934g2 c0934g2 = new C0934g2(dataString);
        synchronized (this) {
            try {
                K7 k7 = this.b;
                if (k7 == null) {
                    this.a.add(c0934g2);
                } else {
                    ((M9) C1169p4.l().c.a()).b.post(new RunnableC0882e2(c0934g2, k7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized ArrayList a() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.a);
        this.a.clear();
        return arrayList;
    }
}
