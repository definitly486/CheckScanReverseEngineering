package yads;

import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cs {
    public final ArrayList a = new ArrayList(1);
    public final HashSet b = new HashSet(1);
    public final k14 c = new k14();
    public final tl2 d = new tl2();
    public Looper e;
    public kx5 f;
    public rw4 g;

    public abstract z04 a(h14 h14Var, aj0 aj0Var, long j);

    public final void a(l14 l14Var) {
        k14 k14Var = this.c;
        for (j14 j14Var : k14Var.c) {
            if (j14Var.b == l14Var) {
                k14Var.c.remove(j14Var);
            }
        }
    }

    public abstract void a(p16 p16Var);

    public abstract void a(z04 z04Var);

    public final void b(i14 i14Var) {
        this.e.getClass();
        boolean zIsEmpty = this.b.isEmpty();
        this.b.add(i14Var);
        if (zIsEmpty) {
            b();
        }
    }

    public abstract p04 c();

    public final void c(i14 i14Var) {
        this.a.remove(i14Var);
        if (!this.a.isEmpty()) {
            a(i14Var);
            return;
        }
        this.e = null;
        this.f = null;
        this.g = null;
        this.b.clear();
        e();
    }

    public abstract void d();

    public abstract void e();

    public void b() {
    }

    public void a() {
    }

    public final void a(kx5 kx5Var) {
        this.f = kx5Var;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((i14) it.next()).a(this, kx5Var);
        }
    }

    public final void a(ul2 ul2Var) {
        tl2 tl2Var = this.d;
        for (sl2 sl2Var : tl2Var.c) {
            if (sl2Var.a == ul2Var) {
                tl2Var.c.remove(sl2Var);
            }
        }
    }

    public final void a(i14 i14Var) {
        boolean zIsEmpty = this.b.isEmpty();
        this.b.remove(i14Var);
        if (zIsEmpty || !this.b.isEmpty()) {
            return;
        }
        a();
    }
}
