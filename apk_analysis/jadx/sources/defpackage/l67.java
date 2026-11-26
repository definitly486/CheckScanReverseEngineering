package defpackage;

import java.util.Collection;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public final class l67 implements Runnable {
    public final /* synthetic */ Collection b;
    public final /* synthetic */ k67.x c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ Future e;
    public final /* synthetic */ boolean f;
    public final /* synthetic */ Future g;
    public final /* synthetic */ k67 h;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            k67 k67Var = l67.this.h;
            k67Var.A = true;
            dm1 dm1Var = k67Var.v;
            k67.t tVar = k67Var.t;
            dm1Var.c(tVar.a, tVar.b, tVar.c);
        }
    }

    public l67(k67 k67Var, Collection collection, k67.x xVar, boolean z, Future future, boolean z2, Future future2) {
        this.h = k67Var;
        this.b = collection;
        this.c = xVar;
        this.d = z;
        this.e = future;
        this.f = z2;
        this.g = future2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (k67.x xVar : this.b) {
            if (xVar != this.c) {
                xVar.a.j(k67.D);
            }
        }
        boolean z = this.d;
        k67 k67Var = this.h;
        if (z) {
            Future future = this.e;
            if (future != null) {
                future.cancel(false);
            }
            if (!this.f && k67Var.s.decrementAndGet() == Integer.MIN_VALUE) {
                k67Var.d.execute(new a());
            }
        }
        Future future2 = this.g;
        if (future2 != null) {
            future2.cancel(false);
        }
        k67Var.t();
    }
}
