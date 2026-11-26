package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ib1 implements ln0 {
    public final tq3 a;

    public ib1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final db1 a(ys4 ys4Var, JSONObject jSONObject) {
        ys4 zn2Var = ys4Var instanceof zn2 ? ys4Var : new zn2(ys4Var);
        List listD = wq3.d(zn2Var, jSONObject, "functions", this.a.H3);
        String str = (String) wq3.a("log_id", jSONObject);
        List listA = wq3.a(zn2Var, jSONObject, "states", this.a.F2, lb1.c);
        List listD2 = wq3.d(zn2Var, jSONObject, "timers", this.a.C8);
        m36 m36Var = lb1.b;
        nl3 nl3Var = nd2.d;
        as2 as2Var = lb1.a;
        y50 y50Var = oq3.a;
        as2 as2VarA = oq3.a(zn2Var, jSONObject, "transition_animation_selector", m36Var, nl3Var, uq3.a, as2Var);
        if (as2VarA != null) {
            as2Var = as2VarA;
        }
        return new db1(listD, str, listA, listD2, as2Var, wq3.d(zn2Var, jSONObject, "variable_triggers", this.a.U8), wq3.d(zn2Var, jSONObject, "variables", this.a.a9), zs4.a(zn2Var));
    }
}
