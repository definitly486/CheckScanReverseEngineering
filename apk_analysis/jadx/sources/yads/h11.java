package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum h11 {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline");

    public static final g11 c = new g11();
    public static final nl3 d = new defpackage.ct3(2);
    public final String b;

    h11(String str) {
        this.b = str;
    }

    public static final h11 a(String str) {
        c.getClass();
        h11 h11Var = TOP;
        if (defpackage.aa4.e(str, "top")) {
            return h11Var;
        }
        h11 h11Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return h11Var2;
        }
        h11 h11Var3 = BOTTOM;
        if (defpackage.aa4.e(str, "bottom")) {
            return h11Var3;
        }
        h11 h11Var4 = BASELINE;
        if (defpackage.aa4.e(str, "baseline")) {
            return h11Var4;
        }
        return null;
    }
}
