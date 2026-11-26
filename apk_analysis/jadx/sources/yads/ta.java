package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ta implements vf6 {
    public final dh4 a;
    public final g00 b;

    public ta(dh4 dh4Var, g00 g00Var) {
        this.a = dh4Var;
        this.b = g00Var;
    }

    @Override // yads.vf6
    public final void a(ak akVar, f00 f00Var) {
        ot3 ot3Var = akVar.d;
        g00 g00Var = this.b;
        dh4 dh4Var = this.a;
        g00Var.getClass();
        if (!akVar.e || ot3Var == null) {
            return;
        }
        f00Var.a(ot3Var, new h00(akVar, g00Var.a, dh4Var, g00Var.b, g00Var.c));
    }

    @Override // yads.vf6
    public final void a(View view, ak akVar) {
    }
}
