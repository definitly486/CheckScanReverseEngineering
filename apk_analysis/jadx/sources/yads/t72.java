package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;
import defpackage.vu2;

/* JADX INFO: loaded from: classes6.dex */
public enum t72 {
    NONE("none"),
    BUTTON("button"),
    IMAGE("image"),
    TEXT("text"),
    AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

    public static final s72 c = new s72();
    public static final nl3 d = new vu2(10);
    public final String b;

    t72(String str) {
        this.b = str;
    }

    public static final t72 a(String str) {
        c.getClass();
        t72 t72Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return t72Var;
        }
        t72 t72Var2 = BUTTON;
        if (defpackage.aa4.e(str, "button")) {
            return t72Var2;
        }
        t72 t72Var3 = IMAGE;
        if (defpackage.aa4.e(str, "image")) {
            return t72Var3;
        }
        t72 t72Var4 = TEXT;
        if (defpackage.aa4.e(str, "text")) {
            return t72Var4;
        }
        t72 t72Var5 = AUTO;
        if (defpackage.aa4.e(str, TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return t72Var5;
        }
        return null;
    }
}
