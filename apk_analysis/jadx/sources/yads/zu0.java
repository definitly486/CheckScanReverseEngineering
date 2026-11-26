package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum zu0 {
    CLAMP("clamp"),
    RING("ring");

    public static final yu0 c = new yu0();
    public static final nl3 d = new defpackage.sf(6);
    public final String b;

    zu0(String str) {
        this.b = str;
    }

    public static final zu0 a(String str) {
        c.getClass();
        zu0 zu0Var = CLAMP;
        if (defpackage.aa4.e(str, "clamp")) {
            return zu0Var;
        }
        zu0 zu0Var2 = RING;
        if (defpackage.aa4.e(str, "ring")) {
            return zu0Var2;
        }
        return null;
    }
}
