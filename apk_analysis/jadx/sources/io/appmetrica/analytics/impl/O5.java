package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener;

/* JADX INFO: loaded from: classes5.dex */
public final class O5 implements ActivityLifecycleListener {
    public final /* synthetic */ P5 a;

    public O5(P5 p5) {
        this.a = p5;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleListener
    public final void onEvent(Activity activity, ActivityEvent activityEvent) {
        int i = N5.a[activityEvent.ordinal()];
        if (i == 1) {
            this.a.b.resumeSession();
        } else {
            if (i != 2) {
                return;
            }
            this.a.b.pauseSession();
        }
    }
}
