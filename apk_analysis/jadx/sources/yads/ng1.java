package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import defpackage.sc7;

/* JADX INFO: loaded from: classes6.dex */
public enum ng1 {
    NONE("none"),
    AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

    public static final mg1 c = new mg1();
    public static final nl3 d = new sc7(3);
    public final String b;

    ng1(String str) {
        this.b = str;
    }

    public static final ng1 a(String str) {
        c.getClass();
        ng1 ng1Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return ng1Var;
        }
        ng1 ng1Var2 = AUTO;
        if (defpackage.aa4.e(str, TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return ng1Var2;
        }
        return null;
    }
}
