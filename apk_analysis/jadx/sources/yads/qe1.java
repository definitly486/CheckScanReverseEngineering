package yads;

import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qe1 implements ln0 {
    public final tq3 a;

    public qe1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final pe1 a(ys4 ys4Var, JSONObject jSONObject) {
        o36 o36Var = w36.a;
        nl3 nl3Var = bt4.c;
        as2 as2Var = te1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "always_visible", o36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new pe1(as2Var, oq3.a(ys4Var, jSONObject, "pattern", w36.c), wq3.a(ys4Var, jSONObject, "pattern_elements", this.a.s3, te1.b), (String) wq3.a("raw_text_variable", jSONObject));
    }
}
