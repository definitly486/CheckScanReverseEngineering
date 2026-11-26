package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class m02 implements ln0 {
    public final tq3 a;

    public m02(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        xq3 xq3Var2 = null;
        q02 q02Var = xq3Var instanceof q02 ? (q02) xq3Var : null;
        if (q02Var != null) {
            if (q02Var instanceof p02) {
                strA = "rounded_rectangle";
            } else {
                if (!(q02Var instanceof o02)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
            }
        }
        if (defpackage.aa4.e(strA, "rounded_rectangle")) {
            iy1 iy1Var = (iy1) this.a.q6.getValue();
            if (q02Var != null) {
                if (q02Var instanceof p02) {
                    xq3Var2 = ((p02) q02Var).a;
                } else {
                    if (!(q02Var instanceof o02)) {
                        defpackage.me0.e();
                        return null;
                    }
                    xq3Var2 = ((o02) q02Var).a;
                }
            }
            return new p02(iy1Var.a(ys4Var, (ly1) xq3Var2, jSONObject));
        }
        if (!defpackage.aa4.e(strA, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
        s61 s61Var = (s61) this.a.Y1.getValue();
        if (q02Var != null) {
            if (q02Var instanceof p02) {
                xq3Var2 = ((p02) q02Var).a;
            } else {
                if (!(q02Var instanceof o02)) {
                    defpackage.me0.e();
                    return null;
                }
                xq3Var2 = ((o02) q02Var).a;
            }
        }
        return new o02(s61Var.a(ys4Var, (v61) xq3Var2, jSONObject));
    }
}
