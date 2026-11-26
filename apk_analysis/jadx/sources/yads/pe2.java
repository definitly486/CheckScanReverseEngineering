package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class pe2 implements ln0 {
    public final tq3 a;

    public pe2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x016b  */
    /* JADX WARN: Code duplicated, block: B:46:0x016f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0172  */
    /* JADX WARN: Code duplicated, block: B:49:0x0175  */
    /* JADX WARN: Code duplicated, block: B:51:0x0184  */
    /* JADX WARN: Code duplicated, block: B:53:0x018b  */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        ys4 ys4Var2;
        JSONObject jSONObject2;
        xq3 xq3Var;
        af2 af2Var;
        String strA = wq3.a(jSONObject);
        switch (strA.hashCode()) {
            case -1034364087:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("number")) {
                    ((so4) this.a.H9.getValue()).getClass();
                    r36 r36Var = w36.d;
                    nl3 nl3Var = bt4.d;
                    y50 y50Var = oq3.a;
                    return new le2(new ro4(oq3.a(ys4Var2, jSONObject2, "value", r36Var, nl3Var, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -891985903:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_STRING)) {
                    ((qr5) this.a.W9.getValue()).getClass();
                    return new me2(new pr5(oq3.a(ys4Var2, jSONObject2, "value", w36.c)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 116079:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("url")) {
                    ((g56) this.a.ca.getValue()).getClass();
                    v36 v36Var = w36.e;
                    nl3 nl3Var2 = bt4.b;
                    y50 y50Var2 = oq3.a;
                    return new ne2(new f56(oq3.a(ys4Var2, jSONObject2, "value", v36Var, nl3Var2, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 3083190:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("dict")) {
                    ((yo0) this.a.y.getValue()).getClass();
                    return new je2(new xo0(oq3.a(ys4Var2, jSONObject2, "value", w36.h)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 64711720:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals(TypedValues.Custom.S_BOOLEAN)) {
                    ((lu) this.a.g.getValue()).getClass();
                    o36 o36Var = w36.a;
                    nl3 nl3Var3 = bt4.c;
                    y50 y50Var3 = oq3.a;
                    return new he2(new ku(oq3.a(ys4Var2, jSONObject2, "value", o36Var, nl3Var3, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 93090393:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("array")) {
                    ((fj) this.a.a.getValue()).getClass();
                    return new ge2(new ej(oq3.a(ys4Var2, jSONObject2, "value", w36.g)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 94842723:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("color")) {
                    ((p30) this.a.m.getValue()).getClass();
                    p36 p36Var = w36.f;
                    nl3 nl3Var4 = bt4.a;
                    y50 y50Var4 = oq3.a;
                    return new ie2(new o30(oq3.a(ys4Var2, jSONObject2, "value", p36Var, nl3Var4, uq3.a)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1958052158:
                if (strA.equals(TypedValues.Custom.S_INT)) {
                    ((km3) this.a.B9.getValue()).getClass();
                    s36 s36Var = w36.b;
                    nl3 nl3Var5 = bt4.e;
                    y50 y50Var5 = oq3.a;
                    return new ke2(new jm3(oq3.a(ys4Var, jSONObject, "value", s36Var, nl3Var5, uq3.a)));
                }
            default:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof af2) {
                    af2Var = (af2) xq3Var;
                } else {
                    af2Var = null;
                }
                if (af2Var != null) {
                    return ((re2) this.a.Z8.getValue()).a(ys4Var2, af2Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
    }
}
