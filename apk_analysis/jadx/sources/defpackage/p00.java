package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class p00 extends p54 {
    public static final Pattern e = Pattern.compile("`+");
    public static final Pattern f = Pattern.compile("^`+");

    @Override // defpackage.p54
    public final zn5 b() {
        String strA;
        String strA2 = a(f);
        if (strA2 == null) {
            return null;
        }
        int i = this.d;
        do {
            strA = a(e);
            if (strA == null) {
                this.d = i;
                return f(strA2);
            }
        } while (!strA.equals(strA2));
        um1 um1Var = new um1();
        String strReplace = this.c.substring(i, this.d - strA2.length()).replace('\n', ' ');
        if (strReplace.length() >= 3 && strReplace.charAt(0) == ' ' && strReplace.charAt(strReplace.length() - 1) == ' ') {
            int length = strReplace.length();
            if (tz.b(' ', 0, length, strReplace) != length) {
                strReplace = rg.f(1, 1, strReplace);
            }
        }
        um1Var.f = strReplace;
        return um1Var;
    }

    @Override // defpackage.p54
    public final char d() {
        return '`';
    }
}
