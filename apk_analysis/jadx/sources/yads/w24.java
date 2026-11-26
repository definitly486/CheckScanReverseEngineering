package yads;

import android.app.Activity;
import android.os.Build;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class w24 {
    public static final /* synthetic */ defpackage.ze4[] d = {mo.a(w24.class, "activityRef", "getActivityRef()Landroid/app/Activity;", 0)};
    public final e55 a = new e55(null);
    public int b = -1;
    public boolean c;

    public final void a() {
        if (this.c) {
            try {
                e55 e55Var = this.a;
                defpackage.ze4 ze4Var = d[0];
                Activity activity = (Activity) e55Var.a.get();
                if (activity != null && !activity.isFinishing() && Build.VERSION.SDK_INT != 26) {
                    activity.setRequestedOrientation(this.b);
                }
            } catch (Exception e) {
                e.getMessage();
            } finally {
                this.c = false;
                this.b = -1;
                b(null);
            }
        }
    }

    public final void b(Activity activity) {
        e55 e55Var = this.a;
        defpackage.ze4 ze4Var = d[0];
        e55Var.getClass();
        e55Var.a = new WeakReference(activity);
    }

    public final void a(Activity activity) {
        int i;
        try {
            if (this.c || Build.VERSION.SDK_INT == 26) {
                return;
            }
            b(activity);
            this.b = activity.getRequestedOrientation();
            if (activity.getResources().getConfiguration().smallestScreenWidthDp >= 600) {
                i = 14;
            } else {
                i = activity.getResources().getConfiguration().orientation == 1 ? 7 : 6;
            }
            activity.setRequestedOrientation(i);
            this.c = true;
        } catch (Exception e) {
            e.getMessage();
        }
    }
}
