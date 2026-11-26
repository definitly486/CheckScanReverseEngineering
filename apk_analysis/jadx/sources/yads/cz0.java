package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cz0 implements ln0 {
    public final tq3 a;

    public cz0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0459  */
    /* JADX WARN: Code duplicated, block: B:119:0x045d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0460  */
    /* JADX WARN: Code duplicated, block: B:122:0x0463  */
    /* JADX WARN: Code duplicated, block: B:124:0x0472  */
    /* JADX WARN: Code duplicated, block: B:126:0x0479  */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        xq3 xq3Var;
        h01 h01Var;
        String strA = wq3.a(jSONObject);
        switch (strA.hashCode()) {
            case -1623648839:
                if (strA.equals("set_variable")) {
                    return new ly0(new kw0((oe2) wq3.a(ys4Var, jSONObject, "value", ((lw0) this.a.J0.getValue()).a.X8), oq3.a(ys4Var, jSONObject, "variable_name", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -1623635702:
                if (strA.equals("animator_start")) {
                    return new wx0(((zr0) this.a.K.getValue()).a(ys4Var, jSONObject));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -1254965146:
                if (strA.equals("clear_focus")) {
                    ((et0) this.a.Z.getValue()).getClass();
                    return new by0(new dt0());
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -1160753574:
                if (strA.equals("animator_stop")) {
                    ((fs0) this.a.N.getValue()).getClass();
                    return new xx0(new es0((String) wq3.a("animator_id", jSONObject)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -891535336:
                if (strA.equals("submit")) {
                    zw0 zw0Var = (zw0) this.a.P0.getValue();
                    zw0Var.getClass();
                    return new ny0(new yw0(oq3.a(ys4Var, jSONObject, "container_id", w36.c), wq3.d(ys4Var, jSONObject, "on_fail_actions", zw0Var.a.k1), wq3.d(ys4Var, jSONObject, "on_success_actions", zw0Var.a.k1), (xw0) wq3.a(ys4Var, jSONObject, "request", zw0Var.a.S0)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -796594542:
                if (strA.equals("set_stored_value")) {
                    gw0 gw0Var = (gw0) this.a.G0.getValue();
                    gw0Var.getClass();
                    s36 s36Var = w36.b;
                    nl3 nl3Var = bt4.e;
                    y50 y50Var = oq3.a;
                    return new ky0(new fw0((oe2) wq3.a(ys4Var, jSONObject, "value", gw0Var.a.X8), oq3.a(ys4Var, jSONObject, "lifetime", s36Var, nl3Var, uq3.a), oq3.a(ys4Var, jSONObject, "name", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -404256420:
                if (strA.equals("copy_to_clipboard")) {
                    return new cy0(new it0((lt0) wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.CONTENT, ((st0) this.a.f0.getValue()).a.c0)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case -326583939:
                if (strA.equals("update_structure")) {
                    r01 r01Var = (r01) this.a.e1.getValue();
                    r01Var.getClass();
                    u36 u36Var = w36.c;
                    l66 l66Var = u01.a;
                    y50 y50Var2 = oq3.a;
                    return new py0(new q01((oe2) wq3.a(ys4Var, jSONObject, "value", r01Var.a.X8), oq3.a(ys4Var, jSONObject, "path", u36Var, uq3.b, l66Var), oq3.a(ys4Var, jSONObject, "variable_name", u36Var)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 10055918:
                if (strA.equals("array_set_value")) {
                    us0 us0Var = (us0) this.a.W.getValue();
                    us0Var.getClass();
                    s36 s36Var2 = w36.b;
                    nl3 nl3Var2 = bt4.e;
                    y50 y50Var3 = oq3.a;
                    return new ay0(new ts0((oe2) wq3.a(ys4Var, jSONObject, "value", us0Var.a.X8), oq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.INDEX, s36Var2, nl3Var2, uq3.a), oq3.a(ys4Var, jSONObject, "variable_name", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 110364485:
                jSONObject2 = jSONObject;
                if (strA.equals("timer")) {
                    ((rx0) this.a.Y0.getValue()).getClass();
                    m36 m36Var = ux0.a;
                    nl3 nl3Var3 = px0.d;
                    y50 y50Var4 = oq3.a;
                    return new oy0(new qx0(oq3.a(ys4Var, jSONObject2, "action", m36Var, nl3Var3, uq3.a), oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 112202875:
                jSONObject2 = jSONObject;
                if (strA.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                    ((z01) this.a.h1.getValue()).getClass();
                    m36 m36Var2 = c11.a;
                    nl3 nl3Var4 = x01.d;
                    y50 y50Var5 = oq3.a;
                    return new qy0(new y01(oq3.a(ys4Var, jSONObject2, "action", m36Var2, nl3Var4, uq3.a), oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 203934236:
                jSONObject2 = jSONObject;
                if (strA.equals("array_remove_value")) {
                    ((ps0) this.a.T.getValue()).getClass();
                    s36 s36Var3 = w36.b;
                    nl3 nl3Var5 = bt4.e;
                    y50 y50Var6 = oq3.a;
                    return new zx0(new os0(oq3.a(ys4Var, jSONObject2, FirebaseAnalytics.Param.INDEX, s36Var3, nl3Var5, uq3.a), oq3.a(ys4Var, jSONObject, "variable_name", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 301532353:
                jSONObject2 = jSONObject;
                if (strA.equals("show_tooltip")) {
                    ((qw0) this.a.M0.getValue()).getClass();
                    return new my0(new pw0(oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c), oq3.a(ys4Var, jSONObject, "multiple", w36.a, bt4.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 417790729:
                jSONObject2 = jSONObject;
                if (strA.equals("scroll_by")) {
                    ((bv0) this.a.u0.getValue()).getClass();
                    return new hy0(bv0.b(ys4Var, jSONObject));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 417791277:
                if (!strA.equals("scroll_to")) {
                    xq3Var = ys4Var.b().get(strA);
                    if (xq3Var != null) {
                        throw gt4.b(strA, jSONObject);
                    }
                    if (xq3Var instanceof h01) {
                        h01Var = (h01) xq3Var;
                    } else {
                        h01Var = null;
                    }
                    if (h01Var != null) {
                        return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                    }
                    throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
                }
                uv0 uv0Var = (uv0) this.a.A0.getValue();
                uv0Var.getClass();
                o36 o36Var = w36.a;
                nl3 nl3Var6 = bt4.c;
                as2 as2Var = xv0.a;
                y50 y50Var7 = oq3.a;
                as2 as2VarA = oq3.a(ys4Var, jSONObject, "animated", o36Var, nl3Var6, uq3.a, as2Var);
                if (as2VarA != null) {
                    as2Var = as2VarA;
                }
                return new iy0(new tv0(as2Var, (kv0) wq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.DESTINATION, uv0Var.a.x0), oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c)));
            case 932090484:
                jSONObject2 = jSONObject;
                if (strA.equals("set_state")) {
                    ((aw0) this.a.D0.getValue()).getClass();
                    as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "state_id", w36.c);
                    o36 o36Var2 = w36.a;
                    nl3 nl3Var7 = bt4.c;
                    as2 as2Var2 = dw0.a;
                    as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "temporary", o36Var2, nl3Var7, uq3.a, as2Var2);
                    if (as2VarA3 != null) {
                        as2Var2 = as2VarA3;
                    }
                    return new jy0(new zv0(as2VarA2, as2Var2));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1427818632:
                if (strA.equals("download")) {
                    cu0 cu0Var = (cu0) this.a.l0.getValue();
                    List listD = wq3.d(ys4Var, jSONObject, "on_fail_actions", cu0Var.a.k1);
                    List listD2 = wq3.d(ys4Var, jSONObject, "on_success_actions", cu0Var.a.k1);
                    v36 v36Var = w36.e;
                    nl3 nl3Var8 = bt4.b;
                    y50 y50Var8 = oq3.a;
                    return new ey0(new bu0(listD, listD2, oq3.a(ys4Var, jSONObject, "url", v36Var, nl3Var8, uq3.a)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1550697109:
                if (strA.equals("focus_element")) {
                    ((hu0) this.a.o0.getValue()).getClass();
                    return new fy0(new gu0(oq3.a(ys4Var, jSONObject, "element_id", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1587919371:
                if (strA.equals("dict_set_value")) {
                    xt0 xt0Var = (xt0) this.a.i0.getValue();
                    xt0Var.getClass();
                    u36 u36Var2 = w36.c;
                    return new dy0(new wt0((oe2) wq3.c(ys4Var, jSONObject, "value", xt0Var.a.X8), oq3.a(ys4Var, jSONObject, TJKeyValueStorageKt.KEY, u36Var2), oq3.a(ys4Var, jSONObject, "variable_name", u36Var2)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1715728902:
                if (strA.equals("hide_tooltip")) {
                    ((nu0) this.a.r0.getValue()).getClass();
                    return new gy0(new mu0(oq3.a(ys4Var, jSONObject, TtmlNode.ATTR_ID, w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            case 1811437713:
                if (strA.equals("array_insert_value")) {
                    ks0 ks0Var = (ks0) this.a.Q.getValue();
                    ks0Var.getClass();
                    return new yx0(new js0((oe2) wq3.a(ys4Var, jSONObject, "value", ks0Var.a.X8), oq3.a(ys4Var, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e), oq3.a(ys4Var, jSONObject, "variable_name", w36.c)));
                }
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
            default:
                xq3Var = ys4Var.b().get(strA);
                if (xq3Var != null) {
                    throw gt4.b(strA, jSONObject);
                }
                if (xq3Var instanceof h01) {
                    h01Var = (h01) xq3Var;
                } else {
                    h01Var = null;
                }
                if (h01Var != null) {
                    return ((ez0) this.a.d1.getValue()).a(ys4Var, h01Var, jSONObject);
                }
                throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
        }
    }
}
