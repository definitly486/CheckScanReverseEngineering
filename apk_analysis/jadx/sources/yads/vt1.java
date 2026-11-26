package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class vt1 implements ln0 {
    public final tq3 a;

    public vt1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        List listA = wq3.a(ys4Var, jSONObject, "changes", this.a.z5, yt1.c);
        m36 m36Var = yt1.b;
        nl3 nl3Var = pt1.d;
        as2 as2Var = yt1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "mode", m36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new qt1(listA, wq3.d(ys4Var, jSONObject, "on_applied_actions", this.a.k1), wq3.d(ys4Var, jSONObject, "on_failed_actions", this.a.k1), as2Var);
    }
}
