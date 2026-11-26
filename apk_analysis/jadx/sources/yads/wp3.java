package yads;

import android.app.Activity;
import android.content.Context;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wp3 implements qn0 {
    public final bf5 a;
    public final rp3 b;
    public final ue4 c;

    public wp3(e4 e4Var, bf5 bf5Var, x2 x2Var, int i) {
        rp3 rp3Var = new rp3(e4Var, bf5Var, x2Var, i);
        ue4 ue4Var = new ue4();
        this.a = bf5Var;
        this.b = rp3Var;
        this.c = ue4Var;
    }

    @Override // yads.qn0
    public final List a(Activity activity, d9 d9Var, pg4 pg4Var, m2 m2Var, i2 i2Var, jd0 jd0Var, b4 b4Var, oa5 oa5Var, bx5 bx5Var, ln1 ln1Var, fo1 fo1Var, u6 u6Var) {
        io1 io1Var;
        p10 p10Var = new p10(d9Var, i2Var, new ph6(), m2Var, this.c, jd0Var, bx5Var);
        Context context = ((do6) this.a).a;
        q84 q84VarA = mw.a(context, context);
        List listI = u96.i(new nx4(p10Var, q84VarA), new jr3(p10Var, q84VarA), new ir3(p10Var, q84VarA));
        rp3 rp3Var = this.b;
        rp3Var.getClass();
        try {
            if (!rp3Var.e.a(activity) || fo1Var == null) {
                io1Var = null;
            } else {
                io1Var = new io1(fo1Var, rp3Var.a, rp3Var.b, new v40(new p10(d9Var, i2Var, rp3Var.f, m2Var, rp3Var.g, jd0Var, bx5Var), new e60(d9Var, i2Var, b4Var, pg4Var.d(), bx5Var, fo1Var), new gm5(u6Var, i2Var, rp3Var.g)), rp3Var.c, ln1Var, rp3Var.d);
            }
        } catch (Throwable unused) {
        }
        return defpackage.qn1.R(defpackage.qn1.h0(listI, u96.h(io1Var)));
    }
}
