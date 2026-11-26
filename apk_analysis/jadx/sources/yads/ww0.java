package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum ww0 {
    GET("get"),
    POST("post"),
    PUT("put"),
    PATCH("patch"),
    DELETE("delete"),
    HEAD(TtmlNode.TAG_HEAD),
    OPTIONS("options");

    public static final vw0 c = new vw0();
    public static final nl3 d = new defpackage.cg1(3);
    public final String b;

    ww0(String str) {
        this.b = str;
    }

    public static final ww0 a(String str) {
        c.getClass();
        ww0 ww0Var = GET;
        if (defpackage.aa4.e(str, "get")) {
            return ww0Var;
        }
        ww0 ww0Var2 = POST;
        if (defpackage.aa4.e(str, "post")) {
            return ww0Var2;
        }
        ww0 ww0Var3 = PUT;
        if (defpackage.aa4.e(str, "put")) {
            return ww0Var3;
        }
        ww0 ww0Var4 = PATCH;
        if (defpackage.aa4.e(str, "patch")) {
            return ww0Var4;
        }
        ww0 ww0Var5 = DELETE;
        if (defpackage.aa4.e(str, "delete")) {
            return ww0Var5;
        }
        ww0 ww0Var6 = HEAD;
        if (defpackage.aa4.e(str, TtmlNode.TAG_HEAD)) {
            return ww0Var6;
        }
        ww0 ww0Var7 = OPTIONS;
        if (defpackage.aa4.e(str, "options")) {
            return ww0Var7;
        }
        return null;
    }
}
