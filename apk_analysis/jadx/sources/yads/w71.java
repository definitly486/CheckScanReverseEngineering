package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w71 implements ln0 {
    public final tq3 a;

    public w71(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final v71 a(ys4 ys4Var, JSONObject jSONObject) {
        List listD = wq3.d(ys4Var, jSONObject, "cancel_actions", this.a.k1);
        m36 m36Var = z71.e;
        nl3 nl3Var = m11.d;
        xr2 xr2Var = z71.a;
        y50 y50Var = oq3.a;
        l66 l66Var = uq3.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "direction", m36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        s36 s36Var = w36.b;
        nl3 nl3Var2 = bt4.e;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, TypedValues.TransitionType.S_DURATION, s36Var, nl3Var2, z71.g);
        List listD2 = wq3.d(ys4Var, jSONObject, "end_actions", this.a.k1);
        p36 p36Var = w36.f;
        nl3 nl3Var3 = bt4.a;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "end_value", p36Var, nl3Var3, l66Var);
        String str = (String) wq3.a(TtmlNode.ATTR_ID, jSONObject);
        m36 m36Var2 = z71.f;
        nl3 nl3Var4 = o11.d;
        as2 as2Var2 = z71.b;
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "interpolator", m36Var2, nl3Var4, l66Var, as2Var2);
        if (as2VarA4 != null) {
            as2Var2 = as2VarA4;
        }
        x91 x91Var = (x91) wq3.c(ys4Var, jSONObject, "repeat_count", this.a.v2);
        if (x91Var == null) {
            x91Var = z71.c;
        }
        x91 x91Var2 = x91Var;
        l66 l66Var2 = z71.h;
        as2 as2Var3 = z71.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "start_delay", s36Var, nl3Var2, l66Var2, as2Var3);
        if (as2VarA5 != null) {
            as2Var3 = as2VarA5;
        }
        return new v71(listD, as2Var, as2VarA2, listD2, as2VarA3, str, as2Var2, x91Var2, as2Var3, oq3.a(ys4Var, jSONObject, "start_value", p36Var, nl3Var3), (String) wq3.a("variable_name", jSONObject));
    }
}
