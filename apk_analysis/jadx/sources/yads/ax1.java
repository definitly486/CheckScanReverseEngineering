package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ax1 implements ln0 {
    public final tq3 a;

    public ax1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final gw1 a(ys4 ys4Var, JSONObject jSONObject) {
        jw1 jw1Var = (jw1) wq3.c(ys4Var, jSONObject, "center_x", this.a.U5);
        if (jw1Var == null) {
            jw1Var = dx1.a;
        }
        jw1 jw1Var2 = (jw1) wq3.c(ys4Var, jSONObject, "center_y", this.a.U5);
        if (jw1Var2 == null) {
            jw1Var2 = dx1.b;
        }
        List listB = wq3.b(ys4Var, jSONObject, "color_map", this.a.m6, dx1.e);
        p36 p36Var = w36.f;
        nl3 nl3Var = bt4.a;
        st3 st3Var = dx1.d;
        y50 y50Var = oq3.a;
        ds2 ds2VarA = oq3.a(ys4Var, jSONObject, "colors", p36Var, nl3Var, st3Var, uq3.a);
        gx1 gx1Var = (gx1) wq3.c(ys4Var, jSONObject, "radius", this.a.a6);
        if (gx1Var == null) {
            gx1Var = dx1.c;
        }
        return new gw1(jw1Var, jw1Var2, listB, ds2VarA, gx1Var);
    }
}
