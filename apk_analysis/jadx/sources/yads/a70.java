package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a70 implements View.OnClickListener {
    public final oc4 a;
    public final ic4 b;

    public a70(oc4 oc4Var, ic4 ic4Var) {
        this.a = oc4Var;
        this.b = ic4Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ic4 ic4Var = this.b;
        if (ic4Var != null) {
            ic4Var.a();
            ic4Var.e = false;
        }
        oc4 oc4Var = this.a;
        if (oc4Var.c) {
            oc4Var.a("first_click_on_controls");
            oc4Var.c = false;
        }
    }
}
