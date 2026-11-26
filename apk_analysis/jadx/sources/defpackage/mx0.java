package defpackage;

import io.appmetrica.analytics.BuildConfig;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class mx0 {
    public static final /* synthetic */ int n = 0;
    public final boolean a;
    public final boolean b;
    public final int c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final int h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public String m;

    public static final class a {
    }

    public static final class b {
        /* JADX WARN: Code duplicated, block: B:108:0x0062 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:109:0x0068 A[EDGE_INSN: B:109:0x0068->B:22:0x0068 BREAK  A[LOOP:2: B:16:0x004a->B:20:0x005b], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:15:0x0043  */
        /* JADX WARN: Code duplicated, block: B:17:0x004c  */
        /* JADX WARN: Code duplicated, block: B:20:0x005b A[LOOP:2: B:16:0x004a->B:20:0x005b, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:51:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:54:0x0103  */
        /* JADX WARN: Code duplicated, block: B:56:0x010d  */
        /* JADX WARN: Code duplicated, block: B:58:0x0115  */
        /* JADX WARN: Code duplicated, block: B:59:0x011c  */
        /* JADX WARN: Code duplicated, block: B:61:0x0124  */
        /* JADX WARN: Code duplicated, block: B:63:0x012f  */
        /* JADX WARN: Code duplicated, block: B:65:0x0138  */
        /* JADX WARN: Code duplicated, block: B:66:0x013d  */
        /* JADX WARN: Code duplicated, block: B:68:0x0145  */
        /* JADX WARN: Code duplicated, block: B:69:0x014c  */
        /* JADX WARN: Code duplicated, block: B:71:0x0154  */
        /* JADX WARN: Code duplicated, block: B:72:0x015b  */
        /* JADX WARN: Code duplicated, block: B:74:0x0163  */
        /* JADX WARN: Code duplicated, block: B:75:0x016a  */
        /* JADX WARN: Code duplicated, block: B:77:0x0172  */
        /* JADX WARN: Code duplicated, block: B:78:0x017a  */
        /* JADX WARN: Code duplicated, block: B:80:0x0182  */
        /* JADX WARN: Code duplicated, block: B:81:0x0188  */
        /* JADX WARN: Code duplicated, block: B:83:0x0191  */
        /* JADX WARN: Code duplicated, block: B:84:0x019a  */
        /* JADX WARN: Code duplicated, block: B:86:0x01a2  */
        /* JADX WARN: Code duplicated, block: B:87:0x01ab  */
        /* JADX WARN: Code duplicated, block: B:89:0x01b3  */
        public static mx0 a(jv3 jv3Var) {
            int i;
            int length;
            boolean z;
            int length2;
            int i2;
            String string;
            String string2;
            jv3 jv3Var2 = jv3Var;
            int size = jv3Var2.size();
            boolean z2 = true;
            boolean z3 = true;
            int i3 = 0;
            String str = null;
            boolean z4 = false;
            boolean z5 = false;
            int iX = -1;
            int iX2 = -1;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            int iX3 = -1;
            int iX4 = -1;
            boolean z9 = false;
            boolean z10 = false;
            boolean z11 = false;
            while (i3 < size) {
                String strB = jv3Var2.b(i3);
                String strG = jv3Var2.g(i3);
                if (ra8.v(strB, "Cache-Control", z2)) {
                    if (str == null) {
                        str = strG;
                    }
                    i = 0;
                    while (i < strG.length()) {
                        length = strG.length();
                        z = z2;
                        length2 = i;
                        while (true) {
                            if (length2 < length) {
                                i2 = size;
                                length2 = strG.length();
                                break;
                            }
                            i2 = size;
                            if (ta8.E("=,;", strG.charAt(length2))) {
                                break;
                            }
                            length2++;
                            size = i2;
                        }
                        string = ta8.f0(strG.substring(i, length2)).toString();
                        if (length2 != strG.length() || strG.charAt(length2) == ',' || strG.charAt(length2) == ';') {
                            i = length2 + 1;
                            string2 = null;
                        } else {
                            int length3 = length2 + 1;
                            byte[] bArr = gb9.a;
                            int length4 = strG.length();
                            while (true) {
                                if (length3 < length4) {
                                    char cCharAt = strG.charAt(length3);
                                    if (cCharAt != ' ' && cCharAt != '\t') {
                                        break;
                                    }
                                    length3++;
                                } else {
                                    length3 = strG.length();
                                    break;
                                }
                            }
                            if (length3 >= strG.length() || strG.charAt(length3) != '\"') {
                                int length5 = strG.length();
                                int length6 = length3;
                                while (true) {
                                    if (length6 >= length5) {
                                        length6 = strG.length();
                                        break;
                                    }
                                    int i4 = length5;
                                    if (ta8.E(",;", strG.charAt(length6))) {
                                        break;
                                    }
                                    length6++;
                                    length5 = i4;
                                }
                                int i5 = length6;
                                string2 = ta8.f0(strG.substring(length3, length6)).toString();
                                i = i5;
                            } else {
                                int i6 = length3 + 1;
                                int iJ = ta8.J('\"', i6, 4, strG);
                                string2 = strG.substring(i6, iJ);
                                i = iJ + 1;
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(string)) {
                            z2 = z;
                            z4 = z2;
                        } else if ("no-store".equalsIgnoreCase(string)) {
                            z2 = z;
                            z5 = z2;
                        } else {
                            if ("max-age".equalsIgnoreCase(string)) {
                                iX = gb9.x(-1, string2);
                            } else if ("s-maxage".equalsIgnoreCase(string)) {
                                iX2 = gb9.x(-1, string2);
                            } else if ("private".equalsIgnoreCase(string)) {
                                z2 = z;
                                z6 = z2;
                            } else if (BuildConfig.SDK_BUILD_FLAVOR.equalsIgnoreCase(string)) {
                                z2 = z;
                                z7 = z2;
                            } else if ("must-revalidate".equalsIgnoreCase(string)) {
                                z2 = z;
                                z8 = z2;
                            } else if ("max-stale".equalsIgnoreCase(string)) {
                                iX3 = gb9.x(Integer.MAX_VALUE, string2);
                            } else if ("min-fresh".equalsIgnoreCase(string)) {
                                iX4 = gb9.x(-1, string2);
                            } else if ("only-if-cached".equalsIgnoreCase(string)) {
                                z2 = z;
                                z9 = z2;
                            } else if ("no-transform".equalsIgnoreCase(string)) {
                                z2 = z;
                                z10 = z2;
                            } else if ("immutable".equalsIgnoreCase(string)) {
                                z2 = z;
                                z11 = z2;
                            }
                            z2 = z;
                        }
                        size = i2;
                    }
                    i3++;
                    jv3Var2 = jv3Var;
                    z2 = z2;
                    size = size;
                } else {
                    if (ra8.v(strB, "Pragma", z2)) {
                    }
                    i3++;
                    jv3Var2 = jv3Var;
                    z2 = z2;
                    size = size;
                }
                z3 = false;
                i = 0;
                while (i < strG.length()) {
                    length = strG.length();
                    z = z2;
                    length2 = i;
                    while (true) {
                        if (length2 < length) {
                            i2 = size;
                            length2 = strG.length();
                            break;
                        }
                        i2 = size;
                        if (ta8.E("=,;", strG.charAt(length2))) {
                            break;
                            break;
                        }
                        length2++;
                        size = i2;
                    }
                    string = ta8.f0(strG.substring(i, length2)).toString();
                    if (length2 != strG.length()) {
                        i = length2 + 1;
                        string2 = null;
                    } else {
                        i = length2 + 1;
                        string2 = null;
                    }
                    if ("no-cache".equalsIgnoreCase(string)) {
                        z2 = z;
                        z4 = z2;
                    } else if ("no-store".equalsIgnoreCase(string)) {
                        z2 = z;
                        z5 = z2;
                    } else {
                        if ("max-age".equalsIgnoreCase(string)) {
                            iX = gb9.x(-1, string2);
                        } else if ("s-maxage".equalsIgnoreCase(string)) {
                            iX2 = gb9.x(-1, string2);
                        } else if ("private".equalsIgnoreCase(string)) {
                            z2 = z;
                            z6 = z2;
                        } else if (BuildConfig.SDK_BUILD_FLAVOR.equalsIgnoreCase(string)) {
                            z2 = z;
                            z7 = z2;
                        } else if ("must-revalidate".equalsIgnoreCase(string)) {
                            z2 = z;
                            z8 = z2;
                        } else if ("max-stale".equalsIgnoreCase(string)) {
                            iX3 = gb9.x(Integer.MAX_VALUE, string2);
                        } else if ("min-fresh".equalsIgnoreCase(string)) {
                            iX4 = gb9.x(-1, string2);
                        } else if ("only-if-cached".equalsIgnoreCase(string)) {
                            z2 = z;
                            z9 = z2;
                        } else if ("no-transform".equalsIgnoreCase(string)) {
                            z2 = z;
                            z10 = z2;
                        } else if ("immutable".equalsIgnoreCase(string)) {
                            z2 = z;
                            z11 = z2;
                        }
                        z2 = z;
                    }
                    size = i2;
                }
                i3++;
                jv3Var2 = jv3Var;
                z2 = z2;
                size = size;
            }
            return new mx0(z4, z5, iX, iX2, z6, z7, z8, iX3, iX4, z9, z10, z11, !z3 ? null : str);
        }
    }

    static {
        new a();
        new a();
        TimeUnit.SECONDS.getClass();
    }

    public mx0(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.a = z;
        this.b = z2;
        this.c = i;
        this.d = i2;
        this.e = z3;
        this.f = z4;
        this.g = z5;
        this.h = i3;
        this.i = i4;
        this.j = z6;
        this.k = z7;
        this.l = z8;
        this.m = str;
    }

    public final String toString() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.a) {
            sb.append("no-cache, ");
        }
        if (this.b) {
            sb.append("no-store, ");
        }
        int i = this.c;
        if (i != -1) {
            sb.append("max-age=");
            sb.append(i);
            sb.append(", ");
        }
        int i2 = this.d;
        if (i2 != -1) {
            sb.append("s-maxage=");
            sb.append(i2);
            sb.append(", ");
        }
        if (this.e) {
            sb.append("private, ");
        }
        if (this.f) {
            sb.append("public, ");
        }
        if (this.g) {
            sb.append("must-revalidate, ");
        }
        int i3 = this.h;
        if (i3 != -1) {
            sb.append("max-stale=");
            sb.append(i3);
            sb.append(", ");
        }
        int i4 = this.i;
        if (i4 != -1) {
            sb.append("min-fresh=");
            sb.append(i4);
            sb.append(", ");
        }
        if (this.j) {
            sb.append("only-if-cached, ");
        }
        if (this.k) {
            sb.append("no-transform, ");
        }
        if (this.l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        this.m = string;
        return string;
    }
}
