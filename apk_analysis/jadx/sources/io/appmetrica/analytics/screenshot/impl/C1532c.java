package io.appmetrica.analytics.screenshot.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1532c implements ActivityLifecycleListener {
    public final /* synthetic */ C1533d a;

    public C1532c(C1533d c1533d) {
        this.a = c1533d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i = AbstractC1531b.a[activityEvent.ordinal()];
        try {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                activity.unregisterScreenCaptureCallback(C1533d.d(this.a));
            } else {
                C1538i c1538i = this.a.c;
                if (c1538i == null || !c1538i.a) {
                    return;
                }
                activity.registerScreenCaptureCallback(this.a.a.getContext().getMainExecutor(), C1533d.d(this.a));
            }
        } catch (Throwable unused) {
        }
    }
}
