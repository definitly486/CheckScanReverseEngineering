package yads;

import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class yt3 {
    public static final String[] a = {"'", "@{"};

    public static String a(String str) {
        String[] strArr = a;
        if (!ta8.E(str, '\\')) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int length = 0;
        while (length < str.length()) {
            if (str.charAt(length) != '\\') {
                sb.append(str.charAt(length));
                length++;
            } else {
                int i = length;
                while (i < str.length() && str.charAt(i) == '\\') {
                    i++;
                }
                int i2 = i - length;
                length += i2;
                int i3 = i2 / 2;
                for (int i4 = 0; i4 < i3; i4++) {
                    sb.append('\\');
                }
                if (i2 % 2 == 1) {
                    String strA = a(str, length, strArr);
                    sb.append(strA);
                    length += strA.length();
                }
            }
        }
        return sb.toString();
    }

    public static String a(String str, int i, String[] strArr) {
        if (i != str.length() && str.charAt(i) != ' ') {
            for (String str2 : strArr) {
                int length = str2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = i + i2;
                    if (i3 >= str.length() || str.charAt(i3) != str2.charAt(i2)) {
                    }
                }
                return str2;
            }
            defpackage.qg.h("Incorrect string escape");
            return null;
        }
        throw new vo2(new vz5(defpackage.jh.b(i - 1, "Alone backslash at ")), defpackage.me0.c("Error tokenizing '", str, "'."));
    }
}
