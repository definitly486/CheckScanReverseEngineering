package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum rr1 {
    START(TtmlNode.START),
    CENTER(TtmlNode.CENTER),
    END(TtmlNode.END);

    public static final qr1 c = new qr1();
    public static final nl3 d = new defpackage.uy2(6);
    public final String b;

    rr1(String str) {
        this.b = str;
    }

    public static final rr1 a(String str) {
        c.getClass();
        rr1 rr1Var = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return rr1Var;
        }
        rr1 rr1Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return rr1Var2;
        }
        rr1 rr1Var3 = END;
        if (defpackage.aa4.e(str, TtmlNode.END)) {
            return rr1Var3;
        }
        return null;
    }
}
