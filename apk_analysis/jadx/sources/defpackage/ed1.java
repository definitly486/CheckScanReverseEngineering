package defpackage;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;

/* JADX INFO: loaded from: classes2.dex */
public final class ed1 {
    public final FontFamily a;
    public final TextStyle b;
    public final TextStyle c;
    public final TextStyle d;
    public final TextStyle e;
    public final TextStyle f;
    public final TextStyle g;

    public ed1(FontFamily fontFamily, TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6) {
        fontFamily.getClass();
        this.a = fontFamily;
        this.b = textStyle;
        this.c = textStyle2;
        this.d = textStyle3;
        this.e = textStyle4;
        this.f = textStyle5;
        this.g = textStyle6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ed1)) {
            return false;
        }
        ed1 ed1Var = (ed1) obj;
        return aa4.e(this.a, ed1Var.a) && this.b.equals(ed1Var.b) && this.c.equals(ed1Var.c) && this.d.equals(ed1Var.d) && this.e.equals(ed1Var.e) && this.f.equals(ed1Var.f) && this.g.equals(ed1Var.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + jn.c(this.f, jn.c(this.e, jn.c(this.d, jn.c(this.c, jn.c(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "CheckscanTypography(fontFamily=" + this.a + ", medium16Height24=" + this.b + ", medium18Height24=" + this.c + ", medium22Height28=" + this.d + ", regular14Height14=" + this.e + ", regular12Height20=" + this.f + ", regular16Height24=" + this.g + ")";
    }
}
