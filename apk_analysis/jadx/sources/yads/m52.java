package yads;

import android.view.View;
import defpackage.c1a;
import defpackage.j59;
import defpackage.nl3;
import yads.m52;

/* JADX INFO: loaded from: classes6.dex */
public final class m52 extends oh2 {
    public final f36 b;

    public m52(v41 v41Var, f36 f36Var) {
        super(v41Var);
        this.b = f36Var;
    }

    public final void a(final s52 s52Var, final k52 k52Var, k52 k52Var2, final fs2 fs2Var) {
        if (ls2.a(k52Var.o, k52Var2 != null ? k52Var2.o : null)) {
            return;
        }
        s52Var.setEnabled(((Boolean) k52Var.o.a(fs2Var)).booleanValue());
        as2 as2Var = k52Var.o;
        if (as2Var instanceof xr2) {
            return;
        }
        s52Var.e.a(as2Var.a(fs2Var, new nl3() { // from class: h2a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return m52.a(this.b, s52Var, k52Var, fs2Var, obj);
            }
        }));
    }

    public final void b(s52 s52Var, k52 k52Var, k52 k52Var2, fs2 fs2Var) {
        if (ls2.a(k52Var.s, k52Var2 != null ? k52Var2.s : null)) {
            return;
        }
        as2 as2Var = k52Var.s;
        s52Var.setColorOn(as2Var != null ? (Integer) as2Var.a(fs2Var) : null);
        if (ls2.a(k52Var.s)) {
            return;
        }
        c1a c1aVar = new c1a(this, s52Var, k52Var, fs2Var, 1);
        as2 as2Var2 = k52Var.s;
        s52Var.e.a(as2Var2 != null ? as2Var2.a(fs2Var, c1aVar) : null);
    }

    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        s52 s52Var = (s52) view;
        k52 k52Var = (k52) p41Var;
        k52 k52Var2 = (k52) p41Var2;
        a(s52Var, k52Var, k52Var2, ttVar.b);
        b(s52Var, k52Var, k52Var2, ttVar.b);
        s52Var.e.a(this.b.a(ttVar, k52Var.p, new l52(s52Var)));
    }

    public static final j59 a(m52 m52Var, s52 s52Var, k52 k52Var, fs2 fs2Var, Object obj) {
        m52Var.getClass();
        s52Var.setEnabled(((Boolean) k52Var.o.a(fs2Var)).booleanValue());
        return j59.a;
    }

    public static final j59 b(m52 m52Var, s52 s52Var, k52 k52Var, fs2 fs2Var, Object obj) {
        m52Var.getClass();
        as2 as2Var = k52Var.s;
        s52Var.setColorOn(as2Var != null ? (Integer) as2Var.a(fs2Var) : null);
        return j59.a;
    }
}
