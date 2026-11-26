package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.tapjoy.TJAdUnitActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class qk8 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ rk8 b;

    public qk8(rk8 rk8Var) {
        this.b = rk8Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        if (activity instanceof TJAdUnitActivity) {
            this.b.a = activity;
            rk8.a(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        rk8 rk8Var = this.b;
        if (rk8Var.a == activity) {
            rk8Var.a = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        activity.getClass();
        bundle.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
    }
}
