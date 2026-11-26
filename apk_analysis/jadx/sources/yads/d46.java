package yads;

import android.os.Handler;
import android.os.Looper;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d46 {
    public static final Handler a = new Handler(Looper.getMainLooper());

    public static final boolean a() {
        return defpackage.aa4.e(Thread.currentThread(), Looper.getMainLooper().getThread());
    }

    public static final void b(ll3 ll3Var) {
        ll3Var.invoke();
    }

    public static void a(ll3 ll3Var) {
        a.post(new defpackage.x(ll3Var, 4));
    }
}
