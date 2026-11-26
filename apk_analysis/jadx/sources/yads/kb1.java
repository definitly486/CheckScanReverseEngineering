package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class kb1 implements qv5 {
    public final tq3 a;

    public kb1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        tb1 tb1Var = (tb1) xq3Var;
        zw2 zw2Var = tb1Var.a;
        tq3 tq3Var = this.a;
        List listC = qq3.c(ys4Var, zw2Var, jSONObject, "functions", tq3Var.J3, tq3Var.H3);
        String str = (String) qq3.a(tb1Var.b, jSONObject, "log_id");
        zw2 zw2Var2 = tb1Var.c;
        tq3 tq3Var2 = this.a;
        List listA = qq3.a(ys4Var, zw2Var2, jSONObject, "states", tq3Var2.H2, tq3Var2.F2, lb1.c);
        zw2 zw2Var3 = tb1Var.d;
        tq3 tq3Var3 = this.a;
        List listC2 = qq3.c(ys4Var, zw2Var3, jSONObject, "timers", tq3Var3.E8, tq3Var3.C8);
        zw2 zw2Var4 = tb1Var.e;
        m36 m36Var = lb1.b;
        nl3 nl3Var = nd2.d;
        as2 as2Var = lb1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var4, jSONObject, "transition_animation_selector", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var5 = tb1Var.f;
        tq3 tq3Var4 = this.a;
        List listC3 = qq3.c(ys4Var, zw2Var5, jSONObject, "variable_triggers", tq3Var4.W8, tq3Var4.U8);
        zw2 zw2Var6 = tb1Var.g;
        tq3 tq3Var5 = this.a;
        return new db1(listC, str, listA, listC2, as2Var, listC3, qq3.c(ys4Var, zw2Var6, jSONObject, "variables", tq3Var5.c9, tq3Var5.a9), null);
    }
}
