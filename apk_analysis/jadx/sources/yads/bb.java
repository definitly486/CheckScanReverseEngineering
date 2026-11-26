package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class bb implements vf6 {
    public final dh4 a;
    public final g00 b;
    public final ot3 c;

    public bb(dh4 dh4Var, g00 g00Var, ot3 ot3Var) {
        this.a = dh4Var;
        this.b = g00Var;
        this.c = ot3Var;
    }

    @Override // yads.vf6
    public final void a(ak akVar, f00 f00Var) {
        ot3 ot3Var = akVar.d;
        if (ot3Var == null) {
            ot3Var = this.c;
        }
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
        if (view.getTag() == null) {
            view.setTag(bh6.a(akVar.a));
        }
    }
}
