package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class fn1 implements ln0 {
    public final tq3 a;

    public fn1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        switch (strA.hashCode()) {
            case -1349088399:
                if (strA.equals("custom")) {
                    return new vp0(((pa1) this.a.B2.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -906021636:
                if (strA.equals("select")) {
                    return new dq0(((xy1) this.a.v6.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -899647263:
                if (strA.equals("slider")) {
                    return new fq0(((e22) this.a.Z6.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -889473228:
                if (strA.equals("switch")) {
                    return new hq0(((n52) this.a.G7.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -711999985:
                if (strA.equals("indicator")) {
                    return new aq0(((nj1) this.a.c4.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -410956671:
                if (strA.equals(TtmlNode.RUBY_CONTAINER)) {
                    return new up0(((b91) this.a.m2.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case -196315310:
                if (strA.equals("gallery")) {
                    return new wp0(((wg1) this.a.K3.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 102340:
                if (strA.equals("gif")) {
                    return new xp0(((ih1) this.a.N3.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 3181382:
                if (strA.equals("grid")) {
                    return new yp0(((qh1) this.a.Q3.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 3552126:
                if (strA.equals("tabs")) {
                    return new iq0(((i62) this.a.J7.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 3556653:
                if (strA.equals("text")) {
                    return new jq0(((b92) this.a.n8.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 100313435:
                if (strA.equals("image")) {
                    return new zp0(((ki1) this.a.W3.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 100358090:
                if (strA.equals("input")) {
                    return new bq0(((dl1) this.a.D4.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 106426307:
                if (strA.equals("pager")) {
                    return new cq0(((es1) this.a.w5.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 109757585:
                if (strA.equals(RemoteConfigConstants.ResponseFieldKey.STATE)) {
                    return new gq0(((e32) this.a.l7.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 112202875:
                if (strA.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                    return new kq0(((sg2) this.a.j9.getValue()).a(ys4Var, jSONObject));
                }
                break;
            case 1732829925:
                if (strA.equals("separator")) {
                    return new eq0(((qz1) this.a.B6.getValue()).a(ys4Var, jSONObject));
                }
                break;
        }
        xq3 xq3Var = ys4Var.b().get(strA);
        if (xq3Var == null) {
            throw gt4.b(strA, jSONObject);
        }
        q72 q72Var = xq3Var instanceof q72 ? (q72) xq3Var : null;
        if (q72Var != null) {
            return ((hn1) this.a.u9.getValue()).a(ys4Var, q72Var, jSONObject);
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
