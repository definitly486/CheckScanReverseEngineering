package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class rl {
    public static final td4.a a = td4.a.a(CmcdData.OBJECT_TYPE_AUDIO_ONLY, TtmlNode.TAG_P, CmcdData.STREAMING_FORMAT_SS, "rz", "r", "o", "so", "eo", "sk", "sa", "rx", "ry");
    public static final td4.a b = td4.a.a("k");

    public static void a(dl dlVar, nw4 nw4Var) {
        Float fValueOf = Float.valueOf(0.0f);
        List list = (List) dlVar.b;
        if (list.isEmpty()) {
            list.add(new vf4(nw4Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(nw4Var.m)));
        } else if (((vf4) list.get(0)).b == 0) {
            list.set(0, new vf4(nw4Var, fValueOf, fValueOf, (Interpolator) null, 0.0f, Float.valueOf(nw4Var.m)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean b(dl dlVar) {
        if (dlVar != null) {
            return dlVar.c() && ((Float) ((vf4) ((List) dlVar.b).get(0)).b).floatValue() == 0.0f;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0123  */
    /* JADX WARN: Multi-variable type inference failed */
    public static ql c(he4 he4Var, nw4 nw4Var) {
        il ilVar;
        boolean z = he4Var.U() == td4.b.BEGIN_OBJECT;
        if (z) {
            he4Var.n();
        }
        eeb eebVarA = null;
        sl slVarB = null;
        dl dlVarD = null;
        il ilVar2 = null;
        dl dlVarD2 = null;
        dl dlVarD3 = null;
        dl dlVarD4 = null;
        dl dlVarD5 = null;
        dl dlVarD6 = null;
        fl flVarF = null;
        dl dlVarD7 = null;
        dl dlVarD8 = null;
        while (he4Var.v()) {
            switch (he4Var.X(a)) {
                case 0:
                    he4Var.n();
                    while (he4Var.v()) {
                        if (he4Var.X(b) != 0) {
                            he4Var.Z();
                            he4Var.e0();
                        } else {
                            eebVarA = gl.a(he4Var, nw4Var);
                        }
                    }
                    he4Var.p();
                    break;
                case 1:
                    slVarB = gl.b(he4Var, nw4Var);
                    break;
                case 2:
                    ilVar2 = new il(zf4.a(he4Var, nw4Var, 1.0f, pd7.b, false));
                    break;
                case 3:
                    dlVarD6 = tl.d(he4Var, nw4Var, false);
                    a(dlVarD6, nw4Var);
                    break;
                case 4:
                    dlVarD = tl.d(he4Var, nw4Var, false);
                    a(dlVarD, nw4Var);
                    break;
                case 5:
                    flVarF = tl.f(he4Var, nw4Var);
                    break;
                case 6:
                    dlVarD7 = tl.d(he4Var, nw4Var, false);
                    break;
                case 7:
                    dlVarD8 = tl.d(he4Var, nw4Var, false);
                    break;
                case 8:
                    dlVarD2 = tl.d(he4Var, nw4Var, false);
                    break;
                case 9:
                    dlVarD3 = tl.d(he4Var, nw4Var, false);
                    break;
                case 10:
                    dlVarD4 = tl.d(he4Var, nw4Var, false);
                    a(dlVarD4, nw4Var);
                    break;
                case 11:
                    dlVarD5 = tl.d(he4Var, nw4Var, false);
                    a(dlVarD5, nw4Var);
                    break;
                default:
                    he4Var.Z();
                    he4Var.e0();
                    break;
            }
        }
        if (z) {
            he4Var.p();
        }
        if (eebVarA == null || (eebVarA.c() && ((PointF) ((vf4) ((ArrayList) eebVarA.a).get(0)).b).equals(0.0f, 0.0f))) {
            eebVarA = null;
        }
        sl slVar = (slVarB == null || (!(slVarB instanceof kl) && slVarB.c() && ((PointF) ((vf4) slVarB.b().get(0)).b).equals(0.0f, 0.0f))) ? null : slVarB;
        dl dlVar = b(dlVarD) ? null : dlVarD;
        if (ilVar2 == null) {
            ilVar = null;
        } else {
            if (ilVar2.c()) {
                od7 od7Var = (od7) ((vf4) ((List) ilVar2.b).get(0)).b;
                if (od7Var.a == 1.0f && od7Var.b == 1.0f) {
                    ilVar = null;
                }
            }
            ilVar = ilVar2;
        }
        return new ql(eebVarA, slVar, ilVar, dlVar, flVarF, dlVarD7, dlVarD8, (dlVarD2 == null || (dlVarD2.c() && ((Float) ((vf4) ((List) dlVarD2.b).get(0)).b).floatValue() == 0.0f)) ? null : dlVarD2, (dlVarD3 == null || (dlVarD3.c() && ((Float) ((vf4) ((List) dlVarD3.b).get(0)).b).floatValue() == 0.0f)) ? null : dlVarD3, b(dlVarD4) ? null : dlVarD4, b(dlVarD5) ? null : dlVarD5, b(dlVarD6) ? null : dlVarD6);
    }
}
