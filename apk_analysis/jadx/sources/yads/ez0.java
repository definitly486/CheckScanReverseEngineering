package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ez0 implements qv5 {
    public final tq3 a;

    public ez0(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final ry0 a(ys4 ys4Var, h01 h01Var, JSONObject jSONObject) {
        if (h01Var instanceof mz0) {
            return new wx0(((bs0) this.a.M.getValue()).a(ys4Var, ((mz0) h01Var).a, jSONObject));
        }
        if (h01Var instanceof nz0) {
            hs0 hs0Var = (hs0) this.a.P.getValue();
            is0 is0Var = ((nz0) h01Var).a;
            hs0Var.getClass();
            return new xx0(new es0((String) qq3.a(is0Var.a, jSONObject, "animator_id")));
        }
        if (h01Var instanceof oz0) {
            ms0 ms0Var = (ms0) this.a.S.getValue();
            ns0 ns0Var = ((oz0) h01Var).a;
            ms0Var.getClass();
            as2 as2VarB = qq3.b(ys4Var, ns0Var.a, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e);
            zw2 zw2Var = ns0Var.b;
            tq3 tq3Var = ms0Var.a;
            return new yx0(new js0((oe2) qq3.a(ys4Var, zw2Var, jSONObject, "value", tq3Var.Z8, tq3Var.X8), as2VarB, qq3.a(ys4Var, ns0Var.c, jSONObject, "variable_name", w36.c)));
        }
        if (h01Var instanceof pz0) {
            rs0 rs0Var = (rs0) this.a.V.getValue();
            ss0 ss0Var = ((pz0) h01Var).a;
            rs0Var.getClass();
            return new zx0(new os0(qq3.a(ys4Var, ss0Var.a, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e), qq3.a(ys4Var, ss0Var.b, jSONObject, "variable_name", w36.c)));
        }
        if (h01Var instanceof qz0) {
            ws0 ws0Var = (ws0) this.a.Y.getValue();
            xs0 xs0Var = ((qz0) h01Var).a;
            ws0Var.getClass();
            as2 as2VarA = qq3.a(ys4Var, xs0Var.a, jSONObject, FirebaseAnalytics.Param.INDEX, w36.b, bt4.e);
            zw2 zw2Var2 = xs0Var.b;
            tq3 tq3Var2 = ws0Var.a;
            return new ay0(new ts0((oe2) qq3.a(ys4Var, zw2Var2, jSONObject, "value", tq3Var2.Z8, tq3Var2.X8), as2VarA, qq3.a(ys4Var, xs0Var.c, jSONObject, "variable_name", w36.c)));
        }
        if (h01Var instanceof rz0) {
            ((gt0) this.a.b0.getValue()).getClass();
            return new by0(new dt0());
        }
        if (h01Var instanceof sz0) {
            ut0 ut0Var = (ut0) this.a.h0.getValue();
            vt0 vt0Var = ((sz0) h01Var).a;
            ut0Var.getClass();
            zw2 zw2Var3 = vt0Var.a;
            tq3 tq3Var3 = ut0Var.a;
            return new cy0(new it0((lt0) qq3.a(ys4Var, zw2Var3, jSONObject, FirebaseAnalytics.Param.CONTENT, tq3Var3.e0, tq3Var3.c0)));
        }
        if (h01Var instanceof tz0) {
            zt0 zt0Var = (zt0) this.a.k0.getValue();
            au0 au0Var = ((tz0) h01Var).a;
            zt0Var.getClass();
            zw2 zw2Var4 = au0Var.a;
            u36 u36Var = w36.c;
            as2 as2VarA2 = qq3.a(ys4Var, zw2Var4, jSONObject, TJKeyValueStorageKt.KEY, u36Var);
            zw2 zw2Var5 = au0Var.b;
            tq3 tq3Var4 = zt0Var.a;
            return new dy0(new wt0((oe2) qq3.b(ys4Var, zw2Var5, jSONObject, "value", tq3Var4.Z8, tq3Var4.X8), as2VarA2, qq3.a(ys4Var, au0Var.c, jSONObject, "variable_name", u36Var)));
        }
        if (h01Var instanceof uz0) {
            eu0 eu0Var = (eu0) this.a.n0.getValue();
            fu0 fu0Var = ((uz0) h01Var).a;
            eu0Var.getClass();
            zw2 zw2Var6 = fu0Var.a;
            tq3 tq3Var5 = eu0Var.a;
            List listC = qq3.c(ys4Var, zw2Var6, jSONObject, "on_fail_actions", tq3Var5.m1, tq3Var5.k1);
            zw2 zw2Var7 = fu0Var.b;
            tq3 tq3Var6 = eu0Var.a;
            return new ey0(new bu0(listC, qq3.c(ys4Var, zw2Var7, jSONObject, "on_success_actions", tq3Var6.m1, tq3Var6.k1), qq3.a(ys4Var, fu0Var.c, jSONObject, "url", w36.e, bt4.b)));
        }
        if (h01Var instanceof vz0) {
            ju0 ju0Var = (ju0) this.a.q0.getValue();
            ku0 ku0Var = ((vz0) h01Var).a;
            ju0Var.getClass();
            return new fy0(new gu0(qq3.a(ys4Var, ku0Var.a, jSONObject, "element_id", w36.c)));
        }
        if (h01Var instanceof wz0) {
            pu0 pu0Var = (pu0) this.a.t0.getValue();
            qu0 qu0Var = ((wz0) h01Var).a;
            pu0Var.getClass();
            return new gy0(new mu0(qq3.a(ys4Var, qu0Var.a, jSONObject, TtmlNode.ATTR_ID, w36.c)));
        }
        if (h01Var instanceof xz0) {
            dv0 dv0Var = (dv0) this.a.w0.getValue();
            fv0 fv0Var = ((xz0) h01Var).a;
            dv0Var.getClass();
            return new hy0(dv0.a(ys4Var, fv0Var, jSONObject));
        }
        if (h01Var instanceof yz0) {
            wv0 wv0Var = (wv0) this.a.C0.getValue();
            yv0 yv0Var = ((yz0) h01Var).a;
            wv0Var.getClass();
            zw2 zw2Var8 = yv0Var.a;
            o36 o36Var = w36.a;
            nl3 nl3Var = bt4.c;
            as2 as2Var = xv0.a;
            as2 as2VarA3 = qq3.a(ys4Var, zw2Var8, jSONObject, "animated", o36Var, nl3Var, as2Var);
            if (as2VarA3 != null) {
                as2Var = as2VarA3;
            }
            zw2 zw2Var9 = yv0Var.b;
            tq3 tq3Var7 = wv0Var.a;
            return new iy0(new tv0(as2Var, (kv0) qq3.a(ys4Var, zw2Var9, jSONObject, FirebaseAnalytics.Param.DESTINATION, tq3Var7.z0, tq3Var7.x0), qq3.a(ys4Var, yv0Var.c, jSONObject, TtmlNode.ATTR_ID, w36.c)));
        }
        if (h01Var instanceof zz0) {
            cw0 cw0Var = (cw0) this.a.F0.getValue();
            ew0 ew0Var = ((zz0) h01Var).a;
            cw0Var.getClass();
            as2 as2VarA4 = qq3.a(ys4Var, ew0Var.a, jSONObject, "state_id", w36.c);
            zw2 zw2Var10 = ew0Var.b;
            o36 o36Var2 = w36.a;
            nl3 nl3Var2 = bt4.c;
            as2 as2Var2 = dw0.a;
            as2 as2VarA5 = qq3.a(ys4Var, zw2Var10, jSONObject, "temporary", o36Var2, nl3Var2, as2Var2);
            if (as2VarA5 != null) {
                as2Var2 = as2VarA5;
            }
            return new jy0(new zv0(as2VarA4, as2Var2));
        }
        if (h01Var instanceof a01) {
            iw0 iw0Var = (iw0) this.a.I0.getValue();
            jw0 jw0Var = ((a01) h01Var).a;
            iw0Var.getClass();
            as2 as2VarA6 = qq3.a(ys4Var, jw0Var.a, jSONObject, "lifetime", w36.b, bt4.e);
            as2 as2VarA7 = qq3.a(ys4Var, jw0Var.b, jSONObject, "name", w36.c);
            zw2 zw2Var11 = jw0Var.c;
            tq3 tq3Var8 = iw0Var.a;
            return new ky0(new fw0((oe2) qq3.a(ys4Var, zw2Var11, jSONObject, "value", tq3Var8.Z8, tq3Var8.X8), as2VarA6, as2VarA7));
        }
        if (h01Var instanceof b01) {
            nw0 nw0Var = (nw0) this.a.L0.getValue();
            ow0 ow0Var = ((b01) h01Var).a;
            nw0Var.getClass();
            zw2 zw2Var12 = ow0Var.a;
            tq3 tq3Var9 = nw0Var.a;
            return new ly0(new kw0((oe2) qq3.a(ys4Var, zw2Var12, jSONObject, "value", tq3Var9.Z8, tq3Var9.X8), qq3.a(ys4Var, ow0Var.b, jSONObject, "variable_name", w36.c)));
        }
        if (h01Var instanceof c01) {
            sw0 sw0Var = (sw0) this.a.O0.getValue();
            tw0 tw0Var = ((c01) h01Var).a;
            sw0Var.getClass();
            return new my0(new pw0(qq3.a(ys4Var, tw0Var.a, jSONObject, TtmlNode.ATTR_ID, w36.c), qq3.b(ys4Var, tw0Var.b, jSONObject, "multiple", w36.a, bt4.c)));
        }
        if (h01Var instanceof d01) {
            return new ny0(((bx0) this.a.R0.getValue()).a(ys4Var, ((d01) h01Var).a, jSONObject));
        }
        if (h01Var instanceof e01) {
            tx0 tx0Var = (tx0) this.a.a1.getValue();
            vx0 vx0Var = ((e01) h01Var).a;
            tx0Var.getClass();
            return new oy0(new qx0(qq3.a(ys4Var, vx0Var.a, jSONObject, "action", ux0.a, px0.d), qq3.a(ys4Var, vx0Var.b, jSONObject, TtmlNode.ATTR_ID, w36.c)));
        }
        if (!(h01Var instanceof f01)) {
            if (!(h01Var instanceof g01)) {
                defpackage.me0.e();
                return null;
            }
            b11 b11Var = (b11) this.a.j1.getValue();
            d11 d11Var = ((g01) h01Var).a;
            b11Var.getClass();
            return new qy0(new y01(qq3.a(ys4Var, d11Var.a, jSONObject, "action", c11.a, x01.d), qq3.a(ys4Var, d11Var.b, jSONObject, TtmlNode.ATTR_ID, w36.c)));
        }
        t01 t01Var = (t01) this.a.g1.getValue();
        v01 v01Var = ((f01) h01Var).a;
        t01Var.getClass();
        zw2 zw2Var13 = v01Var.a;
        u36 u36Var2 = w36.c;
        as2 as2VarA8 = qq3.a(ys4Var, zw2Var13, jSONObject, "path", u01.a);
        zw2 zw2Var14 = v01Var.b;
        tq3 tq3Var10 = t01Var.a;
        return new py0(new q01((oe2) qq3.a(ys4Var, zw2Var14, jSONObject, "value", tq3Var10.Z8, tq3Var10.X8), as2VarA8, qq3.a(ys4Var, v01Var.c, jSONObject, "variable_name", u36Var2)));
    }
}
