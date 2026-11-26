package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* JADX INFO: loaded from: classes5.dex */
public final class j02 {
    public static final Pattern j = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern l = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public static final class a {
        public static int a(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static j02 b(fz3 fz3Var, String str) {
            long j;
            String str2;
            fz3Var.getClass();
            str.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            byte[] bArr = gb9.a;
            char c = ';';
            int iG = gb9.g(str, ';', 0, str.length());
            int iG2 = gb9.g(str, '=', 0, iG);
            String str3 = null;
            if (iG2 != iG) {
                String strY = gb9.y(0, iG2, str);
                if (strY.length() != 0 && gb9.l(strY) == -1) {
                    String strY2 = gb9.y(iG2 + 1, iG, str);
                    if (gb9.l(strY2) == -1) {
                        int i = iG + 1;
                        int length = str.length();
                        boolean z = false;
                        boolean z2 = false;
                        boolean z3 = false;
                        boolean z4 = true;
                        long jC = 253402300799999L;
                        long j2 = -1;
                        String strSubstring = null;
                        while (true) {
                            if (i >= length) {
                                if (j2 == Long.MIN_VALUE) {
                                    j = Long.MIN_VALUE;
                                } else if (j2 != -1) {
                                    long j3 = jCurrentTimeMillis + (j2 <= 9223372036854775L ? j2 * 1000 : Long.MAX_VALUE);
                                    j = (j3 < jCurrentTimeMillis || j3 > 253402300799999L) ? 253402300799999L : j3;
                                } else {
                                    j = jC;
                                }
                                String str4 = fz3Var.d;
                                if (str3 != null) {
                                    if (aa4.e(str4, str3) || (ra8.u(str4, str3, false) && str4.charAt((str4.length() - str3.length()) - 1) == '.' && !gb9.f.e(str4))) {
                                        str2 = str3;
                                    }
                                    return null;
                                }
                                str2 = str4;
                                if (str4.length() == str2.length() || PublicSuffixDatabase.g.a(str2) != null) {
                                    if (strSubstring == null || !ra8.C(strSubstring, "/", false)) {
                                        String strB = fz3Var.b();
                                        int iO = ta8.O(strB, '/', 0, 6);
                                        strSubstring = iO != 0 ? strB.substring(0, iO) : "/";
                                    }
                                    return new j02(strY, strY2, j, str2, strSubstring, z3, z, z2, z4);
                                }
                                return null;
                            }
                            int iG3 = gb9.g(str, c, i, length);
                            int iG4 = gb9.g(str, '=', i, iG3);
                            String strY3 = gb9.y(i, iG4, str);
                            String strY4 = iG4 < iG3 ? gb9.y(iG4 + 1, iG3, str) : "";
                            if (strY3.equalsIgnoreCase("expires")) {
                                try {
                                    jC = c(strY4.length(), strY4);
                                    z2 = true;
                                } catch (NumberFormatException | IllegalArgumentException unused) {
                                }
                            } else if (strY3.equalsIgnoreCase("max-age")) {
                                try {
                                    j2 = Long.parseLong(strY4);
                                    if (j2 <= 0) {
                                        j2 = Long.MIN_VALUE;
                                    }
                                } catch (NumberFormatException e) {
                                    Pattern patternCompile = Pattern.compile("-?\\d+");
                                    patternCompile.getClass();
                                    if (!patternCompile.matcher(strY4).matches()) {
                                        throw e;
                                    }
                                    j2 = ra8.C(strY4, "-", false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                                }
                                z2 = true;
                            } else if (strY3.equalsIgnoreCase(DynamicLink.Builder.KEY_DOMAIN)) {
                                if (ra8.u(strY4, ".", false)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                String strF = xz2.f(ta8.T(strY4, "."));
                                if (strF == null) {
                                    throw new IllegalArgumentException();
                                }
                                str3 = strF;
                                z4 = false;
                            } else if (strY3.equalsIgnoreCase("path")) {
                                strSubstring = strY4;
                            } else if (strY3.equalsIgnoreCase("secure")) {
                                z3 = true;
                            } else if (strY3.equalsIgnoreCase("httponly")) {
                                z = true;
                            }
                            i = iG3 + 1;
                            c = ';';
                        }
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x009a  */
        public static long c(int i, String str) {
            int iA = a(str, 0, i, false);
            Matcher matcher = j02.m.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int iK = -1;
            int i5 = -1;
            int i6 = -1;
            while (iA < i) {
                int iA2 = a(str, iA + 1, i, true);
                matcher.region(iA, iA2);
                if (i3 == -1 && matcher.usePattern(j02.m).matches()) {
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    i3 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    strGroup2.getClass();
                    i5 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    strGroup3.getClass();
                    i6 = Integer.parseInt(strGroup3);
                } else if (i4 == -1 && matcher.usePattern(j02.l).matches()) {
                    String strGroup4 = matcher.group(1);
                    strGroup4.getClass();
                    i4 = Integer.parseInt(strGroup4);
                } else if (iK == -1) {
                    Pattern pattern = j02.k;
                    if (matcher.usePattern(pattern).matches()) {
                        String strGroup5 = matcher.group(1);
                        strGroup5.getClass();
                        Locale locale = Locale.US;
                        locale.getClass();
                        String lowerCase = strGroup5.toLowerCase(locale);
                        lowerCase.getClass();
                        String strPattern = pattern.pattern();
                        strPattern.getClass();
                        iK = ta8.K(strPattern, lowerCase, 0, false, 6) / 4;
                    } else if (i2 != -1 && matcher.usePattern(j02.j).matches()) {
                        String strGroup6 = matcher.group(1);
                        strGroup6.getClass();
                        i2 = Integer.parseInt(strGroup6);
                    }
                } else if (i2 != -1) {
                }
                iA = a(str, iA2 + 1, i, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                fg.c("Failed requirement.");
                return 0L;
            }
            if (iK == -1) {
                fg.c("Failed requirement.");
                return 0L;
            }
            if (1 > i4 || i4 >= 32) {
                fg.c("Failed requirement.");
                return 0L;
            }
            if (i3 < 0 || i3 >= 24) {
                fg.c("Failed requirement.");
                return 0L;
            }
            if (i5 < 0 || i5 >= 60) {
                fg.c("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                fg.c("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(gb9.e);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i2);
            gregorianCalendar.set(2, iK - 1);
            gregorianCalendar.set(5, i4);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i5);
            gregorianCalendar.set(13, i6);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    public j02(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j02)) {
            return false;
        }
        j02 j02Var = (j02) obj;
        return j02Var.a.equals(this.a) && j02Var.b.equals(this.b) && j02Var.c == this.c && j02Var.d.equals(this.d) && j02Var.e.equals(this.e) && j02Var.f == this.f && j02Var.g == this.g && j02Var.h == this.h && j02Var.i == this.i;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.i) + tg.c(tg.c(tg.c(zg.b(zg.b(vg.b(zg.b(zg.b(527, 31, this.a), 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            long j2 = this.c;
            if (j2 == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String str = pc2.a.get().format(new Date(j2));
                str.getClass();
                sb.append(str);
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
