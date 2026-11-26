package yads;

import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class x10 {
    public static f20 a(zu3 zu3Var, s10 s10Var) {
        String str = s10Var.b;
        if (str == null) {
            return null;
        }
        try {
            int iOrdinal = s10Var.ordinal();
            if (iOrdinal == 0) {
                return new b20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 1) {
                return new c20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 2) {
                return new a20(((av3) zu3Var).a(str, false));
            }
            if (iOrdinal == 3) {
                return new d20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 4) {
                return new e20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 5) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        } catch (ClassCastException unused) {
        }
    }
}
