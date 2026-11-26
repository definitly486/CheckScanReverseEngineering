package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum m91 {
    LEFT(TtmlNode.LEFT),
    CENTER(TtmlNode.CENTER),
    RIGHT(TtmlNode.RIGHT),
    START(TtmlNode.START),
    END(TtmlNode.END),
    SPACE_BETWEEN("space-between"),
    SPACE_AROUND("space-around"),
    SPACE_EVENLY("space-evenly");

    public static final l91 c = new l91();
    public static final nl3 d = new defpackage.lm(6);
    public final String b;

    m91(String str) {
        this.b = str;
    }

    public static final m91 a(String str) {
        c.getClass();
        m91 m91Var = LEFT;
        if (defpackage.aa4.e(str, TtmlNode.LEFT)) {
            return m91Var;
        }
        m91 m91Var2 = CENTER;
        if (defpackage.aa4.e(str, TtmlNode.CENTER)) {
            return m91Var2;
        }
        m91 m91Var3 = RIGHT;
        if (defpackage.aa4.e(str, TtmlNode.RIGHT)) {
            return m91Var3;
        }
        m91 m91Var4 = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return m91Var4;
        }
        m91 m91Var5 = END;
        if (defpackage.aa4.e(str, TtmlNode.END)) {
            return m91Var5;
        }
        m91 m91Var6 = SPACE_BETWEEN;
        if (defpackage.aa4.e(str, "space-between")) {
            return m91Var6;
        }
        m91 m91Var7 = SPACE_AROUND;
        if (defpackage.aa4.e(str, "space-around")) {
            return m91Var7;
        }
        m91 m91Var8 = SPACE_EVENLY;
        if (defpackage.aa4.e(str, "space-evenly")) {
            return m91Var8;
        }
        return null;
    }
}
