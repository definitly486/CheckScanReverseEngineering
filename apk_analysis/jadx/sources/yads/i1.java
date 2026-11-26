package yads;

import android.app.Application;
import android.content.Context;
import defpackage.j59;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class i1 {
    public static final Object f = new Object();
    public static volatile i1 g;
    public final Object a = new Object();
    public final WeakHashMap b = new WeakHashMap();
    public final WeakHashMap c = new WeakHashMap();
    public final h1 d = new h1(this);
    public boolean e;

    public final void a(Context context, u1 u1Var) {
        synchronized (this.a) {
            try {
                this.b.put(u1Var, null);
                if (!a()) {
                    a(context);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Context context) {
        synchronized (this.a) {
            if (this.b.isEmpty() && this.c.isEmpty()) {
                try {
                    if (a()) {
                        Context applicationContext = context.getApplicationContext();
                        applicationContext.getClass();
                        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this.d);
                        this.e = false;
                    }
                } catch (Throwable unused) {
                }
            }
            j59 j59Var = j59.a;
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            z = this.e;
        }
        return z;
    }

    public final void a(Context context, h95 h95Var) {
        synchronized (this.a) {
            try {
                this.c.put(h95Var, null);
                if (!a()) {
                    a(context);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this.d);
            this.e = true;
        } catch (Throwable unused) {
        }
    }

    public final void b(Context context, u1 u1Var) {
        synchronized (this.a) {
            this.b.remove(u1Var);
            b(context);
            j59 j59Var = j59.a;
        }
    }
}
