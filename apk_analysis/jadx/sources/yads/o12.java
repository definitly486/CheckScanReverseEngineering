package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import defpackage.wu2;

/* JADX INFO: loaded from: classes6.dex */
public enum o12 {
    LEFT(TtmlNode.LEFT),
    TOP("top"),
    RIGHT(TtmlNode.RIGHT),
    BOTTOM("bottom");

    public static final n12 c = new n12();
    public static final nl3 d = new wu2(11);
    public final String b;

    o12(String str) {
        this.b = str;
    }

    public static final o12 a(String str) {
        c.getClass();
        o12 o12Var = LEFT;
        if (defpackage.aa4.e(str, TtmlNode.LEFT)) {
            return o12Var;
        }
        o12 o12Var2 = TOP;
        if (defpackage.aa4.e(str, "top")) {
            return o12Var2;
        }
        o12 o12Var3 = RIGHT;
        if (defpackage.aa4.e(str, TtmlNode.RIGHT)) {
            return o12Var3;
        }
        o12 o12Var4 = BOTTOM;
        if (defpackage.aa4.e(str, "bottom")) {
            return o12Var4;
        }
        return null;
    }
}
