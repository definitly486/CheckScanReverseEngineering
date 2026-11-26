package defpackage;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class p37 implements ComponentCallbacks2, up4 {
    public static final s37 l;
    public static final s37 m;
    public final com.bumptech.glide.a b;
    public final Context c;
    public final yo4 d;
    public final t37 e;
    public final r37 f;
    public final yk8 g;
    public final a h;
    public final ax1 i;
    public final CopyOnWriteArrayList<o37<Object>> j;
    public s37 k;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            p37 p37Var = p37.this;
            p37Var.d.a(p37Var);
        }
    }

    public class b implements ax1.a {
        public final t37 a;

        public b(t37 t37Var) {
            this.a = t37Var;
        }

        @Override // ax1.a
        public final void a(boolean z) {
            if (z) {
                synchronized (p37.this) {
                    t37 t37Var = this.a;
                    for (c37 c37Var : eb9.e(t37Var.a)) {
                        if (!c37Var.isComplete() && !c37Var.c()) {
                            c37Var.clear();
                            if (t37Var.c) {
                                t37Var.b.add(c37Var);
                            } else {
                                c37Var.i();
                            }
                        }
                    }
                }
            }
        }
    }

    static {
        s37 s37VarF = new s37().f(Bitmap.class);
        s37VarF.q = true;
        l = s37VarF;
        s37 s37VarF2 = new s37().f(up3.class);
        s37VarF2.q = true;
        m = s37VarF2;
    }

    public p37(com.bumptech.glide.a aVar, yo4 yo4Var, r37 r37Var, Context context) {
        s37 s37Var;
        t37 t37Var = new t37();
        bx1 bx1Var = aVar.g;
        this.g = new yk8();
        a aVar2 = new a();
        this.h = aVar2;
        this.b = aVar;
        this.d = yo4Var;
        this.f = r37Var;
        this.e = t37Var;
        this.c = context;
        Context applicationContext = context.getApplicationContext();
        b bVar = new b(t37Var);
        ((ih2) bx1Var).getClass();
        boolean z = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        ax1 hh2Var = z ? new hh2(applicationContext, bVar) : new wp5();
        this.i = hh2Var;
        synchronized (aVar.h) {
            if (aVar.h.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            aVar.h.add(this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            yo4Var.a(this);
        } else {
            eb9.f().post(aVar2);
        }
        yo4Var.a(hh2Var);
        this.j = new CopyOnWriteArrayList<>(aVar.d.d);
        wq3 wq3Var = aVar.d;
        synchronized (wq3Var) {
            s37Var = wq3Var.h;
            if (s37Var == null) {
                s37Var = new s37();
                s37Var.q = true;
                wq3Var.h = s37Var;
            }
        }
        synchronized (this) {
            s37 s37VarClone = s37Var.clone();
            if (s37VarClone.q && !s37VarClone.s) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            s37VarClone.s = true;
            s37VarClone.q = true;
            this.k = s37VarClone;
        }
    }

    public final <ResourceType> h37<ResourceType> a(Class<ResourceType> cls) {
        return new h37<>(this.b, this, cls, this.c);
    }

    public final h37<Bitmap> b() {
        return a(Bitmap.class).b(l);
    }

    public final void c(wk8<?> wk8Var) {
        if (wk8Var == null) {
            return;
        }
        boolean zK = k(wk8Var);
        c37 request = wk8Var.getRequest();
        if (zK) {
            return;
        }
        com.bumptech.glide.a aVar = this.b;
        synchronized (aVar.h) {
            try {
                Iterator it = aVar.h.iterator();
                while (it.hasNext()) {
                    if (((p37) it.next()).k(wk8Var)) {
                        return;
                    }
                }
                if (request != null) {
                    wk8Var.setRequest(null);
                    request.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void d() {
        try {
            Iterator it = eb9.e(this.g.b).iterator();
            while (it.hasNext()) {
                c((wk8) it.next());
            }
            this.g.b.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final h37<Drawable> e(Drawable drawable) {
        return a(Drawable.class).N(drawable).b(new s37().g(sn2.b));
    }

    public final h37<Drawable> f(Integer num) {
        h37 h37VarA = a(Drawable.class);
        return h37VarA.H(h37VarA.N(num));
    }

    public final h37<Drawable> g(Object obj) {
        return a(Drawable.class).N(obj);
    }

    public final h37<Drawable> h(String str) {
        return a(Drawable.class).N(str);
    }

    public final synchronized void i() {
        t37 t37Var = this.e;
        t37Var.c = true;
        for (c37 c37Var : eb9.e(t37Var.a)) {
            if (c37Var.isRunning()) {
                c37Var.pause();
                t37Var.b.add(c37Var);
            }
        }
    }

    public final synchronized void j() {
        t37 t37Var = this.e;
        t37Var.c = false;
        for (c37 c37Var : eb9.e(t37Var.a)) {
            if (!c37Var.isComplete() && !c37Var.isRunning()) {
                c37Var.i();
            }
        }
        t37Var.b.clear();
    }

    public final synchronized boolean k(wk8<?> wk8Var) {
        c37 request = wk8Var.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.e.a(request)) {
            return false;
        }
        this.g.b.remove(wk8Var);
        wk8Var.setRequest(null);
        return true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // defpackage.up4
    public final synchronized void onDestroy() {
        this.g.onDestroy();
        d();
        t37 t37Var = this.e;
        Iterator it = eb9.e(t37Var.a).iterator();
        while (it.hasNext()) {
            t37Var.a((c37) it.next());
        }
        t37Var.b.clear();
        this.d.b(this);
        this.d.b(this.i);
        eb9.f().removeCallbacks(this.h);
        com.bumptech.glide.a aVar = this.b;
        synchronized (aVar.h) {
            if (!aVar.h.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            aVar.h.remove(this);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // defpackage.up4
    public final synchronized void onStart() {
        j();
        this.g.onStart();
    }

    @Override // defpackage.up4
    public final synchronized void onStop() {
        this.g.onStop();
        i();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.e + ", treeNode=" + this.f + "}";
    }
}
