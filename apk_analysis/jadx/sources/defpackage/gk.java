package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public final class gk {
    public final WeakReference<sy6> a;
    public final a b;
    public final b c = new b();
    public Context d;
    public boolean e;

    public final class a implements je2 {
        public final double b;

        public a(sy6 sy6Var) {
            sy6.a aVar = sy6Var.a;
            b53.b<Integer> bVar = t14.a;
            Object obj = aVar.b.n.a.get(t14.d);
            this.b = ((Number) (obj == null ? Double.valueOf(1.0d) : obj)).doubleValue();
        }

        public final void a(Context context) {
            if (this.b == 1.0d) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
            gk gkVar = gk.this;
            sy6 sy6Var = gkVar.a.get();
            if (sy6Var == null) {
                gkVar.a();
                return;
            }
            o95 o95VarC = sy6Var.c();
            if (o95VarC != null) {
                o95VarC.b(o95VarC.c());
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            a(activity);
        }
    }

    public final class b implements ComponentCallbacks2 {
        public b() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
            gk gkVar = gk.this;
            synchronized (gkVar) {
                if (gkVar.a.get() == null) {
                    gkVar.a();
                }
                j59 j59Var = j59.a;
            }
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
            onTrimMemory(80);
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i) {
            o95 o95VarC;
            gk gkVar = gk.this;
            synchronized (gkVar) {
                try {
                    sy6 sy6Var = gkVar.a.get();
                    if (sy6Var != null) {
                        sy6.a aVar = sy6Var.a;
                        if (i >= 40) {
                            o95 o95VarC2 = sy6Var.c();
                            if (o95VarC2 != null) {
                                o95VarC2.clear();
                            }
                        } else if (i >= 20) {
                            a aVar2 = gkVar.b;
                            Context context = aVar.a;
                            double d = aVar2.b;
                            if (d != 1.0d) {
                                Context applicationContext = context.getApplicationContext();
                                applicationContext.getClass();
                                ((Application) applicationContext).registerActivityLifecycleCallbacks(aVar2);
                                gk gkVar2 = gk.this;
                                sy6 sy6Var2 = gkVar2.a.get();
                                if (sy6Var2 != null) {
                                    o95 o95VarC3 = sy6Var2.c();
                                    if (o95VarC3 != null) {
                                        o95VarC3.b((long) (d * o95VarC3.c()));
                                    }
                                } else {
                                    gkVar2.a();
                                }
                            }
                        } else if (i >= 10 && (o95VarC = sy6Var.c()) != null) {
                            o95VarC.e(o95VarC.getSize() / 2);
                        }
                    } else {
                        gkVar.a();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public gk(sy6 sy6Var) {
        this.a = new WeakReference<>(sy6Var);
        this.b = new a(sy6Var);
    }

    public final synchronized void a() {
        try {
            if (this.e) {
                return;
            }
            this.e = true;
            Context context = this.d;
            if (context != null) {
                this.b.a(context);
                context.unregisterComponentCallbacks(this.c);
            }
            this.a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }
}
