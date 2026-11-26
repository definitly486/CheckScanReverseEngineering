package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class wc6 implements View.OnClickListener {
    public final ot3 a;
    public final h00 b;
    public final p90 c;

    public wc6(ot3 ot3Var, h00 h00Var, p90 p90Var) {
        this.a = ot3Var;
        this.b = h00Var;
        this.c = p90Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        p90 p90Var = this.c;
        ot3 ot3Var = this.a;
        ot3 ot3Var2 = new ot3(ot3Var.a, ot3Var.b, ot3Var.c, p90Var.f, ot3Var.e, false);
        h00 h00Var = this.b;
        dh4 dh4Var = h00Var.c;
        i00 i00Var = dh4Var.a;
        ak akVar = h00Var.a;
        a4 a4Var = h00Var.b;
        l65 l65Var = h00Var.d;
        we3 we3Var = h00Var.e;
        i00Var.getClass();
        new kf4(akVar, a4Var, dh4Var, l65Var, ot3Var2, we3Var).onClick(view);
    }
}
