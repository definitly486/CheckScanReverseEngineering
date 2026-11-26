package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum o91 {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline"),
    SPACE_BETWEEN("space-between"),
    SPACE_AROUND("space-around"),
    SPACE_EVENLY("space-evenly");

    public static final n91 c = new n91();
    public static final nl3 d = new defpackage.oy2(3);
    public final String b;

    o91(String str) {
        this.b = str;
    }

    public static final o91 a(String str) {
        c.getClass();
        o91 o91Var = TOP;
        if (defpackage.aa4.e(str, "top")) {
            return o91Var;
        }
        o91 o91Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return o91Var2;
        }
        o91 o91Var3 = BOTTOM;
        if (defpackage.aa4.e(str, "bottom")) {
            return o91Var3;
        }
        o91 o91Var4 = BASELINE;
        if (defpackage.aa4.e(str, "baseline")) {
            return o91Var4;
        }
        o91 o91Var5 = SPACE_BETWEEN;
        if (defpackage.aa4.e(str, "space-between")) {
            return o91Var5;
        }
        o91 o91Var6 = SPACE_AROUND;
        if (defpackage.aa4.e(str, "space-around")) {
            return o91Var6;
        }
        o91 o91Var7 = SPACE_EVENLY;
        if (defpackage.aa4.e(str, "space-evenly")) {
            return o91Var7;
        }
        return null;
    }
}
