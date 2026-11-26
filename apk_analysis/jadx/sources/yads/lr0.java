package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public enum lr0 {
    NONE("none"),
    BUTTON("button"),
    IMAGE("image"),
    TEXT("text"),
    EDIT_TEXT("edit_text"),
    HEADER("header"),
    TAB_BAR("tab_bar"),
    LIST("list"),
    SELECT("select"),
    CHECKBOX("checkbox"),
    RADIO("radio"),
    AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

    public static final kr0 c = new kr0();
    public static final nl3 d = new defpackage.is0(6);
    public final String b;

    lr0(String str) {
        this.b = str;
    }

    public static final lr0 a(String str) {
        c.getClass();
        lr0 lr0Var = NONE;
        if (defpackage.aa4.e(str, "none")) {
            return lr0Var;
        }
        lr0 lr0Var2 = BUTTON;
        if (defpackage.aa4.e(str, "button")) {
            return lr0Var2;
        }
        lr0 lr0Var3 = IMAGE;
        if (defpackage.aa4.e(str, "image")) {
            return lr0Var3;
        }
        lr0 lr0Var4 = TEXT;
        if (defpackage.aa4.e(str, "text")) {
            return lr0Var4;
        }
        lr0 lr0Var5 = EDIT_TEXT;
        if (defpackage.aa4.e(str, "edit_text")) {
            return lr0Var5;
        }
        lr0 lr0Var6 = HEADER;
        if (defpackage.aa4.e(str, "header")) {
            return lr0Var6;
        }
        lr0 lr0Var7 = TAB_BAR;
        if (defpackage.aa4.e(str, "tab_bar")) {
            return lr0Var7;
        }
        lr0 lr0Var8 = LIST;
        if (defpackage.aa4.e(str, "list")) {
            return lr0Var8;
        }
        lr0 lr0Var9 = SELECT;
        if (defpackage.aa4.e(str, "select")) {
            return lr0Var9;
        }
        lr0 lr0Var10 = CHECKBOX;
        if (defpackage.aa4.e(str, "checkbox")) {
            return lr0Var10;
        }
        lr0 lr0Var11 = RADIO;
        if (defpackage.aa4.e(str, "radio")) {
            return lr0Var11;
        }
        lr0 lr0Var12 = AUTO;
        if (defpackage.aa4.e(str, TtmlNode.TEXT_EMPHASIS_AUTO)) {
            return lr0Var12;
        }
        return null;
    }
}
