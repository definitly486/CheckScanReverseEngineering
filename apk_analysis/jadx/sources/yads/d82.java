package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum d82 {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline");

    public static final c82 c = new c82();
    public static final nl3 d = new defpackage.ye(3);
    public final String b;

    d82(String str) {
        this.b = str;
    }

    public static final d82 a(String str) {
        c.getClass();
        d82 d82Var = TOP;
        if (defpackage.aa4.e(str, "top")) {
            return d82Var;
        }
        d82 d82Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return d82Var2;
        }
        d82 d82Var3 = BOTTOM;
        if (defpackage.aa4.e(str, "bottom")) {
            return d82Var3;
        }
        d82 d82Var4 = BASELINE;
        if (defpackage.aa4.e(str, "baseline")) {
            return d82Var4;
        }
        return null;
    }
}
