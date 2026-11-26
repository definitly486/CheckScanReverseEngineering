package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ag2 implements ln0 {
    public final tq3 a;

    public ag2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        lg2 lg2Var = xq3Var instanceof lg2 ? (lg2) xq3Var : null;
        if (lg2Var != null) {
            if (lg2Var instanceof jg2) {
                strA = TypedValues.Custom.S_STRING;
            } else if (lg2Var instanceof hg2) {
                strA = "number";
            } else if (lg2Var instanceof gg2) {
                strA = TypedValues.Custom.S_INT;
            } else if (lg2Var instanceof dg2) {
                strA = TypedValues.Custom.S_BOOLEAN;
            } else if (lg2Var instanceof eg2) {
                strA = "color";
            } else if (lg2Var instanceof kg2) {
                strA = "url";
            } else if (lg2Var instanceof fg2) {
                strA = "dict";
            } else if (lg2Var instanceof cg2) {
                strA = "array";
            } else {
                if (!(lg2Var instanceof ig2)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "property";
            }
        }
        switch (strA.hashCode()) {
            case -1034364087:
                if (strA.equals("number")) {
                    ap4 ap4Var = (ap4) this.a.L9.getValue();
                    cp4 cp4Var = (cp4) (lg2Var != null ? lg2Var.a() : null);
                    ap4Var.getClass();
                    boolean zD = ys4Var.d();
                    tr4 tr4VarB = zs4.b(ys4Var);
                    return new hg2(new cp4(pq3.a(tr4VarB, jSONObject, "name", zD, cp4Var != null ? cp4Var.a : null), pq3.a(tr4VarB, jSONObject, "value", w36.d, zD, cp4Var != null ? cp4Var.b : null, bt4.d, uq3.a)));
                }
                break;
            case -993141291:
                if (strA.equals("property")) {
                    return new ig2(((h25) this.a.R9.getValue()).a(ys4Var, (k25) (lg2Var != null ? lg2Var.a() : null), jSONObject));
                }
                break;
            case -891985903:
                if (strA.equals(TypedValues.Custom.S_STRING)) {
                    wr5 wr5Var = (wr5) this.a.aa.getValue();
                    yr5 yr5Var = (yr5) (lg2Var != null ? lg2Var.a() : null);
                    wr5Var.getClass();
                    boolean zD2 = ys4Var.d();
                    tr4 tr4VarB2 = zs4.b(ys4Var);
                    return new jg2(new yr5(pq3.a(tr4VarB2, jSONObject, "name", zD2, yr5Var != null ? yr5Var.a : null), pq3.a(tr4VarB2, jSONObject, "value", w36.c, zD2, yr5Var != null ? yr5Var.b : null)));
                }
                break;
            case 116079:
                if (strA.equals("url")) {
                    m56 m56Var = (m56) this.a.ga.getValue();
                    o56 o56Var = (o56) (lg2Var != null ? lg2Var.a() : null);
                    m56Var.getClass();
                    boolean zD3 = ys4Var.d();
                    tr4 tr4VarB3 = zs4.b(ys4Var);
                    return new kg2(new o56(pq3.a(tr4VarB3, jSONObject, "name", zD3, o56Var != null ? o56Var.a : null), pq3.a(tr4VarB3, jSONObject, "value", w36.e, zD3, o56Var != null ? o56Var.b : null, bt4.b, uq3.a)));
                }
                break;
            case 3083190:
                if (strA.equals("dict")) {
                    ep0 ep0Var = (ep0) this.a.C.getValue();
                    gp0 gp0Var = (gp0) (lg2Var != null ? lg2Var.a() : null);
                    ep0Var.getClass();
                    boolean zD4 = ys4Var.d();
                    tr4 tr4VarB4 = zs4.b(ys4Var);
                    return new fg2(new gp0(pq3.a(tr4VarB4, jSONObject, "name", zD4, gp0Var != null ? gp0Var.a : null), pq3.a(tr4VarB4, jSONObject, "value", w36.h, zD4, gp0Var != null ? gp0Var.b : null)));
                }
                break;
            case 64711720:
                if (strA.equals(TypedValues.Custom.S_BOOLEAN)) {
                    ru ruVar = (ru) this.a.k.getValue();
                    tu tuVar = (tu) (lg2Var != null ? lg2Var.a() : null);
                    ruVar.getClass();
                    boolean zD5 = ys4Var.d();
                    tr4 tr4VarB5 = zs4.b(ys4Var);
                    return new dg2(new tu(pq3.a(tr4VarB5, jSONObject, "name", zD5, tuVar != null ? tuVar.a : null), pq3.a(tr4VarB5, jSONObject, "value", w36.a, zD5, tuVar != null ? tuVar.b : null, bt4.c, uq3.a)));
                }
                break;
            case 93090393:
                if (strA.equals("array")) {
                    lj ljVar = (lj) this.a.e.getValue();
                    nj njVar = (nj) (lg2Var != null ? lg2Var.a() : null);
                    ljVar.getClass();
                    boolean zD6 = ys4Var.d();
                    tr4 tr4VarB6 = zs4.b(ys4Var);
                    return new cg2(new nj(pq3.a(tr4VarB6, jSONObject, "name", zD6, njVar != null ? njVar.a : null), pq3.a(tr4VarB6, jSONObject, "value", w36.g, zD6, njVar != null ? njVar.b : null)));
                }
                break;
            case 94842723:
                if (strA.equals("color")) {
                    v30 v30Var = (v30) this.a.q.getValue();
                    x30 x30Var = (x30) (lg2Var != null ? lg2Var.a() : null);
                    v30Var.getClass();
                    boolean zD7 = ys4Var.d();
                    tr4 tr4VarB7 = zs4.b(ys4Var);
                    return new eg2(new x30(pq3.a(tr4VarB7, jSONObject, "name", zD7, x30Var != null ? x30Var.a : null), pq3.a(tr4VarB7, jSONObject, "value", w36.f, zD7, x30Var != null ? x30Var.b : null, bt4.a, uq3.a)));
                }
                break;
            case 1958052158:
                if (strA.equals(TypedValues.Custom.S_INT)) {
                    rm3 rm3Var = (rm3) this.a.F9.getValue();
                    tm3 tm3Var = (tm3) (lg2Var != null ? lg2Var.a() : null);
                    rm3Var.getClass();
                    boolean zD8 = ys4Var.d();
                    tr4 tr4VarB8 = zs4.b(ys4Var);
                    return new gg2(new tm3(pq3.a(tr4VarB8, jSONObject, "name", zD8, tm3Var != null ? tm3Var.a : null), pq3.a(tr4VarB8, jSONObject, "value", w36.b, zD8, tm3Var != null ? tm3Var.b : null, bt4.e, uq3.a)));
                }
                break;
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
