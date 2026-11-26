package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class j82 implements qv5 {
    public final tq3 a;

    public j82(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        bb2 bb2Var = (bb2) xq3Var;
        zw2 zw2Var = bb2Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "actions", tq3Var.m1, tq3Var.k1);
        zw2 zw2Var2 = bb2Var.b;
        tq3 tq3Var2 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var2, jSONObject, "images", tq3Var2.v8, tq3Var2.t8);
        zw2 zw2Var3 = bb2Var.c;
        tq3 tq3Var3 = this.a;
        return new r72(listC, listC2, qq3.c(ys4Var, zw2Var3, jSONObject, "ranges", tq3Var3.s8, tq3Var3.q8), qq3.a(ys4Var, bb2Var.d, jSONObject, "text", w36.c));
    }
}
