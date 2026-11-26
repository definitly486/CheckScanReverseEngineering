package yads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class uf6 implements f00 {
    public final View a;

    public uf6(View view) {
        this.a = view;
    }

    @Override // yads.f00
    public final void a(ot3 ot3Var, h00 h00Var) {
        Context context = this.a.getContext();
        dh4 dh4Var = h00Var.c;
        i00 i00Var = dh4Var.a;
        ak akVar = h00Var.a;
        a4 a4Var = h00Var.b;
        l65 l65Var = h00Var.d;
        we3 we3Var = h00Var.e;
        i00Var.getClass();
        bh4 bh4Var = new bh4(context, new kf4(akVar, a4Var, dh4Var, l65Var, ot3Var, we3Var));
        this.a.setOnTouchListener(bh4Var);
        this.a.setOnClickListener(bh4Var);
    }
}
