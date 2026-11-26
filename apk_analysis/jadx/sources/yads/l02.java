package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class l02 implements ln0 {
    public final tq3 a;

    public l02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        if (defpackage.aa4.e(strA, "rounded_rectangle")) {
            return new e02(((hy1) this.a.p6.getValue()).a(ys4Var, jSONObject));
        }
        if (defpackage.aa4.e(strA, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            r61 r61Var = (r61) this.a.X1.getValue();
            r61Var.getClass();
            as2 as2VarA = oq3.a(ys4Var, jSONObject, "background_color", w36.f, bt4.a);
            af1 af1Var = (af1) wq3.c(ys4Var, jSONObject, "radius", r61Var.a.v3);
            if (af1Var == null) {
                af1Var = u61.a;
            }
            return new d02(new q61(as2VarA, af1Var, (l42) wq3.c(ys4Var, jSONObject, "stroke", r61Var.a.D7)));
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        q02 q02Var = xq3Var instanceof q02 ? (q02) xq3Var : null;
        if (q02Var != null) {
            return ((n02) this.a.P6.getValue()).a(ys4Var, q02Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
