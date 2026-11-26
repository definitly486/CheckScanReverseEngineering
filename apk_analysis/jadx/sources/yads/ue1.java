package yads;

import com.tapjoy.TJKeyValueStorageKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ue1 implements ln0 {
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        u36 u36Var = w36.c;
        l66 l66Var = xe1.b;
        y50 y50Var = oq3.a;
        nl3 nl3Var = uq3.b;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, TJKeyValueStorageKt.KEY, u36Var, nl3Var, l66Var);
        l66 l66Var2 = xe1.c;
        as2 as2Var = xe1.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "placeholder", u36Var, nl3Var, l66Var2, as2Var);
        if (as2VarA2 != null) {
            as2Var = as2VarA2;
        }
        return new oe1(as2VarA, as2Var, oq3.b(ys4Var, jSONObject, "regex", u36Var));
    }
}
