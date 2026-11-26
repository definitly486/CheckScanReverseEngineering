package yads;

import defpackage.dr8;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum h81 {
    VERTICAL("vertical"),
    HORIZONTAL("horizontal"),
    OVERLAP("overlap");

    public static final g81 c = new g81();
    public static final nl3 d = new dr8(1);
    public final String b;

    h81(String str) {
        this.b = str;
    }

    public static final h81 a(String str) {
        c.getClass();
        h81 h81Var = VERTICAL;
        if (defpackage.aa4.e(str, "vertical")) {
            return h81Var;
        }
        h81 h81Var2 = HORIZONTAL;
        if (defpackage.aa4.e(str, "horizontal")) {
            return h81Var2;
        }
        h81 h81Var3 = OVERLAP;
        if (defpackage.aa4.e(str, "overlap")) {
            return h81Var3;
        }
        return null;
    }
}
