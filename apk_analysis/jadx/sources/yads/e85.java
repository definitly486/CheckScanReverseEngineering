package yads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class e85 {
    public final AtomicInteger a;
    public final HashSet b;
    public final PriorityBlockingQueue c;
    public final PriorityBlockingQueue d;
    public final xv e;
    public final ss f;
    public final pp2 g;
    public final bn4[] h;
    public ew i;
    public final ArrayList j;
    public final ArrayList k;

    public e85(xv xvVar, ss ssVar, int i) {
        pp2 pp2Var = new pp2(new Handler(Looper.getMainLooper()));
        this.a = new AtomicInteger();
        this.b = new HashSet();
        this.c = new PriorityBlockingQueue();
        this.d = new PriorityBlockingQueue();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.e = xvVar;
        this.f = ssVar;
        this.h = new bn4[i];
        this.g = pp2Var;
    }

    public final void a() {
        ew ewVar = this.i;
        if (ewVar != null) {
            ewVar.f = true;
            ewVar.interrupt();
        }
        for (bn4 bn4Var : this.h) {
            if (bn4Var != null) {
                bn4Var.f = true;
                bn4Var.interrupt();
            }
        }
        ew ewVar2 = new ew(this.c, this.d, this.e, this.g);
        this.i = ewVar2;
        ewVar2.start();
        for (int i = 0; i < this.h.length; i++) {
            bn4 bn4Var2 = new bn4(this.d, this.f, this.e, this.g);
            this.h[i] = bn4Var2;
            bn4Var2.start();
        }
    }

    public final void a(d85 d85Var) {
        synchronized (this.b) {
            try {
                for (r75 r75Var : this.b) {
                    if (d85Var.a(r75Var)) {
                        r75Var.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(r75 r75Var) {
        r75Var.i = this;
        synchronized (this.b) {
            this.b.add(r75Var);
        }
        r75Var.h = Integer.valueOf(this.a.incrementAndGet());
        r75Var.a("add-to-queue");
        a(r75Var, 0);
        if (!r75Var.j) {
            this.d.add(r75Var);
        } else {
            this.c.add(r75Var);
        }
    }

    public final void a(r75 r75Var, int i) {
        w75 w75Var;
        synchronized (this.k) {
            try {
                Iterator it = this.k.iterator();
                while (it.hasNext()) {
                    ((t75) ((c85) it.next())).getClass();
                    es esVar = r75Var instanceof es ? (es) r75Var : null;
                    if (esVar != null && i == 3 && (w75Var = esVar.u) != null) {
                        w75Var.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(t75 t75Var) {
        synchronized (this.k) {
            this.k.add(t75Var);
        }
    }
}
