package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.jd8;
import defpackage.rm9;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class m94 {
    public static final Object f = new Object();
    public static volatile m94 g;
    public final g94 a;
    public final j94 b;
    public final jf5 c;
    public final bf5 d;
    public l94 e;

    public m94(g94 g94Var, j94 j94Var, jf5 jf5Var, bf5 bf5Var) {
        l94 l94Var = l94.INITIALIZATION_NOT_STARTED;
        this.a = g94Var;
        this.b = j94Var;
        this.c = jf5Var;
        this.d = bf5Var;
        this.e = l94Var;
    }

    public final void a(gf5 gf5Var) {
        if (gf5Var instanceof ff5) {
            synchronized (f) {
                this.e = l94.INITIALIZED;
                j59 j59Var = j59.a;
            }
        } else if (gf5Var instanceof ef5) {
            synchronized (f) {
                this.e = l94.INITIALIZATION_NOT_STARTED;
                j59 j59Var2 = j59.a;
            }
        }
        g94 g94Var = this.a;
        g94Var.a.a.execute(new defpackage.om(this, 5));
    }

    public final void b(Context context, t70 t70Var) {
        boolean z;
        boolean z2;
        synchronized (f) {
            try {
                mg3 mg3Var = new mg3(this.a, t70Var);
                z = true;
                z2 = false;
                if (this.e != l94.INITIALIZED) {
                    this.b.a(mg3Var);
                    if (this.e == l94.INITIALIZATION_NOT_STARTED) {
                        this.e = l94.INITIALIZING;
                        z2 = true;
                        z = false;
                    } else {
                        z = false;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.a.a.a.execute(new defpackage.nm(t70Var, 2));
        }
        if (z2) {
            jf5 jf5Var = this.c;
            bf5 bf5Var = this.d;
            jf5Var.getClass();
            Context context2 = ((do6) bf5Var).a;
            j90 j90Var = new j90(mw.a(context2, context2));
            jd8 jd8VarB = rm9.b();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            this.a.a.b.execute(new if5(context, bf5Var, defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(j90Var))));
        }
    }

    public static final void a(m94 m94Var, Context context, t70 t70Var) {
        m94Var.b(context, t70Var);
    }

    public static final void a(t70 t70Var) {
        t70Var.onInitializationCompleted();
    }

    public final void a(Context context, t70 t70Var) {
        s1.a(context);
        g94 g94Var = this.a;
        g94Var.a.b.execute(new defpackage.a03(this, context, t70Var, 1));
    }

    public static final void a(m94 m94Var) {
        ArrayList<mg3> arrayList;
        j94 j94Var = m94Var.b;
        synchronized (j94Var.a) {
            arrayList = new ArrayList(j94Var.b);
            j94Var.b.clear();
            j59 j59Var = j59.a;
        }
        for (mg3 mg3Var : arrayList) {
            if (mg3Var != null) {
                mg3Var.a();
            }
        }
    }
}
