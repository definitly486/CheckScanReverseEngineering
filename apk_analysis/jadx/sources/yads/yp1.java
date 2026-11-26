package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yp1 implements qv5 {
    public final tq3 a;

    public yp1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        zw2 zw2Var = ((zp1) xq3Var).a;
        tq3 tq3Var = this.a;
        return new vp1((af1) qq3.a(ys4Var, zw2Var, jSONObject, "neighbour_page_width", tq3Var.x3, tq3Var.v3));
    }
}
