package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public final class by8 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ cy8 b;

    public by8(cy8 cy8Var) {
        this.b = cy8Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        cy8 cy8Var = this.b;
        if (cy8Var.d != activity) {
            return;
        }
        AlertDialog alertDialog = cy8Var.c;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        cy8Var.c = null;
        cy8Var.d = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        cy8 cy8Var = this.b;
        if (cy8Var.a == activity) {
            cy8Var.a = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        cy8 cy8Var = this.b;
        cy8Var.a = activity;
        if (cy8Var.c == null) {
            cy8Var.a(activity);
        }
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
