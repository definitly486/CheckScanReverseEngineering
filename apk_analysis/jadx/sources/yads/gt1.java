package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class gt1 extends u71 {
    public final tt f;
    public final ws1 g;
    public final ll3 h;
    public final ll3 i;

    public gt1(tt ttVar, ws1 ws1Var, w41 w41Var, qh2 qh2Var, ll3 ll3Var, ll3 ll3Var2) {
        super(ws1Var, ttVar, w41Var, qh2Var);
        this.f = ttVar;
        this.g = ws1Var;
        this.h = ll3Var;
        this.i = ll3Var2;
        this.itemView.addOnAttachStateChangeListener(new ft1(this));
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007a  */
    @Override // yads.u71
    public final void a(tt ttVar, br0 br0Var, int i, n32 n32Var) {
        Enum r2;
        int i2;
        super.a(ttVar, br0Var, i, n32Var);
        View viewJ = this.g.j();
        ViewGroup.LayoutParams layoutParams = viewJ != null ? viewJ.getLayoutParams() : null;
        ro1 ro1Var = layoutParams instanceof ro1 ? (ro1) layoutParams : null;
        if (ro1Var != null) {
            p41 p41VarA = br0Var.a();
            fs2 fs2Var = ttVar.b;
            as2 as2VarQ = ((Boolean) this.h.invoke()).booleanValue() ? p41VarA.q() : p41VarA.f();
            if (as2VarQ == null || (r2 = (Enum) as2VarQ.a(fs2Var)) == null) {
                r2 = (Enum) this.i.invoke();
            }
            if (((Boolean) this.h.invoke()).booleanValue()) {
                if (r2 == rr1.CENTER || r2 == h11.CENTER) {
                    i2 = 17;
                } else {
                    i2 = (r2 == rr1.END || r2 == h11.BOTTOM) ? 80 : 48;
                }
            } else if (r2 == rr1.CENTER || r2 == f11.CENTER) {
                i2 = 17;
            } else if (r2 == rr1.END || r2 == f11.END) {
                i2 = GravityCompat.END;
            } else if (r2 == f11.LEFT) {
                i2 = 3;
            } else {
                i2 = r2 == f11.RIGHT ? 5 : GravityCompat.START;
            }
            ro1Var.a = i2;
            this.g.requestLayout();
        }
    }

    @Override // yads.u71
    public final void a() {
        int i = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        int i2 = rv3.a;
    }
}
