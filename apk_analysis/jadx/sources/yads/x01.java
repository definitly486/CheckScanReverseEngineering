package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum x01 {
    START(TtmlNode.START),
    PAUSE("pause");

    public static final w01 c = new w01();
    public static final nl3 d = new defpackage.yr2(1);
    public final String b;

    x01(String str) {
        this.b = str;
    }

    public static final x01 a(String str) {
        c.getClass();
        x01 x01Var = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return x01Var;
        }
        x01 x01Var2 = PAUSE;
        if (defpackage.aa4.e(str, "pause")) {
            return x01Var2;
        }
        return null;
    }
}
