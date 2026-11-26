package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class h68 extends ld0<PointF, PointF> {
    public final PointF i;
    public final PointF j;
    public final tc3 k;
    public final tc3 l;
    public by4<Float> m;
    public by4<Float> n;

    public h68(tc3 tc3Var, tc3 tc3Var2) {
        super(Collections.EMPTY_LIST);
        this.i = new PointF();
        this.j = new PointF();
        this.k = tc3Var;
        this.l = tc3Var2;
        j(this.d);
    }

    @Override // defpackage.ld0
    public final PointF f() {
        return m();
    }

    @Override // defpackage.ld0
    public final /* bridge */ /* synthetic */ PointF g(vf4<PointF> vf4Var, float f) {
        return m();
    }

    @Override // defpackage.ld0
    public final void j(float f) {
        tc3 tc3Var = this.k;
        tc3Var.j(f);
        tc3 tc3Var2 = this.l;
        tc3Var2.j(f);
        this.i.set(tc3Var.f().floatValue(), tc3Var2.f().floatValue());
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                return;
            }
            ((ld0.a) arrayList.get(i)).e();
            i++;
        }
    }

    public final PointF m() {
        Float fB;
        tc3 tc3Var;
        vf4<Float> vf4VarB;
        tc3 tc3Var2;
        vf4<Float> vf4VarB2;
        Float fB2 = null;
        if (this.m == null || (vf4VarB2 = (tc3Var2 = this.k).b()) == null) {
            fB = null;
        } else {
            Float f = vf4VarB2.h;
            by4<Float> by4Var = this.m;
            float f2 = vf4VarB2.g;
            fB = by4Var.b(f2, f == null ? f2 : f.floatValue(), vf4VarB2.b, vf4VarB2.c, tc3Var2.d(), tc3Var2.e(), tc3Var2.d);
        }
        if (this.n != null && (vf4VarB = (tc3Var = this.l).b()) != null) {
            Float f3 = vf4VarB.h;
            by4<Float> by4Var2 = this.n;
            float f4 = vf4VarB.g;
            fB2 = by4Var2.b(f4, f3 == null ? f4 : f3.floatValue(), vf4VarB.b, vf4VarB.c, tc3Var.d(), tc3Var.e(), tc3Var.d);
        }
        PointF pointF = this.i;
        PointF pointF2 = this.j;
        if (fB == null) {
            pointF2.set(pointF.x, 0.0f);
        } else {
            pointF2.set(fB.floatValue(), 0.0f);
        }
        if (fB2 == null) {
            pointF2.set(pointF2.x, pointF.y);
            return pointF2;
        }
        pointF2.set(pointF2.x, fB2.floatValue());
        return pointF2;
    }
}
