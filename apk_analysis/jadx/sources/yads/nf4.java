package yads;

import android.os.Handler;
import android.os.Looper;
import defpackage.sk7;

/* JADX INFO: loaded from: classes6.dex */
public final class nf4 implements p1 {
    public final Handler a = new Handler(Looper.getMainLooper());
    public h80 b;

    public static final void a(nf4 nf4Var, me4 me4Var) {
        h80 h80Var = nf4Var.b;
        g80 g80Var = h80Var instanceof g80 ? (g80) h80Var : null;
        if (g80Var != null) {
            g80Var.a(me4Var);
        }
    }

    public static final void b(nf4 nf4Var) {
        h80 h80Var = nf4Var.b;
        if (h80Var != null) {
            h80Var.onAdClicked();
        }
        h80 h80Var2 = nf4Var.b;
        if (h80Var2 != null) {
            h80Var2.onLeftApplication();
        }
    }

    public static final void c(nf4 nf4Var) {
        h80 h80Var = nf4Var.b;
        if (h80Var != null) {
            h80Var.onReturnedToApplication();
        }
    }

    @Override // yads.p1
    public final void onReturnedToApplication() {
        this.a.post(new defpackage.ut2(this, 2));
    }

    public final void b() {
        this.a.post(new sk7(this, 1));
    }

    public static final void a(nf4 nf4Var, j5 j5Var) {
        h80 h80Var = nf4Var.b;
        if (h80Var != null) {
            h80Var.onImpression(j5Var);
        }
    }

    public final void a() {
        this.a.post(new defpackage.sr4(this, 5));
    }

    public static final void a(nf4 nf4Var) {
        h80 h80Var = nf4Var.b;
        if (h80Var != null) {
            h80Var.a();
        }
    }

    public final void a(me4 me4Var) {
        this.a.post(new defpackage.zx2(2, this, me4Var));
    }

    public final void a(j5 j5Var) {
        this.a.post(new defpackage.nb3(1, this, j5Var));
    }
}
