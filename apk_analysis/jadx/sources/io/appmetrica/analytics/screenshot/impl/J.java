package io.appmetrica.analytics.screenshot.impl;

import android.app.ActivityManager;
import android.content.Context;
import defpackage.aa4;
import defpackage.kx2;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.screenshot.impl.J;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class J implements Runnable {
    public final /* synthetic */ M a;

    public J(M m) {
        this.a = m;
    }

    public static final Boolean a(M m, J j, C1541l c1541l, ActivityManager activityManager) {
        Object next;
        List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(200);
        if (runningServices == null) {
            runningServices = kx2.b;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
        }
        Iterator<T> it = runningServices.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!aa4.e(((ActivityManager.RunningServiceInfo) next).process, "com.android.systemui:screenshot"));
        if (((ActivityManager.RunningServiceInfo) next) != null) {
            ((C1549u) m.b).a("ServiceScreenshotCaptor");
        }
        return Boolean.valueOf(m.c.postDelayed(j, TimeUnit.SECONDS.toMillis(c1541l.b)));
    }

    @Override // java.lang.Runnable
    public final void run() {
        final C1541l c1541l = this.a.e;
        if (this.a.d || c1541l == null || !c1541l.a) {
            return;
        }
        Context context = this.a.a.getContext();
        final M m = this.a;
        SystemServiceUtils.accessSystemServiceByNameSafely(context, "activity", "running service screenshot captor", "ActivityManager", new FunctionWithThrowable() { // from class: za4
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                return J.a(m, this, c1541l, (ActivityManager) obj);
            }
        });
    }
}
