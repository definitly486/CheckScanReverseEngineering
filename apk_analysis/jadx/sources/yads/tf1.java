package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TapjoyConstants;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum tf1 {
    LIGHT(TapjoyConstants.TJC_THEME_LIGHT),
    MEDIUM("medium"),
    REGULAR("regular"),
    BOLD(TtmlNode.BOLD);

    public static final sf1 c = new sf1();
    public static final nl3 d = new defpackage.qy2(9);
    public final String b;

    tf1(String str) {
        this.b = str;
    }

    public static final tf1 a(String str) {
        c.getClass();
        tf1 tf1Var = LIGHT;
        if (defpackage.aa4.e(str, TapjoyConstants.TJC_THEME_LIGHT)) {
            return tf1Var;
        }
        tf1 tf1Var2 = MEDIUM;
        if (defpackage.aa4.e(str, "medium")) {
            return tf1Var2;
        }
        tf1 tf1Var3 = REGULAR;
        if (defpackage.aa4.e(str, "regular")) {
            return tf1Var3;
        }
        tf1 tf1Var4 = BOLD;
        if (defpackage.aa4.e(str, TtmlNode.BOLD)) {
            return tf1Var4;
        }
        return null;
    }
}
