package com.google.android.gms.common.api.internal;

import android.app.Activity;
import defpackage.oia;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ActivityLifecycleObserver {
    public static final ActivityLifecycleObserver of(Activity activity) {
        oia oiaVar;
        synchronized (activity) {
            try {
                LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
                oiaVar = (oia) fragment.getCallbackOrNull("LifecycleObserverOnStop", oia.class);
                if (oiaVar == null) {
                    oiaVar = new oia(fragment);
                    oiaVar.c = new ArrayList();
                    fragment.addCallback("LifecycleObserverOnStop", oiaVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new zab(oiaVar);
    }

    public abstract ActivityLifecycleObserver onStopCallOnce(Runnable runnable);
}
