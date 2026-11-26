package yads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class h1 implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ i1 a;

    public h1(i1 i1Var) {
        this.a = i1Var;
    }

    public final HashSet a(WeakHashMap weakHashMap) {
        HashSet hashSet;
        synchronized (this.a.a) {
            Set setKeySet = weakHashMap.keySet();
            hashSet = new HashSet(setKeySet.size());
            for (Object obj : setKeySet) {
                if (obj != null) {
                    hashSet.add(obj);
                }
            }
        }
        return hashSet;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Iterator it = a(this.a.c).iterator();
        while (it.hasNext()) {
            ((m1) ((h95) it.next())).a(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Iterator it = a(this.a.b).iterator();
        while (it.hasNext()) {
            ((u1) it.next()).a(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Iterator it = a(this.a.b).iterator();
        while (it.hasNext()) {
            ((u1) it.next()).b(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Iterator it = a(this.a.c).iterator();
        while (it.hasNext()) {
            ((m1) ((h95) it.next())).b(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.a.b(activity);
    }
}
