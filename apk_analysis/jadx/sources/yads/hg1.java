package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum hg1 {
    START(TtmlNode.START),
    CENTER(TtmlNode.CENTER),
    END(TtmlNode.END);

    public static final gg1 c = new gg1();
    public static final nl3 d = new defpackage.si1(7);
    public final String b;

    hg1(String str) {
        this.b = str;
    }

    public static final hg1 a(String str) {
        c.getClass();
        hg1 hg1Var = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return hg1Var;
        }
        hg1 hg1Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return hg1Var2;
        }
        hg1 hg1Var3 = END;
        if (defpackage.aa4.e(str, TtmlNode.END)) {
            return hg1Var3;
        }
        return null;
    }
}
