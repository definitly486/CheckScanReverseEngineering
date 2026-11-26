package yads;

import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class y10 {
    public static f20 a(zu3 zu3Var, s10 s10Var) {
        String str = s10Var.c;
        try {
            int iOrdinal = s10Var.ordinal();
            if (iOrdinal == 0) {
                return new b20(((av3) zu3Var).c(str));
            }
            boolean z = true;
            if (iOrdinal == 1) {
                int iA = ((av3) zu3Var).a(-1, str);
                Integer numValueOf = Integer.valueOf(iA);
                if (iA == -1) {
                    numValueOf = null;
                }
                return new c20(numValueOf != null ? String.valueOf(numValueOf.intValue()) : null);
            }
            if (iOrdinal == 2) {
                if (((av3) zu3Var).a(-1, str) == -1) {
                    z = false;
                }
                return new a20(z);
            }
            if (iOrdinal == 3) {
                return new d20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 4) {
                return new e20(((av3) zu3Var).c(str));
            }
            if (iOrdinal == 5) {
                return new z10(((av3) zu3Var).c(str));
            }
            throw new NoWhenBranchMatchedException();
        } catch (ClassCastException unused) {
            return null;
        }
    }
}
