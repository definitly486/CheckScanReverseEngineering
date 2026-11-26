package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.gn6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum f11 {
    LEFT(TtmlNode.LEFT),
    CENTER(TtmlNode.CENTER),
    RIGHT(TtmlNode.RIGHT),
    START(TtmlNode.START),
    END(TtmlNode.END);

    public static final e11 c = new e11();
    public static final nl3 d = new gn6(6);
    public final String b;

    f11(String str) {
        this.b = str;
    }

    public static final f11 a(String str) {
        c.getClass();
        f11 f11Var = LEFT;
        if (defpackage.aa4.e(str, TtmlNode.LEFT)) {
            return f11Var;
        }
        f11 f11Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return f11Var2;
        }
        f11 f11Var3 = RIGHT;
        if (defpackage.aa4.e(str, TtmlNode.RIGHT)) {
            return f11Var3;
        }
        f11 f11Var4 = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return f11Var4;
        }
        f11 f11Var5 = END;
        if (defpackage.aa4.e(str, TtmlNode.END)) {
            return f11Var5;
        }
        return null;
    }
}
