package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xt1 implements qv5 {
    public final tq3 a;

    public xt1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        bu1 bu1Var = (bu1) xq3Var;
        zw2 zw2Var = bu1Var.a;
        tq3 tq3Var = this.a;
        List listA = qq3.a(ys4Var, zw2Var, jSONObject, "changes", tq3Var.B5, tq3Var.z5, yt1.c);
        zw2 zw2Var2 = bu1Var.b;
        m36 m36Var = yt1.b;
        nl3 nl3Var = pt1.d;
        as2 as2Var = yt1.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "mode", m36Var, nl3Var, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        zw2 zw2Var3 = bu1Var.c;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var3, jSONObject, "on_applied_actions", tq3Var2.m1, tq3Var2.k1);
        zw2 zw2Var4 = bu1Var.d;
        tq3 tq3Var3 = this.a;
        return new qt1(listA, listC, qq3.c(ys4Var, zw2Var4, jSONObject, "on_failed_actions", tq3Var3.m1, tq3Var3.k1), as2Var);
    }
}
