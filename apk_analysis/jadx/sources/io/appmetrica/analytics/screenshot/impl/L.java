package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;

/* JADX INFO: loaded from: classes5.dex */
public final class L implements ActivityLifecycleListener {
    public final /* synthetic */ M a;

    public L(M m) {
        this.a = m;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i = K.a[activityEvent.ordinal()];
        try {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                this.a.d = true;
                return;
            }
            C1541l c1541l = this.a.e;
            if (c1541l == null || !c1541l.a) {
                return;
            }
            this.a.d = false;
            M m = this.a;
            m.c.postDelayed(m.f, 0L);
        } catch (Throwable unused) {
        }
    }
}
