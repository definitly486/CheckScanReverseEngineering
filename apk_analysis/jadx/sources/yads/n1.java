package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class n1 {
    public final Context a;
    public final r1 b;
    public final i1 c;
    public final it5 d;
    public final m1 e;

    public n1(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, p1 p1Var, mt2 mt2Var) {
        i1 i1Var;
        Context applicationContext = context.getApplicationContext();
        r1 r1Var = new r1(context, e4Var, bf5Var, d9Var, p1Var, mt2Var);
        i1 i1Var2 = i1.g;
        if (i1Var2 == null) {
            synchronized (i1.f) {
                i1Var = i1.g;
                if (i1Var == null) {
                    i1Var = new i1();
                    i1.g = i1Var;
                }
            }
            i1Var2 = i1Var;
        }
        it5 it5VarA = ht5.a();
        this.a = applicationContext;
        this.b = r1Var;
        this.c = i1Var2;
        this.d = it5VarA;
        this.e = new m1(this);
    }

    public final void a() {
        this.c.a(this.a, (u1) this.e);
        this.c.a(this.a, (h95) this.e);
    }

    public final void b() {
        this.b.a(q1.BROWSER);
        this.c.b(this.a, this.e);
        i1 i1Var = this.c;
        Context context = this.a;
        m1 m1Var = this.e;
        synchronized (i1Var.a) {
            i1Var.c.remove(m1Var);
            i1Var.b(context);
            j59 j59Var = j59.a;
        }
        this.d.a(dr3.RETURN_TO_APP, this);
    }

    public final void c() {
        this.d.b(dr3.RETURN_TO_APP, this);
        this.c.a(this.a, (u1) this.e);
        this.c.a(this.a, (h95) this.e);
        this.b.b(q1.BROWSER);
    }

    public final void d() {
        this.b.a(q1.WEBVIEW);
    }

    public final void e() {
        this.b.b(q1.WEBVIEW);
    }
}
