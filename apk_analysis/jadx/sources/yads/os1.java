package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class os1 implements qv5 {
    public final tq3 a;

    public os1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ls1 a(ys4 ys4Var, ss1 ss1Var, JSONObject jSONObject) {
        if (ss1Var instanceof rs1) {
            tq1 tq1Var = (tq1) this.a.j5.getValue();
            uq1 uq1Var = ((rs1) ss1Var).a;
            tq1Var.getClass();
            zw2 zw2Var = uq1Var.a;
            tq3 tq3Var = tq1Var.a;
            return new ks1(new qq1((eu1) qq3.a(ys4Var, zw2Var, jSONObject, "page_width", tq3Var.E5, tq3Var.C5)));
        }
        if (!(ss1Var instanceof ps1)) {
            if (ss1Var instanceof qs1) {
                ((oq1) this.a.g5.getValue()).getClass();
                return new js1(new lq1());
            }
            defpackage.me0.e();
            return null;
        }
        yp1 yp1Var = (yp1) this.a.X4.getValue();
        zp1 zp1Var = ((ps1) ss1Var).a;
        yp1Var.getClass();
        zw2 zw2Var2 = zp1Var.a;
        tq3 tq3Var2 = yp1Var.a;
        return new is1(new vp1((af1) qq3.a(ys4Var, zw2Var2, jSONObject, "neighbour_page_width", tq3Var2.x3, tq3Var2.v3)));
    }
}
