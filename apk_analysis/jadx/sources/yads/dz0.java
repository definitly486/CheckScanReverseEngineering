package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dz0 implements ln0 {
    public final tq3 a;

    public dz0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String str;
        boolean z;
        zw2 zw2Var;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        h01 h01Var = xq3Var instanceof h01 ? (h01) xq3Var : null;
        if (h01Var == null) {
            str = strA;
        } else if (h01Var instanceof mz0) {
            str = "animator_start";
        } else if (h01Var instanceof nz0) {
            str = "animator_stop";
        } else if (h01Var instanceof oz0) {
            str = "array_insert_value";
        } else if (h01Var instanceof pz0) {
            str = "array_remove_value";
        } else if (h01Var instanceof qz0) {
            str = "array_set_value";
        } else if (h01Var instanceof rz0) {
            str = "clear_focus";
        } else if (h01Var instanceof sz0) {
            str = "copy_to_clipboard";
        } else if (h01Var instanceof tz0) {
            str = "dict_set_value";
        } else if (h01Var instanceof uz0) {
            str = "download";
        } else if (h01Var instanceof vz0) {
            str = "focus_element";
        } else if (h01Var instanceof wz0) {
            str = "hide_tooltip";
        } else if (h01Var instanceof xz0) {
            str = "scroll_by";
        } else if (h01Var instanceof yz0) {
            str = "scroll_to";
        } else if (h01Var instanceof zz0) {
            str = "set_state";
        } else if (h01Var instanceof a01) {
            str = "set_stored_value";
        } else if (h01Var instanceof b01) {
            str = "set_variable";
        } else if (h01Var instanceof c01) {
            str = "show_tooltip";
        } else if (h01Var instanceof d01) {
            str = "submit";
        } else if (h01Var instanceof e01) {
            str = "timer";
        } else if (h01Var instanceof f01) {
            str = "update_structure";
        } else {
            if (!(h01Var instanceof g01)) {
                defpackage.me0.e();
                return null;
            }
            str = MimeTypes.BASE_TYPE_VIDEO;
        }
        switch (str.hashCode()) {
            case -1623648839:
                if (str.equals("set_variable")) {
                    mw0 mw0Var = (mw0) this.a.K0.getValue();
                    ow0 ow0Var = (ow0) (h01Var != null ? h01Var.a() : null);
                    mw0Var.getClass();
                    boolean zD = ys4Var.d();
                    tr4 tr4VarB = zs4.b(ys4Var);
                    return new b01(new ow0(pq3.a(tr4VarB, jSONObject, "value", zD, ow0Var != null ? ow0Var.a : null, mw0Var.a.Y8), pq3.a(tr4VarB, jSONObject, "variable_name", w36.c, zD, ow0Var != null ? ow0Var.b : null)));
                }
                break;
            case -1623635702:
                if (str.equals("animator_start")) {
                    return new mz0(((as0) this.a.L.getValue()).a(ys4Var, (ds0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case -1254965146:
                if (str.equals("clear_focus")) {
                    ft0 ft0Var = (ft0) this.a.a0.getValue();
                    ft0Var.getClass();
                    return new rz0(new ht0());
                }
                break;
            case -1160753574:
                if (str.equals("animator_stop")) {
                    gs0 gs0Var = (gs0) this.a.O.getValue();
                    is0 is0Var = (is0) (h01Var != null ? h01Var.a() : null);
                    gs0Var.getClass();
                    return new nz0(new is0(pq3.a(zs4.b(ys4Var), jSONObject, "animator_id", ys4Var.d(), is0Var != null ? is0Var.a : null)));
                }
                break;
            case -891535336:
                if (str.equals("submit")) {
                    return new d01(((ax0) this.a.Q0.getValue()).a(ys4Var, (lx0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case -796594542:
                if (str.equals("set_stored_value")) {
                    return new a01(((hw0) this.a.H0.getValue()).a(ys4Var, (jw0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case -404256420:
                if (str.equals("copy_to_clipboard")) {
                    tt0 tt0Var = (tt0) this.a.g0.getValue();
                    vt0 vt0Var = (vt0) (h01Var != null ? h01Var.a() : null);
                    tt0Var.getClass();
                    boolean zD2 = ys4Var.d();
                    tr4 tr4VarB2 = zs4.b(ys4Var);
                    if (vt0Var != null) {
                        zw2Var = vt0Var.a;
                        z = zD2;
                    } else {
                        z = zD2;
                        zw2Var = null;
                    }
                    return new sz0(new vt0(pq3.a(tr4VarB2, jSONObject, FirebaseAnalytics.Param.CONTENT, z, zw2Var, tt0Var.a.d0)));
                }
                break;
            case -326583939:
                if (str.equals("update_structure")) {
                    return new f01(((s01) this.a.f1.getValue()).a(ys4Var, (v01) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case 10055918:
                if (str.equals("array_set_value")) {
                    return new qz0(((vs0) this.a.X.getValue()).a(ys4Var, (xs0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case 110364485:
                if (str.equals("timer")) {
                    sx0 sx0Var = (sx0) this.a.Z0.getValue();
                    Object objA = h01Var != null ? h01Var.a() : null;
                    sx0Var.getClass();
                    return new e01(sx0.a(ys4Var, (vx0) objA, jSONObject));
                }
                break;
            case 112202875:
                if (str.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                    a11 a11Var = (a11) this.a.i1.getValue();
                    Object objA2 = h01Var != null ? h01Var.a() : null;
                    a11Var.getClass();
                    return new g01(a11.a(ys4Var, (d11) objA2, jSONObject));
                }
                break;
            case 203934236:
                if (str.equals("array_remove_value")) {
                    qs0 qs0Var = (qs0) this.a.U.getValue();
                    Object objA3 = h01Var != null ? h01Var.a() : null;
                    qs0Var.getClass();
                    return new pz0(qs0.a(ys4Var, (ss0) objA3, jSONObject));
                }
                break;
            case 301532353:
                if (str.equals("show_tooltip")) {
                    rw0 rw0Var = (rw0) this.a.N0.getValue();
                    tw0 tw0Var = (tw0) (h01Var != null ? h01Var.a() : null);
                    rw0Var.getClass();
                    boolean zD3 = ys4Var.d();
                    tr4 tr4VarB3 = zs4.b(ys4Var);
                    return new c01(new tw0(pq3.a(tr4VarB3, jSONObject, TtmlNode.ATTR_ID, w36.c, zD3, tw0Var != null ? tw0Var.a : null), pq3.b(tr4VarB3, jSONObject, "multiple", w36.a, zD3, tw0Var != null ? tw0Var.b : null, bt4.c, uq3.a)));
                }
                break;
            case 417790729:
                if (str.equals("scroll_by")) {
                    cv0 cv0Var = (cv0) this.a.v0.getValue();
                    Object objA4 = h01Var != null ? h01Var.a() : null;
                    cv0Var.getClass();
                    return new xz0(cv0.a(ys4Var, (fv0) objA4, jSONObject));
                }
                break;
            case 417791277:
                if (str.equals("scroll_to")) {
                    return new yz0(((vv0) this.a.B0.getValue()).a(ys4Var, (yv0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case 932090484:
                if (str.equals("set_state")) {
                    bw0 bw0Var = (bw0) this.a.E0.getValue();
                    ew0 ew0Var = (ew0) (h01Var != null ? h01Var.a() : null);
                    bw0Var.getClass();
                    boolean zD4 = ys4Var.d();
                    tr4 tr4VarB4 = zs4.b(ys4Var);
                    return new zz0(new ew0(pq3.a(tr4VarB4, jSONObject, "state_id", w36.c, zD4, ew0Var != null ? ew0Var.a : null), pq3.b(tr4VarB4, jSONObject, "temporary", w36.a, zD4, ew0Var != null ? ew0Var.b : null, bt4.c, uq3.a)));
                }
                break;
            case 1427818632:
                if (str.equals("download")) {
                    return new uz0(((du0) this.a.m0.getValue()).a(ys4Var, (fu0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case 1550697109:
                if (str.equals("focus_element")) {
                    iu0 iu0Var = (iu0) this.a.p0.getValue();
                    ku0 ku0Var = (ku0) (h01Var != null ? h01Var.a() : null);
                    iu0Var.getClass();
                    return new vz0(new ku0(pq3.a(zs4.b(ys4Var), jSONObject, "element_id", w36.c, ys4Var.d(), ku0Var != null ? ku0Var.a : null)));
                }
                break;
            case 1587919371:
                if (str.equals("dict_set_value")) {
                    return new tz0(((yt0) this.a.j0.getValue()).a(ys4Var, (au0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
            case 1715728902:
                if (str.equals("hide_tooltip")) {
                    ou0 ou0Var = (ou0) this.a.s0.getValue();
                    qu0 qu0Var = (qu0) (h01Var != null ? h01Var.a() : null);
                    ou0Var.getClass();
                    return new wz0(new qu0(pq3.a(zs4.b(ys4Var), jSONObject, TtmlNode.ATTR_ID, w36.c, ys4Var.d(), qu0Var != null ? qu0Var.a : null)));
                }
                break;
            case 1811437713:
                if (str.equals("array_insert_value")) {
                    return new oz0(((ls0) this.a.R.getValue()).a(ys4Var, (ns0) (h01Var != null ? h01Var.a() : null), jSONObject));
                }
                break;
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
    }
}
