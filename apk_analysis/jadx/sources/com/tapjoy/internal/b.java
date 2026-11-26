package com.tapjoy.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.tapjoy.TJSession;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ c a;

    public b(c cVar) {
        this.a = cVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        TJSession tJSession;
        String str = activity.getClass().getName() + "@" + System.identityHashCode(activity);
        this.a.d.add(str);
        TapjoyLog.d("onActivityStarted: " + str + " activityCount = " + this.a.d.size());
        if (this.a.d.size() != 1 || (tJSession = this.a.c) == null) {
            return;
        }
        tJSession.initSession();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        TJSession tJSession;
        String str = activity.getClass().getName() + "@" + System.identityHashCode(activity);
        this.a.d.remove(str);
        TapjoyLog.d("onActivityStopped: " + str + " activityCount = " + this.a.d.size());
        if (!this.a.d.isEmpty() || (tJSession = this.a.c) == null) {
            return;
        }
        tJSession.endSession();
    }
}
