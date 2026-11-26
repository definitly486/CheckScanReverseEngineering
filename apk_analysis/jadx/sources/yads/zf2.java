package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class zf2 implements ln0 {
    public final tq3 a;

    public zf2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:54:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:56:0x01da  */
    /* JADX WARN: Code duplicated, block: B:58:0x01e1  */
    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final uf2 a(ys4 ys4Var, JSONObject jSONObject) {
        ys4 ys4Var2;
        JSONObject jSONObject2;
        xq3 xq3Var;
        lg2 lg2Var;
        String strA = wq3.a(jSONObject);
        switch (strA.hashCode()) {
            case -1034364087:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("number")) {
                    ((zo4) this.a.K9.getValue()).getClass();
                    String str = (String) wq3.a("name", jSONObject2);
                    r36 r36Var = w36.d;
                    nl3 nl3Var = bt4.d;
                    y50 y50Var = oq3.a;
                    return new qf2(new yo4(str, oq3.a(ys4Var2, jSONObject2, "value", r36Var, nl3Var, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -993141291:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("property")) {
                    return new rf2(((g25) this.a.Q9.getValue()).a(ys4Var2, jSONObject2));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -891985903:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_STRING)) {
                    ((vr5) this.a.Z9.getValue()).getClass();
                    return new sf2(new ur5((String) wq3.a("name", jSONObject2), oq3.a(ys4Var2, jSONObject2, "value", w36.c)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 116079:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("url")) {
                    ((l56) this.a.fa.getValue()).getClass();
                    String str2 = (String) wq3.a("name", jSONObject2);
                    v36 v36Var = w36.e;
                    nl3 nl3Var2 = bt4.b;
                    y50 y50Var2 = oq3.a;
                    return new tf2(new k56(str2, oq3.a(ys4Var2, jSONObject2, "value", v36Var, nl3Var2, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 3083190:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("dict")) {
                    ((dp0) this.a.B.getValue()).getClass();
                    return new of2(new cp0((String) wq3.a("name", jSONObject2), oq3.a(ys4Var2, jSONObject2, "value", w36.h)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 64711720:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_BOOLEAN)) {
                    ((qu) this.a.j.getValue()).getClass();
                    String str3 = (String) wq3.a("name", jSONObject2);
                    o36 o36Var = w36.a;
                    nl3 nl3Var3 = bt4.c;
                    y50 y50Var3 = oq3.a;
                    return new mf2(new pu(str3, oq3.a(ys4Var2, jSONObject2, "value", o36Var, nl3Var3, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 93090393:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("array")) {
                    ((kj) this.a.d.getValue()).getClass();
                    return new lf2(new jj((String) wq3.a("name", jSONObject2), oq3.a(ys4Var2, jSONObject2, "value", w36.g)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 94842723:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("color")) {
                    ((u30) this.a.p.getValue()).getClass();
                    String str4 = (String) wq3.a("name", jSONObject2);
                    p36 p36Var = w36.f;
                    nl3 nl3Var4 = bt4.a;
                    y50 y50Var4 = oq3.a;
                    return new nf2(new t30(str4, oq3.a(ys4Var2, jSONObject2, "value", p36Var, nl3Var4, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1958052158:
                if (strA.equals(TypedValues.Custom.S_INT)) {
                    ((qm3) this.a.E9.getValue()).getClass();
                    String str5 = (String) wq3.a("name", jSONObject);
                    s36 s36Var = w36.b;
                    nl3 nl3Var5 = bt4.e;
                    y50 y50Var5 = oq3.a;
                    return new pf2(new pm3(str5, oq3.a(ys4Var, jSONObject, "value", s36Var, nl3Var5, uq3.a)));
                }
            default:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var == null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof lg2) {
                    lg2Var = (lg2) xq3Var;
                } else {
                    lg2Var = null;
                }
                if (lg2Var != null) {
                    return ((bg2) this.a.c9.getValue()).a(ys4Var2, lg2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
    }
}
