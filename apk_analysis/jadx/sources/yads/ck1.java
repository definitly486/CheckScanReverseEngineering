package yads;

import androidx.autofill.HintConstants;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum ck1 {
    SINGLE_LINE_TEXT("single_line_text"),
    MULTI_LINE_TEXT("multi_line_text"),
    PHONE("phone"),
    NUMBER("number"),
    EMAIL("email"),
    URI("uri"),
    PASSWORD(HintConstants.AUTOFILL_HINT_PASSWORD);

    public static final bk1 c = new bk1();
    public static final nl3 d = new defpackage.xr2(2);
    public final String b;

    ck1(String str) {
        this.b = str;
    }

    public static final ck1 a(String str) {
        c.getClass();
        ck1 ck1Var = SINGLE_LINE_TEXT;
        if (defpackage.aa4.e(str, "single_line_text")) {
            return ck1Var;
        }
        ck1 ck1Var2 = MULTI_LINE_TEXT;
        if (defpackage.aa4.e(str, "multi_line_text")) {
            return ck1Var2;
        }
        ck1 ck1Var3 = PHONE;
        if (defpackage.aa4.e(str, "phone")) {
            return ck1Var3;
        }
        ck1 ck1Var4 = NUMBER;
        if (defpackage.aa4.e(str, "number")) {
            return ck1Var4;
        }
        ck1 ck1Var5 = EMAIL;
        if (defpackage.aa4.e(str, "email")) {
            return ck1Var5;
        }
        ck1 ck1Var6 = URI;
        if (defpackage.aa4.e(str, "uri")) {
            return ck1Var6;
        }
        ck1 ck1Var7 = PASSWORD;
        if (defpackage.aa4.e(str, HintConstants.AUTOFILL_HINT_PASSWORD)) {
            return ck1Var7;
        }
        return null;
    }
}
