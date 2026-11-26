package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ec9;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum px0 {
    START(TtmlNode.START),
    STOP("stop"),
    PAUSE("pause"),
    RESUME("resume"),
    CANCEL("cancel"),
    RESET("reset");

    public static final ox0 c = new ox0();
    public static final nl3 d = new ec9(4);
    public final String b;

    px0(String str) {
        this.b = str;
    }

    public static final px0 a(String str) {
        c.getClass();
        px0 px0Var = START;
        if (defpackage.aa4.e(str, TtmlNode.START)) {
            return px0Var;
        }
        px0 px0Var2 = STOP;
        if (defpackage.aa4.e(str, "stop")) {
            return px0Var2;
        }
        px0 px0Var3 = PAUSE;
        if (defpackage.aa4.e(str, "pause")) {
            return px0Var3;
        }
        px0 px0Var4 = RESUME;
        if (defpackage.aa4.e(str, "resume")) {
            return px0Var4;
        }
        px0 px0Var5 = CANCEL;
        if (defpackage.aa4.e(str, "cancel")) {
            return px0Var5;
        }
        px0 px0Var6 = RESET;
        if (defpackage.aa4.e(str, "reset")) {
            return px0Var6;
        }
        return null;
    }
}
