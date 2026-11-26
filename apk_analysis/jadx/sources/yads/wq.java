package yads;

import defpackage.j59;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class wq {
    public final defpackage.c31 a;
    public final n8 b;
    public final defpackage.y22 c;
    public final g1 d;
    public final zq e;
    public final AtomicBoolean f = new AtomicBoolean(false);

    public wq(defpackage.c31 c31Var, n8 n8Var, defpackage.y22 y22Var, g1 g1Var, zq zqVar) {
        this.a = c31Var;
        this.b = n8Var;
        this.c = y22Var;
        this.d = g1Var;
        this.e = zqVar;
    }

    public final void a() {
        if (this.f.compareAndSet(false, true)) {
            this.d.a(this.b, null);
            this.a.resumeWith(j59.a);
        }
    }

    public final void a(Object obj) {
        if (this.f.compareAndSet(false, true)) {
            defpackage.av0.c(this.c, null, null, new vq(this, obj, null), 3);
        }
    }
}
