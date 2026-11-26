package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ki2 {
    public static li2 a(String str, vh2 vh2Var, fs2 fs2Var, jp0 jp0Var) {
        ji2 ii2Var;
        vq0 vq0Var = (vq0) vh2Var;
        vq0Var.getClass();
        View viewFindViewWithTag = vq0Var.findViewWithTag(str);
        if (viewFindViewWithTag != null) {
            if (viewFindViewWithTag instanceof cy1) {
                cy1 cy1Var = (cy1) viewFindViewWithTag;
                wp0 wp0Var = (wp0) cy1Var.b.c;
                wp0Var.getClass();
                int iOrdinal = ((lg1) wp0Var.a.C.a(fs2Var)).ordinal();
                if (iOrdinal == 0) {
                    ii2Var = new hi2(cy1Var, jp0Var);
                } else {
                    if (iOrdinal != 1) {
                        defpackage.me0.e();
                        return null;
                    }
                    ii2Var = new fi2(cy1Var, jp0Var);
                }
            } else if (viewFindViewWithTag instanceof et1) {
                ii2Var = new gi2((et1) viewFindViewWithTag);
            } else {
                ii2Var = viewFindViewWithTag instanceof m62 ? new ii2((m62) viewFindViewWithTag) : null;
            }
            if (ii2Var != null) {
                return new li2(ii2Var);
            }
        }
        return null;
    }
}
