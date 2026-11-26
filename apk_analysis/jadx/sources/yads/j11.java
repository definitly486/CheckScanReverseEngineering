package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum j11 {
    FADE("fade"),
    TRANSLATE("translate"),
    SCALE("scale"),
    NATIVE("native"),
    SET("set"),
    NO_ANIMATION("no_animation");

    public static final i11 c = new i11();
    public static final nl3 d = new defpackage.ii5(5);
    public final String b;

    j11(String str) {
        this.b = str;
    }

    public static final j11 a(String str) {
        c.getClass();
        j11 j11Var = FADE;
        if (defpackage.aa4.e(str, "fade")) {
            return j11Var;
        }
        j11 j11Var2 = TRANSLATE;
        if (defpackage.aa4.e(str, "translate")) {
            return j11Var2;
        }
        j11 j11Var3 = SCALE;
        if (defpackage.aa4.e(str, "scale")) {
            return j11Var3;
        }
        j11 j11Var4 = NATIVE;
        if (defpackage.aa4.e(str, "native")) {
            return j11Var4;
        }
        j11 j11Var5 = SET;
        if (defpackage.aa4.e(str, "set")) {
            return j11Var5;
        }
        j11 j11Var6 = NO_ANIMATION;
        if (defpackage.aa4.e(str, "no_animation")) {
            return j11Var6;
        }
        return null;
    }
}
