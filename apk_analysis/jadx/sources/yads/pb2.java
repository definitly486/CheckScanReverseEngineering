package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum pb2 {
    LEFT(TtmlNode.LEFT),
    TOP_LEFT("top-left"),
    TOP("top"),
    TOP_RIGHT("top-right"),
    RIGHT(TtmlNode.RIGHT),
    BOTTOM_RIGHT("bottom-right"),
    BOTTOM("bottom"),
    BOTTOM_LEFT("bottom-left"),
    CENTER(TtmlNode.CENTER);

    public static final ob2 c = new ob2();
    public static final nl3 d = new defpackage.ft3(4);
    public final String b;

    pb2(String str) {
        this.b = str;
    }

    public static final pb2 a(String str) {
        c.getClass();
        pb2 pb2Var = LEFT;
        if (defpackage.aa4.e(str, TtmlNode.LEFT)) {
            return pb2Var;
        }
        pb2 pb2Var2 = TOP_LEFT;
        if (defpackage.aa4.e(str, "top-left")) {
            return pb2Var2;
        }
        pb2 pb2Var3 = TOP;
        if (defpackage.aa4.e(str, "top")) {
            return pb2Var3;
        }
        pb2 pb2Var4 = TOP_RIGHT;
        if (defpackage.aa4.e(str, "top-right")) {
            return pb2Var4;
        }
        pb2 pb2Var5 = RIGHT;
        if (defpackage.aa4.e(str, TtmlNode.RIGHT)) {
            return pb2Var5;
        }
        pb2 pb2Var6 = BOTTOM_RIGHT;
        if (defpackage.aa4.e(str, "bottom-right")) {
            return pb2Var6;
        }
        pb2 pb2Var7 = BOTTOM;
        if (defpackage.aa4.e(str, "bottom")) {
            return pb2Var7;
        }
        pb2 pb2Var8 = BOTTOM_LEFT;
        if (defpackage.aa4.e(str, "bottom-left")) {
            return pb2Var8;
        }
        pb2 pb2Var9 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return pb2Var9;
        }
        return null;
    }
}
