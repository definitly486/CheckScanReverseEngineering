package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class tu0 implements qv5 {
    public final tq3 a;

    public tu0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        nx0 nx0Var = (nx0) xq3Var;
        zw2 zw2Var = nx0Var.a;
        tq3 tq3Var = this.a;
        nc1 nc1Var = (nc1) qq3.b(ys4Var, zw2Var, jSONObject, "download_callbacks", tq3Var.T2, tq3Var.R2);
        zw2 zw2Var2 = nx0Var.b;
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        xr2 xr2Var = uu0.a;
        as2 as2VarA = qq3.a(ys4Var, zw2Var2, jSONObject, "is_enabled", o36Var, nl3Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        as2 as2VarA2 = qq3.a(ys4Var, nx0Var.c, jSONObject, "log_id", w36.c);
        zw2 zw2Var3 = nx0Var.d;
        v36 v36Var = w36.e;
        nl3 nl3Var2 = bt4.b;
        as2 as2VarB = qq3.b(ys4Var, zw2Var3, jSONObject, "log_url", v36Var, nl3Var2);
        zw2 zw2Var4 = nx0Var.e;
        tq3 tq3Var2 = this.a;
        List listC = qq3.c(ys4Var, zw2Var4, jSONObject, "menu_items", tq3Var2.p1, tq3Var2.n1);
        JSONObject jSONObject2 = (JSONObject) qq3.a(ys4Var, nx0Var.f, jSONObject, "payload");
        as2 as2VarB2 = qq3.b(ys4Var, nx0Var.g, jSONObject, "referer", v36Var, nl3Var2);
        String str = (String) qq3.a(ys4Var, nx0Var.h, jSONObject, "scope_id");
        as2 as2VarB3 = qq3.b(ys4Var, nx0Var.i, jSONObject, TypedValues.AttributesType.S_TARGET, uu0.b, wr0.d);
        zw2 zw2Var5 = nx0Var.j;
        tq3 tq3Var3 = this.a;
        return new xr0(nc1Var, as2Var, as2VarA2, as2VarB, listC, jSONObject2, as2VarB2, str, as2VarB3, (ry0) qq3.b(ys4Var, zw2Var5, jSONObject, "typed", tq3Var3.d1, tq3Var3.b1), qq3.b(ys4Var, nx0Var.k, jSONObject, "url", v36Var, nl3Var2));
    }
}
