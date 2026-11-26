package defpackage;

import java.net.URL;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class ja8 {
    public static final String[] a = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};
    public static final Pattern b = Pattern.compile("^/(?>(?>\\.\\.?/)+)");
    public static final Pattern c = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");
    public static final Pattern d = Pattern.compile("[\\x00-\\x1f]*");
    public static final q48<StringBuilder> e = new q48<>(new fa8());

    public static class a {
        public final String b;
        public StringBuilder a = ja8.a();
        public boolean c = true;

        public a(String str) {
            this.b = str;
        }
    }

    public static StringBuilder a() {
        return e.a();
    }

    public static boolean b(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean d(char c2) {
        if (c2 < 'a' || c2 > 'z') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    public static boolean e(String str) {
        if (str != null && !str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!h(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean f(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean g(char c2) {
        if (f(c2)) {
            return true;
        }
        if (c2 < 'a' || c2 > 'f') {
            return c2 >= 'A' && c2 <= 'F';
        }
        return true;
    }

    public static boolean h(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String i(String str, List list) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return "";
        }
        String string = it.next().toString();
        if (!it.hasNext()) {
            return string;
        }
        StringBuilder sbA = a();
        yb9.e(sbA);
        sbA.append((Object) string);
        while (it.hasNext()) {
            Object next = it.next();
            sbA.append(str);
            sbA.append(next);
        }
        return k(sbA);
    }

    public static String j(String str) {
        StringBuilder sbA = a();
        int length = str.length();
        int iCharCount = 0;
        boolean z = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt == 32 || iCodePointAt == 9 || iCodePointAt == 10 || iCodePointAt == 12 || iCodePointAt == 13 || iCodePointAt == 160) {
                if (!z) {
                    sbA.append(' ');
                    z = true;
                }
            } else if (iCodePointAt != 8203 && iCodePointAt != 173) {
                sbA.appendCodePoint(iCodePointAt);
                z = false;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return k(sbA);
    }

    public static String k(StringBuilder sb) {
        yb9.e(sb);
        String string = sb.toString();
        if (sb.length() <= 8192) {
            sb.delete(0, sb.length());
            e.b(sb);
        }
        return string;
    }

    public static URL l(URL url, String str) {
        String strReplaceAll = d.matcher(str).replaceAll("");
        if (strReplaceAll.startsWith("?")) {
            strReplaceAll = url.getPath() + strReplaceAll;
        }
        URL url2 = new URL(url, strReplaceAll);
        String strReplaceFirst = b.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            StringBuilder sbC = ti0.c(strReplaceFirst, "#");
            sbC.append(url2.getRef());
            strReplaceFirst = sbC.toString();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), strReplaceFirst);
    }
}
