package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class md1 {
    public static gd1 a(p41 p41Var, String str) {
        List<gd1> extensions = p41Var.getExtensions();
        if (extensions == null) {
            return null;
        }
        for (gd1 gd1Var : extensions) {
            if (defpackage.aa4.e(str, gd1Var.a)) {
                return gd1Var;
            }
        }
        return null;
    }
}
