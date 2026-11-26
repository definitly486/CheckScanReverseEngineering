package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class i3 {
    public final g17 a = new g17("([_A-Za-z0-9-+]+)(\\.[_A-Za-z0-9-+]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})");
    public final g17 b = new g17("^\\+\\d{11}$");
    public final g17 c;
    public final String d;
    public final g17 e;
    public final g17 f;
    public final g17 g;

    public i3() {
        Pattern.compile("^\\d{10}$").getClass();
        Pattern.compile("^\\d{6}$").getClass();
        this.c = new g17("(\\d)(\\d{3})(\\d{3})(\\d{2})(\\d{2})");
        this.d = "$1 $2 $3 $4 $5";
        this.e = new g17("^[А-ЯЁ][а-яё]+(\\s[А-ЯЁа-яё]+|-[А-ЯЁа-яё]+)*$");
        Pattern.compile("[а-яёА-ЯЁ]+").getClass();
        Pattern.compile("[а-яёА-ЯЁ]+(-[а-яёА-ЯЁ]+)?[ ]+[а-яёА-ЯЁ]+(-[а-яёА-ЯЁ]+)?[ ]+[а-яёА-ЯЁ]+(-[а-яёА-ЯЁ]+)?$").getClass();
        Pattern.compile("[a-zA-Z]+(-[a-zA-Z]+)?[ ]+[a-zA-Z]+(-[a-zA-Z]+)?[ ]+[a-zA-Z]+(-[a-zA-Z]+)?$").getClass();
        Pattern.compile("(^[A-Z]{1}[a-z]{1,14} [A-Z]{1}[a-z]{1,14} [A-Z]{1}[a-z]{1,14}( )?$)|(^[А-Я]{1}[а-я]{1,14} [А-Я]{1}[а-я]{1,14} [А-Я]{1}[а-я]{1,14}$)|(^[a-zа-я]{1}[a-z]{1,14} [a-zа-я]{1}[a-z]{1,14} [a-zа-я]{1}[a-z]{1,14}( )?$)|(^[а-я]{2,15} [а-я]{2,15} [а-я]{2,15}$)").getClass();
        this.f = new g17("\\D+");
        this.g = new g17("^79+\\d{9}$");
        Pattern.compile("[A-Z0-9]{8,24}$").getClass();
    }

    public static String a(String str) {
        str.getClass();
        Pattern patternCompile = Pattern.compile("[-.()\\s]");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        return (strReplaceAll.length() == 11 && ra8.C(strReplaceAll, "8", false)) ? ra8.A(strReplaceAll, "8", "+7") : strReplaceAll;
    }

    public static boolean b(String str) {
        Pattern patternCompile = Pattern.compile("[-.()\\s]");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        strReplaceAll.getClass();
        int i = 0;
        int i2 = 0;
        while (i < strReplaceAll.length()) {
            char cCharAt = strReplaceAll.charAt(i);
            int i3 = i2 + 1;
            if ((i2 == 1 && cCharAt != '7') || (i2 == 2 && cCharAt != '9')) {
                return false;
            }
            i++;
            i2 = i3;
        }
        return true;
    }

    public final boolean c(String str) {
        str.getClass();
        return this.a.e(ta8.f0(str).toString());
    }

    public final boolean d(String str) {
        str.getClass();
        return this.b.e(a(str));
    }
}
