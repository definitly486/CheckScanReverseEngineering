package yads;

import android.app.Activity;
import defpackage.j59;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class v1 {
    public final ArrayList a;

    public v1(Activity activity) {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        if (activity != null) {
            arrayList.add(new WeakReference(activity));
        }
    }

    public final void a(Activity activity) {
        synchronized (this) {
            try {
                ArrayList arrayList = this.a;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    do {
                        if (it.hasNext()) {
                        }
                    } while (!defpackage.aa4.e(((WeakReference) it.next()).get(), activity));
                    j59 j59Var = j59.a;
                }
                this.a.add(new WeakReference(activity));
                Objects.toString(activity);
                j59 j59Var2 = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Activity activity) {
        Object next;
        synchronized (this) {
            try {
                Iterator it = this.a.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!defpackage.aa4.e(((WeakReference) next).get(), activity));
                WeakReference weakReference = (WeakReference) next;
                if (weakReference != null) {
                    this.a.remove(weakReference);
                    Objects.toString(activity);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Activity b() {
        Activity activity;
        synchronized (this) {
            defpackage.nn1.y(new defpackage.ly2(6), this.a);
            WeakReference weakReference = (WeakReference) defpackage.qn1.c0(this.a);
            activity = weakReference != null ? (Activity) weakReference.get() : null;
        }
        return activity;
    }

    public static final boolean b(WeakReference weakReference) {
        Activity activity = (Activity) weakReference.get();
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }

    public final Activity a() {
        Activity activity;
        synchronized (this) {
            defpackage.nn1.y(new defpackage.si1(8), this.a);
            WeakReference weakReference = (WeakReference) defpackage.qn1.V(this.a);
            activity = weakReference != null ? (Activity) weakReference.get() : null;
        }
        return activity;
    }

    public static final boolean a(WeakReference weakReference) {
        Activity activity = (Activity) weakReference.get();
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }
}
