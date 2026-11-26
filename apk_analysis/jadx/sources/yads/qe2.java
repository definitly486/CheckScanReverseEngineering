package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qe2 implements ln0 {
    public final tq3 a;

    public qe2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        af2 af2Var = xq3Var instanceof af2 ? (af2) xq3Var : null;
        if (af2Var != null) {
            if (af2Var instanceof ye2) {
                strA = TypedValues.Custom.S_STRING;
            } else if (af2Var instanceof we2) {
                strA = TypedValues.Custom.S_INT;
            } else if (af2Var instanceof xe2) {
                strA = "number";
            } else if (af2Var instanceof ue2) {
                strA = "color";
            } else if (af2Var instanceof te2) {
                strA = TypedValues.Custom.S_BOOLEAN;
            } else if (af2Var instanceof ze2) {
                strA = "url";
            } else if (af2Var instanceof ve2) {
                strA = "dict";
            } else {
                if (!(af2Var instanceof se2)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "array";
            }
        }
        switch (strA.hashCode()) {
            case -1034364087:
                jSONObject2 = jSONObject;
                if (strA.equals("number")) {
                    to4 to4Var = (to4) this.a.I9.getValue();
                    xo4 xo4Var = (xo4) (af2Var != null ? af2Var.a() : null);
                    to4Var.getClass();
                    return new xe2(new xo4(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.d, ys4Var.d(), xo4Var != null ? xo4Var.a : null, bt4.d, uq3.a)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -891985903:
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_STRING)) {
                    rr5 rr5Var = (rr5) this.a.X9.getValue();
                    tr5 tr5Var = (tr5) (af2Var != null ? af2Var.a() : null);
                    rr5Var.getClass();
                    return new ye2(new tr5(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.c, ys4Var.d(), tr5Var != null ? tr5Var.a : null)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 116079:
                jSONObject2 = jSONObject;
                if (strA.equals("url")) {
                    h56 h56Var = (h56) this.a.da.getValue();
                    j56 j56Var = (j56) (af2Var != null ? af2Var.a() : null);
                    h56Var.getClass();
                    return new ze2(new j56(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.e, ys4Var.d(), j56Var != null ? j56Var.a : null, bt4.b, uq3.a)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 3083190:
                jSONObject2 = jSONObject;
                if (strA.equals("dict")) {
                    zo0 zo0Var = (zo0) this.a.z.getValue();
                    bp0 bp0Var = (bp0) (af2Var != null ? af2Var.a() : null);
                    zo0Var.getClass();
                    return new ve2(new bp0(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.h, ys4Var.d(), bp0Var != null ? bp0Var.a : null)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 64711720:
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_BOOLEAN)) {
                    mu muVar = (mu) this.a.h.getValue();
                    ou ouVar = (ou) (af2Var != null ? af2Var.a() : null);
                    muVar.getClass();
                    return new te2(new ou(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.a, ys4Var.d(), ouVar != null ? ouVar.a : null, bt4.c, uq3.a)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 93090393:
                if (!strA.equals("array")) {
                    jSONObject2 = jSONObject;
                    throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
                }
                gj gjVar = (gj) this.a.b.getValue();
                ij ijVar = (ij) (af2Var != null ? af2Var.a() : null);
                gjVar.getClass();
                return new se2(new ij(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.g, ys4Var.d(), ijVar != null ? ijVar.a : null)));
            case 94842723:
                jSONObject2 = jSONObject;
                if (strA.equals("color")) {
                    q30 q30Var = (q30) this.a.n.getValue();
                    s30 s30Var = (s30) (af2Var != null ? af2Var.a() : null);
                    q30Var.getClass();
                    return new ue2(new s30(pq3.a(zs4.b(ys4Var), jSONObject2, "value", w36.f, ys4Var.d(), s30Var != null ? s30Var.a : null, bt4.a, uq3.a)));
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1958052158:
                if (strA.equals(TypedValues.Custom.S_INT)) {
                    lm3 lm3Var = (lm3) this.a.C9.getValue();
                    om3 om3Var = (om3) (af2Var != null ? af2Var.a() : null);
                    lm3Var.getClass();
                    return new we2(new om3(pq3.a(zs4.b(ys4Var), jSONObject, "value", w36.b, ys4Var.d(), om3Var != null ? om3Var.a : null, bt4.e, uq3.a)));
                }
            default:
                jSONObject2 = jSONObject;
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
    }
}
