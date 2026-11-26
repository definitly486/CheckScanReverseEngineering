package yads;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class p62 implements qv5 {
    public final tq3 a;

    public p62(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        w62 w62Var = (w62) xq3Var;
        zw2 zw2Var = w62Var.a;
        tq3 tq3Var = this.a;
        af1 af1Var = (af1) qq3.b(ys4Var, zw2Var, jSONObject, TJAdUnitConstants.String.HEIGHT, tq3Var.x3, tq3Var.v3);
        if (af1Var == null) {
            af1Var = q62.a;
        }
        as2 as2VarA = qq3.a(ys4Var, w62Var.b, jSONObject, "image_url", w36.e, bt4.b);
        zw2 zw2Var2 = w62Var.c;
        tq3 tq3Var2 = this.a;
        af1 af1Var2 = (af1) qq3.b(ys4Var, zw2Var2, jSONObject, TJAdUnitConstants.String.WIDTH, tq3Var2.x3, tq3Var2.v3);
        if (af1Var2 == null) {
            af1Var2 = q62.b;
        }
        return new u52(af1Var, as2VarA, af1Var2);
    }
}
