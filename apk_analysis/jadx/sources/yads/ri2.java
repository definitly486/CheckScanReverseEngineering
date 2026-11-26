package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum ri2 {
    VISIBLE(TJAdUnitConstants.String.VISIBLE),
    INVISIBLE("invisible"),
    GONE("gone");

    public static final qi2 c = new qi2();
    public static final nl3 d = new defpackage.w82(10);
    public final String b;

    ri2(String str) {
        this.b = str;
    }

    public static final ri2 a(String str) {
        c.getClass();
        ri2 ri2Var = VISIBLE;
        if (defpackage.aa4.e(str, TJAdUnitConstants.String.VISIBLE)) {
            return ri2Var;
        }
        ri2 ri2Var2 = INVISIBLE;
        if (defpackage.aa4.e(str, "invisible")) {
            return ri2Var2;
        }
        ri2 ri2Var3 = GONE;
        if (defpackage.aa4.e(str, "gone")) {
            return ri2Var3;
        }
        return null;
    }
}
