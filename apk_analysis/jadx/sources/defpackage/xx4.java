package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes3.dex */
public final class xx4<T> {
    public static final Executor e;
    public final LinkedHashSet a;
    public final LinkedHashSet b;
    public final Handler c;
    public volatile wx4<T> d;

    public static class a<T> extends FutureTask<wx4<T>> {
        public xx4<T> b;

        @Override // java.util.concurrent.FutureTask
        public final void done() {
            try {
                if (isCancelled()) {
                    return;
                }
                try {
                    this.b.d(get());
                } catch (InterruptedException | ExecutionException e) {
                    this.b.d(new wx4<>(e));
                }
            } finally {
                this.b = null;
            }
        }
    }

    static {
        if (TJAdUnitConstants.String.TRUE.equals(System.getProperty("lottie.testing.directExecutor"))) {
            e = new o86();
        } else {
            e = Executors.newCachedThreadPool(new zx4());
        }
    }

    public xx4() {
        throw null;
    }

    public xx4(Callable<wx4<T>> callable, boolean z) {
        this.a = new LinkedHashSet(1);
        this.b = new LinkedHashSet(1);
        this.c = new Handler(Looper.getMainLooper());
        this.d = null;
        if (z) {
            try {
                d(callable.call());
                return;
            } catch (Throwable th) {
                d(new wx4<>(th));
                return;
            }
        }
        Executor executor = e;
        a aVar = new a(callable);
        aVar.b = this;
        executor.execute(aVar);
    }

    public final synchronized void a(tx4 tx4Var) {
        Throwable th;
        try {
            wx4<T> wx4Var = this.d;
            if (wx4Var != null && (th = wx4Var.b) != null) {
                tx4Var.onResult(th);
            }
            this.b.add(tx4Var);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void b(tx4 tx4Var) {
        nw4 nw4Var;
        try {
            wx4<T> wx4Var = this.d;
            if (wx4Var != null && (nw4Var = wx4Var.a) != null) {
                tx4Var.onResult(nw4Var);
            }
            this.a.add(tx4Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c() {
        wx4<T> wx4Var = this.d;
        if (wx4Var == null) {
            return;
        }
        nw4 nw4Var = wx4Var.a;
        if (nw4Var != null) {
            synchronized (this) {
                Iterator it = new ArrayList(this.a).iterator();
                while (it.hasNext()) {
                    ((tx4) it.next()).onResult(nw4Var);
                }
            }
            return;
        }
        Throwable th = wx4Var.b;
        synchronized (this) {
            ArrayList arrayList = new ArrayList(this.b);
            if (arrayList.isEmpty()) {
                gv4.c("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((tx4) it2.next()).onResult(th);
            }
        }
    }

    public final void d(wx4<T> wx4Var) {
        if (this.d != null) {
            ah.f("A task may only be set once.");
            return;
        }
        this.d = wx4Var;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            c();
        } else {
            this.c.post(new sr4(this, 1));
        }
    }

    public xx4(nw4 nw4Var) {
        this.a = new LinkedHashSet(1);
        this.b = new LinkedHashSet(1);
        this.c = new Handler(Looper.getMainLooper());
        this.d = null;
        d(new wx4<>(nw4Var));
    }
}
