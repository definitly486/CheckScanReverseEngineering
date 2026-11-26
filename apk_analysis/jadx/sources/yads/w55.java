package yads;

import android.view.View;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.ViewGroupKt;

/* JADX INFO: loaded from: classes6.dex */
public final class w55 extends ci2 {
    public final vq0 a;
    public final oa1 b;
    public final hd1 c;

    public w55(vq0 vq0Var, oa1 oa1Var, hd1 hd1Var) {
        this.a = vq0Var;
        this.b = oa1Var;
        this.c = hd1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(View view) {
        if (view instanceof r55) {
            ((r55) view).release();
        }
        xo5 xo5VarB = s55.b(view);
        if (xo5VarB != null) {
            SparseArrayCompat sparseArrayCompat = xo5VarB.b;
            for (int i = 0; sparseArrayCompat.size() > i; i++) {
                ((r55) sparseArrayCompat.valueAt(i)).release();
            }
        }
    }

    @Override // yads.ci2
    public final void a(bb1 bb1Var) {
        tt ttVar;
        fs2 fs2Var;
        xh1 xh1Var = bb1Var.l;
        vp0 vp0Var = (vp0) xh1Var.c;
        if (vp0Var == null || (ttVar = xh1Var.d) == null || (fs2Var = ttVar.b) == null) {
            return;
        }
        b(bb1Var);
        View view = bb1Var.getChildCount() != 0 ? ViewGroupKt.get(bb1Var, 0) : null;
        if (view != null) {
            this.c.a(this.a, fs2Var, view, vp0Var.a);
            this.b.getClass();
        }
    }

    @Override // yads.ci2
    public final void a(et1 et1Var) {
        a((wh1) et1Var);
        et1Var.a.setAdapter(null);
    }

    @Override // yads.ci2
    public final void a(cy1 cy1Var) {
        a((wh1) cy1Var);
        cy1Var.setAdapter(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.ci2
    public final void a(wh1 wh1Var) {
        wh1Var.getClass();
        View view = (View) wh1Var;
        br0 br0VarA = wh1Var.a();
        p41 p41VarA = br0VarA != null ? br0VarA.a() : null;
        tt ttVarC = wh1Var.c();
        fs2 fs2Var = ttVarC != null ? ttVarC.b : null;
        if (p41VarA != null && fs2Var != null) {
            this.c.a(this.a, fs2Var, view, p41VarA);
        }
        b(view);
    }

    @Override // yads.ci2
    public final void a(View view) {
        b(view);
    }
}
