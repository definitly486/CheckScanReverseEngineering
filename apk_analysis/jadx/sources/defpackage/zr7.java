package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class zr7 extends nd0 {
    public final tx1 D;
    public final ku1 E;
    public final ht2 F;

    public zr7(ox4 ox4Var, xk4 xk4Var, ku1 ku1Var, nw4 nw4Var) {
        super(ox4Var, xk4Var);
        this.E = ku1Var;
        tx1 tx1Var = new tx1(ox4Var, this, new wr7("__container", xk4Var.a, false), nw4Var);
        this.D = tx1Var;
        List<sx1> list = Collections.EMPTY_LIST;
        tx1Var.f(list, list);
        ft2 ft2Var = this.p.x;
        if (ft2Var != null) {
            this.F = new ht2(this, this, ft2Var);
        }
    }

    @Override // defpackage.nd0, defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        super.b(rectF, matrix, z);
        this.D.b(rectF, this.n, z);
    }

    @Override // defpackage.nd0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        PointF pointF = vx4.a;
        ht2 ht2Var = this.F;
        if (obj == 5 && ht2Var != null) {
            ht2Var.c.k(by4Var);
            return;
        }
        if (obj == vx4.E && ht2Var != null) {
            ht2Var.b(by4Var);
            return;
        }
        if (obj == vx4.F && ht2Var != null) {
            ht2Var.e.k(by4Var);
            return;
        }
        if (obj == vx4.G && ht2Var != null) {
            ht2Var.f.k(by4Var);
        } else {
            if (obj != vx4.H || ht2Var == null) {
                return;
            }
            ht2Var.g.k(by4Var);
        }
    }

    @Override // defpackage.nd0
    public final void l(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        ht2 ht2Var = this.F;
        if (ht2Var != null) {
            et2Var = ht2Var.a(matrix, i);
        }
        this.D.d(canvas, matrix, i, et2Var);
    }

    @Override // defpackage.nd0
    public final ik0 m() {
        ik0 ik0Var = this.p.w;
        return ik0Var != null ? ik0Var : this.E.p.w;
    }

    @Override // defpackage.nd0
    public final void q(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        this.D.a(nf4Var, i, arrayList, nf4Var2);
    }
}
