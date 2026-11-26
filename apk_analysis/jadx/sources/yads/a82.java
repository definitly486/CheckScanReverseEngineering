package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum a82 {
    NONE("none"),
    START(TtmlNode.START),
    END(TtmlNode.END),
    MIDDLE("middle");

    public static final z72 c = new z72();
    public static final nl3 d = new defpackage.nx0(4);
    public final String b;

    a82(String str) {
        this.b = str;
    }

    public static final a82 a(String str) {
        c.getClass();
        a82 a82Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return a82Var;
        }
        a82 a82Var2 = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return a82Var2;
        }
        a82 a82Var3 = END;
        if (defpackage.aa4.e(str, TtmlNode.END)) {
            return a82Var3;
        }
        a82 a82Var4 = MIDDLE;
        if (defpackage.aa4.e(str, "middle")) {
            return a82Var4;
        }
        return null;
    }
}
