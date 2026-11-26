package yads;

import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pe4 {
    public static zz a(by4 by4Var, fv5 fv5Var) {
        boolean z = false;
        boolean z2 = (fv5Var == null || by4Var == null) ? false : true;
        if (fv5Var == null && by4Var == null) {
            z = true;
        }
        if (z2 || z) {
            return wz.a;
        }
        if (fv5Var != null) {
            return fv5Var.b;
        }
        return by4Var != null ? new uz(by4Var) : wz.a;
    }

    public static List a(fv5 fv5Var, n83 n83Var) {
        ev5 ev5Var = fv5Var instanceof ev5 ? (ev5) fv5Var : null;
        fv5 fv5Var2 = n83Var != null ? n83Var.b : null;
        return yr.G(new Object[]{ev5Var, fv5Var2 instanceof ev5 ? (ev5) fv5Var2 : null, n83Var != null ? n83Var.a : null});
    }
}
