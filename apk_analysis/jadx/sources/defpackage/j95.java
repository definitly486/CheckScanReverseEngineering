package defpackage;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class j95 {
    public static final Pattern e = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Pattern f = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    public final String a;
    public final String b;
    public final String c;
    public final String[] d;

    public static final class a {
        public static j95 a(String str) {
            str.getClass();
            Matcher matcher = j95.e.matcher(str);
            if (!matcher.lookingAt()) {
                c9.f(lt0.d('\"', "No subtype found for: \"", str));
                return null;
            }
            String strGroup = matcher.group(1);
            strGroup.getClass();
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = strGroup.toLowerCase(locale);
            lowerCase.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            String lowerCase2 = strGroup2.toLowerCase(locale);
            lowerCase2.getClass();
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = j95.f.matcher(str);
            int iEnd = matcher.end();
            while (iEnd < str.length()) {
                matcher2.region(iEnd, str.length());
                if (!matcher2.lookingAt()) {
                    dg.d(34, "Parameter is not formatted correctly: \"", str.substring(iEnd), "\" for: \"", str);
                    return null;
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (ra8.C(strGroup4, "'", false) && ra8.u(strGroup4, "'", false) && strGroup4.length() > 2) {
                        strGroup4 = rg.f(1, 1, strGroup4);
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            return new j95(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
        }
    }

    public j95(String str, String str2, String str3, String[] strArr) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = strArr;
    }

    public final Charset a(Charset charset) {
        String str;
        String[] strArr = this.d;
        int i = 0;
        int iA = nh5.a(0, strArr.length - 1, 2);
        if (iA < 0) {
            str = null;
            break;
        }
        while (true) {
            if (!ra8.v(strArr[i], "charset", true)) {
                if (i == iA) {
                    str = null;
                    break;
                }
                i += 2;
            } else {
                str = strArr[i + 1];
                break;
            }
        }
        if (str == null) {
            return charset;
        }
        try {
            return Charset.forName(str);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j95) && aa4.e(((j95) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
