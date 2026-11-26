package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k20 {
    public static int a(String str) {
        String str2;
        if (str.length() <= 0) {
            defpackage.fg.c("Expected color string, actual string is empty");
            return 0;
        }
        if (str.charAt(0) != '#') {
            defpackage.c9.f("Unknown color ".concat(str));
            return 0;
        }
        int length = str.length();
        if (length == 4) {
            char cCharAt = str.charAt(1);
            char cCharAt2 = str.charAt(2);
            char cCharAt3 = str.charAt(3);
            str2 = new String(new char[]{'f', 'f', cCharAt, cCharAt, cCharAt2, cCharAt2, cCharAt3, cCharAt3});
        } else if (length == 5) {
            char cCharAt4 = str.charAt(1);
            char cCharAt5 = str.charAt(2);
            char cCharAt6 = str.charAt(3);
            char cCharAt7 = str.charAt(4);
            str2 = new String(new char[]{cCharAt4, cCharAt4, cCharAt5, cCharAt5, cCharAt6, cCharAt6, cCharAt7, cCharAt7});
        } else if (length == 7) {
            str2 = "ff".concat(str.substring(1));
        } else {
            if (length != 9) {
                defpackage.fg.c("Unknown color ".concat(str));
                return 0;
            }
            str2 = str.substring(1);
        }
        defpackage.ga1.b(16);
        return l20.b((int) Long.parseLong(str2, 16));
    }
}
