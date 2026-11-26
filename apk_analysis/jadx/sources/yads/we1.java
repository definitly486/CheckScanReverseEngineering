package yads;

import com.tapjoy.TJKeyValueStorageKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class we1 implements qv5 {
    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        ys4 ys4Var2;
        as2 as2VarA;
        ye1 ye1Var = (ye1) xq3Var;
        zw2 zw2Var = ye1Var.a;
        u36 u36Var = w36.c;
        as2 as2VarA2 = qq3.a(ys4Var, zw2Var, jSONObject, TJKeyValueStorageKt.KEY, xe1.b);
        zw2 zw2Var2 = ye1Var.b;
        l66 l66Var = xe1.c;
        as2 as2Var = xe1.a;
        if (zw2Var2.b && jSONObject.has("placeholder")) {
            y50 y50Var = oq3.a;
            ys4Var2 = ys4Var;
            jSONObject2 = jSONObject;
            as2VarA = oq3.a(ys4Var2, jSONObject2, "placeholder", u36Var, uq3.b, l66Var, as2Var);
        } else {
            jSONObject2 = jSONObject;
            int i = zw2Var2.a;
            if (i == 2) {
                as2VarA = (as2) ((yw2) zw2Var2).c;
                ys4Var2 = ys4Var;
            } else if (i == 3) {
                String str = ((xw2) zw2Var2).c;
                y50 y50Var2 = oq3.a;
                ys4Var2 = ys4Var;
                as2VarA = oq3.a(ys4Var2, jSONObject2, str, u36Var, uq3.b, l66Var, as2Var);
            } else {
                ys4Var2 = ys4Var;
                as2VarA = null;
            }
        }
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new oe1(as2VarA2, as2Var, qq3.b(ys4Var2, ye1Var.c, jSONObject2, "regex", u36Var));
    }
}
