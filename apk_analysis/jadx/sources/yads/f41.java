package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f41 implements ln0 {
    public final tq3 a;

    public f41(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        ys4 ys4Var2;
        JSONObject jSONObject2;
        xq3 xq3Var;
        o41 o41Var;
        String strA = wq3.a(jSONObject);
        switch (strA.hashCode()) {
            case -30518633:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("nine_patch_image")) {
                    bq1 bq1Var = (bq1) this.a.Y4.getValue();
                    bq1Var.getClass();
                    v36 v36Var = w36.e;
                    nl3 nl3Var = bt4.b;
                    y50 y50Var = oq3.a;
                    return new j31(new aq1(oq3.a(ys4Var2, jSONObject2, "image_url", v36Var, nl3Var, uq3.a), (cr0) wq3.a(ys4Var2, jSONObject2, TJAdUnitConstants.String.INSETS, bq1Var.a.E)));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 89650992:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("gradient")) {
                    return new i31(((ip1) this.a.M4.getValue()).a(ys4Var2, jSONObject2));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 100313435:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                if (strA.equals("image")) {
                    return new h31(((ci1) this.a.T3.getValue()).a(ys4Var2, jSONObject2));
                }
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 109618859:
                if (strA.equals("solid")) {
                    ((u22) this.a.i7.getValue()).getClass();
                    p36 p36Var = w36.f;
                    nl3 nl3Var2 = bt4.a;
                    y50 y50Var2 = oq3.a;
                    return new l31(new t22(oq3.a(ys4Var, jSONObject, "color", p36Var, nl3Var2, uq3.a)));
                }
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1881846096:
                if (strA.equals("radial_gradient")) {
                    return new k31(((ax1) this.a.j6.getValue()).a(ys4Var, jSONObject));
                }
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            default:
                ys4Var2 = ys4Var;
                jSONObject2 = jSONObject;
                xq3Var = ys4Var2.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject2);
                }
                if (xq3Var instanceof o41) {
                    o41Var = (o41) xq3Var;
                } else {
                    o41Var = null;
                }
                if (o41Var != null) {
                    return ((h41) this.a.H1.getValue()).a(ys4Var2, o41Var, jSONObject2);
                }
                throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
    }
}
