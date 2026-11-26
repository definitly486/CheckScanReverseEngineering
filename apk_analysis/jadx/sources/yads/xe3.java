package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class xe3 implements af3, ia4, qd6, o65 {
    public final lf4 a;
    public final g5 b;
    public final ye3 c;
    public final Context d;
    public ArrayList e;
    public j5 f;

    public xe3(Context context, lf4 lf4Var, ze3 ze3Var, g5 g5Var) {
        ye3 ye3Var = new ye3(ze3Var);
        this.a = lf4Var;
        this.b = g5Var;
        this.c = ye3Var;
        this.d = context.getApplicationContext();
    }

    public final void a() {
        g5 g5Var = this.b;
        String str = g5Var.a.a;
        if (str != null && str.length() != 0) {
            f5 f5Var = g5Var.b;
            f5Var.getClass();
            synchronized (f5.c) {
                f5Var.b.remove(str);
                f5Var.b.add(str);
            }
        }
        lf4 lf4Var = this.a;
        lf4Var.a.a(this.f);
    }

    @Override // yads.ia4
    public final void b() {
        if (j()) {
            return;
        }
        ye3 ye3Var = this.c;
        if (!ye3Var.d) {
            ye3Var.d = true;
            for (e75 e75Var : ye3.f) {
                ze3 ze3Var = ye3Var.a;
                Map map = ye3Var.b;
                h75 h75VarA = ze3Var.a();
                h75VarA.a.putAll(map);
                ze3Var.a(e75Var, h75VarA);
            }
        }
        if (i()) {
            a();
        }
    }

    @Override // yads.af3
    public final void c() {
        if (!j() || i()) {
            return;
        }
        a();
    }

    @Override // yads.qd6
    public final void d() {
        if (j()) {
            return;
        }
        ye3 ye3Var = this.c;
        if (!ye3Var.c) {
            ye3Var.c = true;
            for (e75 e75Var : ye3.e) {
                ze3 ze3Var = ye3Var.a;
                Map map = ye3Var.b;
                h75 h75VarA = ze3Var.a();
                h75VarA.a.putAll(map);
                ze3Var.a(e75Var, h75VarA);
            }
        }
        if (i()) {
            return;
        }
        a();
    }

    @Override // yads.ia4
    public final void e() {
        if (j()) {
            return;
        }
        ye3 ye3Var = this.c;
        if (!ye3Var.c) {
            ye3Var.c = true;
            for (e75 e75Var : ye3.e) {
                ze3 ze3Var = ye3Var.a;
                Map map = ye3Var.b;
                h75 h75VarA = ze3Var.a();
                h75VarA.a.putAll(map);
                ze3Var.a(e75Var, h75VarA);
            }
        }
        if (i()) {
            return;
        }
        a();
    }

    @Override // yads.o65
    public final void f() {
    }

    @Override // yads.af3
    public final void g() {
        if (j() && i()) {
            a();
        }
    }

    @Override // yads.qd6
    public final void h() {
        if (j()) {
            return;
        }
        ye3 ye3Var = this.c;
        if (!ye3Var.d) {
            ye3Var.d = true;
            for (e75 e75Var : ye3.f) {
                ze3 ze3Var = ye3Var.a;
                Map map = ye3Var.b;
                h75 h75VarA = ze3Var.a();
                h75VarA.a.putAll(map);
                ze3Var.a(e75Var, h75VarA);
            }
        }
        if (i()) {
            a();
        }
    }

    public final boolean i() {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(this.d);
        return fe5VarA == null || fe5VarA.u;
    }

    public final boolean j() {
        ArrayList arrayList = this.e;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }
}
