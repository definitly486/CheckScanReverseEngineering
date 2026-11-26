package yads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class s1 {
    public static final s1 a = new s1();
    public static t1 b;

    public static final void a(Context context) {
        synchronized (a) {
            try {
                if (b == null) {
                    Context applicationContext = context.getApplicationContext();
                    Activity activity = null;
                    Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                    if (application != null) {
                        Activity activity2 = context instanceof Activity ? (Activity) context : null;
                        if (activity2 != null && !activity2.isFinishing() && !activity2.isDestroyed()) {
                            activity = activity2;
                        }
                        t1 t1Var = new t1(activity);
                        b = t1Var;
                        application.registerActivityLifecycleCallbacks(t1Var);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final Activity a() {
        Activity activityA;
        synchronized (a) {
            t1 t1Var = b;
            activityA = t1Var != null ? t1Var.a.a() : null;
        }
        return activityA;
    }
}
