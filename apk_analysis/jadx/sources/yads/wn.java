package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.wea;

/* JADX INFO: loaded from: classes6.dex */
public final class wn {
    public final Handler a;
    public final v5 b;
    public pm6 c;

    public wn(Context context, e4 e4Var, do6 do6Var, t5 t5Var) {
        Handler handler = new Handler(Looper.getMainLooper());
        v5 v5Var = new v5(context, e4Var, t5Var, do6Var);
        this.a = handler;
        this.b = v5Var;
    }

    public final void a(m4 m4Var) {
        this.b.a(m4Var.b, m4Var.c);
        this.a.post(new defpackage.mu(3, this, m4Var));
    }

    public final void b() {
        this.b.a();
        this.a.post(new defpackage.fp(this, 3));
    }

    public final void c() {
        this.a.post(new wea(this, 1));
    }

    public final void d() {
        this.a.post(new defpackage.oh5(this, 3));
    }

    public static final void c(wn wnVar) {
        pm6 pm6Var = wnVar.c;
        if (pm6Var != null) {
            pm6Var.a();
        }
    }

    public static final void d(wn wnVar) {
        pm6 pm6Var = wnVar.c;
    }

    public static final void b(wn wnVar) {
        pm6 pm6Var = wnVar.c;
        if (pm6Var != null) {
            pm6Var.b();
        }
    }

    public static final void a(wn wnVar, m4 m4Var) {
        pm6 pm6Var = wnVar.c;
        if (pm6Var != null) {
            pm6Var.a(m4Var);
        }
    }

    public final void a(j5 j5Var) {
        this.a.post(new defpackage.nu(5, this, j5Var));
    }

    public static final void a(wn wnVar, j5 j5Var) {
        pm6 pm6Var = wnVar.c;
        if (pm6Var != null) {
            pm6Var.a(j5Var);
        }
    }

    public final void a() {
        this.a.post(new defpackage.ou(this, 4));
    }

    public static final void a(wn wnVar) {
        pm6 pm6Var = wnVar.c;
    }
}
