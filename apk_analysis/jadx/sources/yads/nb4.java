package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nb4 {
    public static ob4 a(String str) {
        for (ob4 ob4Var : ob4.values()) {
            if (defpackage.aa4.e(ob4Var.b, str)) {
                return ob4Var;
            }
        }
        return ob4.UNSPECIFIED;
    }
}
