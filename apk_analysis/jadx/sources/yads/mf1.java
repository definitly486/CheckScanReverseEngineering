package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class mf1 implements qv5 {
    public final tq3 a;

    public mf1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        rf1 rf1Var = (rf1) xq3Var;
        zw2 zw2Var = rf1Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "background", tq3Var.H1, tq3Var.F1);
        zw2 zw2Var2 = rf1Var.b;
        tq3 tq3Var2 = this.a;
        f51 f51Var = (f51) qq3.b(ys4Var, zw2Var2, jSONObject, "border", tq3Var2.N1, tq3Var2.L1);
        zw2 zw2Var3 = rf1Var.c;
        tq3 tq3Var3 = this.a;
        gf1 gf1Var = (gf1) qq3.b(ys4Var, zw2Var3, jSONObject, "next_focus_ids", tq3Var3.D3, tq3Var3.B3);
        zw2 zw2Var4 = rf1Var.d;
        tq3 tq3Var4 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var4, jSONObject, "on_blur", tq3Var4.m1, tq3Var4.k1);
        zw2 zw2Var5 = rf1Var.e;
        tq3 tq3Var5 = this.a;
        return new hf1(listC, f51Var, gf1Var, listC2, qq3.c(ys4Var, zw2Var5, jSONObject, "on_focus", tq3Var5.m1, tq3Var5.k1));
    }
}
