package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class xb4 extends rf6 {
    public xb4(vb4 vb4Var) {
        super(vb4Var);
    }

    @Override // yads.rf6
    public final void a(ak akVar, vf6 vf6Var, Object obj) {
        vb4 vb4Var = (vb4) b();
        if (vb4Var == null) {
            return;
        }
        vf6Var.a(vb4Var, akVar);
        vf6Var.a(akVar, new eb4(vb4Var));
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        vb4 vb4Var = (vb4) view;
        by3 by3Var = (by3) obj;
        tz3 tz3Var = by3Var.a;
        if (tz3Var == null) {
            return;
        }
        vb4Var.setAspectRatio(by3Var.b);
        if (tz3Var instanceof rz3) {
            vb4Var.a(((rz3) tz3Var).a, (ub4) null);
        } else if (tz3Var instanceof sz3) {
            vb4Var.a(((sz3) tz3Var).a, (bc4) null);
        }
    }

    @Override // yads.rf6
    public final /* bridge */ /* synthetic */ boolean a(View view, Object obj) {
        return true;
    }
}
