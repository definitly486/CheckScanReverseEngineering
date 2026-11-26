package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class gn1 implements ln0 {
    public final tq3 a;

    public gn1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final q72 a(ys4 ys4Var, JSONObject jSONObject) {
        String str;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        q72 q72Var = xq3Var instanceof q72 ? (q72) xq3Var : null;
        if (q72Var == null) {
            str = strA;
        } else if (q72Var instanceof e72) {
            str = "image";
        } else if (q72Var instanceof c72) {
            str = "gif";
        } else if (q72Var instanceof o72) {
            str = "text";
        } else if (q72Var instanceof j72) {
            str = "separator";
        } else if (q72Var instanceof z62) {
            str = TtmlNode.RUBY_CONTAINER;
        } else if (q72Var instanceof d72) {
            str = "grid";
        } else if (q72Var instanceof b72) {
            str = "gallery";
        } else if (q72Var instanceof h72) {
            str = "pager";
        } else if (q72Var instanceof n72) {
            str = "tabs";
        } else if (q72Var instanceof l72) {
            str = RemoteConfigConstants.ResponseFieldKey.STATE;
        } else if (q72Var instanceof a72) {
            str = "custom";
        } else if (q72Var instanceof f72) {
            str = "indicator";
        } else if (q72Var instanceof k72) {
            str = "slider";
        } else if (q72Var instanceof m72) {
            str = "switch";
        } else if (q72Var instanceof g72) {
            str = "input";
        } else if (q72Var instanceof i72) {
            str = "select";
        } else {
            if (!(q72Var instanceof p72)) {
                defpackage.me0.e();
                return null;
            }
            str = MimeTypes.BASE_TYPE_VIDEO;
        }
        switch (str.hashCode()) {
            case -1349088399:
                if (str.equals("custom")) {
                    return new a72(((qa1) this.a.C2.getValue()).a(ys4Var, (za1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -906021636:
                if (str.equals("select")) {
                    return new i72(((yy1) this.a.w6.getValue()).a(ys4Var, (fz1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -899647263:
                if (str.equals("slider")) {
                    return new k72(((f22) this.a.a7.getValue()).a(ys4Var, (n22) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -889473228:
                if (str.equals("switch")) {
                    return new m72(((o52) this.a.H7.getValue()).a(ys4Var, (r52) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -711999985:
                if (str.equals("indicator")) {
                    return new f72(((oj1) this.a.d4.getValue()).a(ys4Var, (rj1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -410956671:
                if (str.equals(TtmlNode.RUBY_CONTAINER)) {
                    return new z62(((c91) this.a.n2.getValue()).a(ys4Var, (k91) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case -196315310:
                if (str.equals("gallery")) {
                    return new b72(((xg1) this.a.L3.getValue()).a(ys4Var, (bh1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 102340:
                if (str.equals("gif")) {
                    return new c72(((jh1) this.a.O3.getValue()).a(ys4Var, (mh1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 3181382:
                if (str.equals("grid")) {
                    return new d72(((rh1) this.a.R3.getValue()).a(ys4Var, (vh1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 3552126:
                if (str.equals("tabs")) {
                    return new n72(((j62) this.a.K7.getValue()).a(ys4Var, (y62) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    return new o72(((c92) this.a.o8.getValue()).a(ys4Var, (fb2) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    return new e72(((li1) this.a.X3.getValue()).a(ys4Var, (wi1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 100358090:
                if (str.equals("input")) {
                    return new g72(((el1) this.a.E4.getValue()).a(ys4Var, (xl1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 106426307:
                if (str.equals("pager")) {
                    return new h72(((fs1) this.a.x5.getValue()).a(ys4Var, (at1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 109757585:
                if (str.equals(RemoteConfigConstants.ResponseFieldKey.STATE)) {
                    return new l72(((f32) this.a.m7.getValue()).a(ys4Var, (t32) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 112202875:
                if (str.equals(MimeTypes.BASE_TYPE_VIDEO)) {
                    return new p72(((tg2) this.a.k9.getValue()).a(ys4Var, (lh2) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
            case 1732829925:
                if (str.equals("separator")) {
                    return new j72(((rz1) this.a.C6.getValue()).a(ys4Var, (vz1) (q72Var != null ? q72Var.a() : null), jSONObject));
                }
                break;
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
    }
}
