package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum yj1 {
    AUTO(TtmlNode.TEXT_EMPHASIS_AUTO),
    NONE("none"),
    WORDS("words"),
    SENTENCES("sentences"),
    ALL_CHARACTERS("all_characters");

    public static final xj1 c = new xj1();
    public static final nl3 d = new defpackage.oy2(4);
    public final String b;

    yj1(String str) {
        this.b = str;
    }

    public static final yj1 a(String str) {
        c.getClass();
        yj1 yj1Var = AUTO;
        if (defpackage.aa4.e(str, TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return yj1Var;
        }
        yj1 yj1Var2 = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return yj1Var2;
        }
        yj1 yj1Var3 = WORDS;
        if (defpackage.aa4.e(str, "words")) {
            return yj1Var3;
        }
        yj1 yj1Var4 = SENTENCES;
        if (defpackage.aa4.e(str, "sentences")) {
            return yj1Var4;
        }
        yj1 yj1Var5 = ALL_CHARACTERS;
        if (defpackage.aa4.e(str, "all_characters")) {
            return yj1Var5;
        }
        return null;
    }
}
