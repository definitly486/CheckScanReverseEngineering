package defpackage;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes5.dex */
public final class yt2 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[au2.values().length];
            try {
                iArr[au2.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[au2.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[au2.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[au2.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[au2.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[au2.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[au2.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    public static final long a(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            return (j2 == 4611686018427387903L || j2 == -4611686018427387903L) ? j2 : kx6.h(j + j2, -4611686018427387903L, 4611686018427387903L);
        }
        if ((-4611686018427387903L >= j2 || j2 >= 4611686018427387903L) && (j2 ^ j) < 0) {
            return 9223372036854759646L;
        }
        return j;
    }

    public static final long b(long j) {
        long j2 = (j << 1) + 1;
        wt2.c.getClass();
        int i = xt2.a;
        return j2;
    }

    public static final long c(long j) {
        wt2.a aVar = wt2.c;
        long j2 = j << 1;
        int i = xt2.a;
        return j2;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0195 A[LOOP:7: B:105:0x0193->B:106:0x0195, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:135:0x021f  */
    /* JADX WARN: Code duplicated, block: B:137:0x0223  */
    /* JADX WARN: Code duplicated, block: B:139:0x0227  */
    /* JADX WARN: Code duplicated, block: B:141:0x022b  */
    /* JADX WARN: Code duplicated, block: B:142:0x022d  */
    /* JADX WARN: Code duplicated, block: B:143:0x0230  */
    /* JADX WARN: Code duplicated, block: B:144:0x0233  */
    /* JADX WARN: Code duplicated, block: B:145:0x0236  */
    /* JADX WARN: Code duplicated, block: B:147:0x023a  */
    /* JADX WARN: Code duplicated, block: B:148:0x023c  */
    /* JADX WARN: Code duplicated, block: B:155:0x024d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:156:0x024f  */
    /* JADX WARN: Code duplicated, block: B:159:0x025b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:160:0x025d  */
    /* JADX WARN: Code duplicated, block: B:162:0x0270  */
    /* JADX WARN: Code duplicated, block: B:194:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x0213 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0286 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x027e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0155 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x018e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    /* JADX WARN: Code duplicated, block: B:77:0x0112  */
    /* JADX WARN: Code duplicated, block: B:81:0x011c  */
    /* JADX WARN: Code duplicated, block: B:87:0x012b  */
    /* JADX WARN: Code duplicated, block: B:89:0x013b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0143  */
    /* JADX WARN: Code duplicated, block: B:96:0x015c A[LOOP:5: B:95:0x015a->B:96:0x015c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0172  */
    public static long d(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        int i6;
        int i7;
        long j2;
        char cCharAt;
        au2 au2Var;
        long jA;
        int i8;
        int iMin;
        int i9;
        int i10;
        int i11;
        int iMin2;
        int i12;
        int i13;
        double d;
        long jC;
        char cCharAt2;
        char cCharAt3;
        char cCharAt4;
        char cCharAt5;
        int i14;
        int i15;
        char cCharAt6;
        if (str.length() == 0) {
            fg.c("The string is empty");
            return 0L;
        }
        char cCharAt7 = str.charAt(0);
        int i16 = 1;
        char c = '-';
        char c2 = '+';
        if (cCharAt7 != '+') {
            i2 = cCharAt7 != '-' ? 0 : 1;
            i = i2;
        } else {
            i = 0;
            i2 = 1;
        }
        if (str.length() <= i2) {
            fg.c("No components");
            return 0L;
        }
        if (str.charAt(i2) != 'P') {
            fg.c("");
            return 0L;
        }
        int i17 = i2 + 1;
        if (i17 == str.length()) {
            fg.c("");
            return 0L;
        }
        int i18 = 0;
        au2 au2Var2 = null;
        long jA2 = 0;
        long j3 = 0;
        while (i17 < str.length()) {
            char cCharAt8 = str.charAt(i17);
            if (cCharAt8 != 'T') {
                yv4 yv4Var = yv4.c;
                int i19 = i16;
                char cCharAt9 = str.charAt(i17);
                if (cCharAt9 != c2) {
                    if (cCharAt9 != c) {
                        i3 = i17;
                    } else {
                        i3 = i17 + 1;
                        i4 = -1;
                    }
                    while (i3 < str.length() && str.charAt(i3) == '0') {
                        i3++;
                    }
                    j = 0;
                    while (true) {
                        if (i3 < str.length()) {
                            cCharAt5 = str.charAt(i3);
                            i5 = i17;
                            if ('0' > cCharAt5 && cCharAt5 < ':') {
                                i14 = cCharAt5 - '0';
                                i15 = i;
                                long j4 = yv4Var.a;
                                if (j > j4 || (j == j4 && i14 > yv4Var.b)) {
                                    i6 = i15;
                                    while (i3 < str.length() && '0' <= (cCharAt6 = str.charAt(i3)) && cCharAt6 < ':') {
                                        i3++;
                                    }
                                    if (i3 != str.length()) {
                                        if (i3 != i5 + ((cCharAt8 == '+' || cCharAt8 == '-') ? i19 : 0)) {
                                            j = 4611686018427387903L;
                                        }
                                    }
                                    fg.c("");
                                    return 0L;
                                }
                                j = (j << 3) + (j << i19) + ((long) i14);
                                i3++;
                                i17 = i5;
                                yv4Var = yv4Var;
                                i = i15;
                            }
                            j2 = j;
                            if (str.charAt(i3) == '.') {
                                i8 = i3 + 1;
                                iMin = Math.min(i3 + 7, str.length());
                                i10 = 0;
                                for (i9 = i8; i9 < iMin; i9++) {
                                    cCharAt4 = str.charAt(i9);
                                    if ('0' <= cCharAt4 || cCharAt4 >= ':') {
                                        for (i11 = 0; i11 < 6 - (i9 - i8); i11++) {
                                            i10 = (i10 << 1) + (i10 << 3);
                                        }
                                        iMin2 = Math.min(i9 + 9, str.length());
                                        i3 = i9;
                                        i12 = 0;
                                        while (i3 < iMin2) {
                                            cCharAt3 = str.charAt(i3);
                                            int i20 = iMin2;
                                            if ('0' <= cCharAt3 || cCharAt3 >= ':') {
                                                for (i13 = 0; i13 < 9 - (i3 - i9); i13++) {
                                                    i12 = (i12 << 1) + (i12 << 3);
                                                }
                                                while (i3 < str.length() && '0' <= (cCharAt2 = str.charAt(i3)) && cCharAt2 < ':') {
                                                    i3++;
                                                }
                                                if (i3 != i8 || i3 == str.length() || str.charAt(i3) != 'S') {
                                                    fg.c("");
                                                    return 0L;
                                                }
                                                long j5 = (((long) i10) * C.NANOS_PER_SECOND) + ((long) i12);
                                                long j6 = i4;
                                                au2 au2Var3 = au2.SECONDS;
                                                double d2 = j5;
                                                switch (a.a[au2Var3.ordinal()]) {
                                                    case 1:
                                                        d = 1.0E-12d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 2:
                                                        d = 1.0E-15d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 3:
                                                        d = 1.0E-9d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 4:
                                                        d = 1.0E-6d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 5:
                                                        d = 6.0E-5d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 6:
                                                        d = 0.0036d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    case 7:
                                                        d = 0.0864d;
                                                        jC = w65.c(d2 * d);
                                                        break;
                                                    default:
                                                        og.e(au2Var3, "Unknown unit: ");
                                                        jC = 0;
                                                        break;
                                                }
                                                j3 = jC * j6;
                                            } else {
                                                i12 = (cCharAt3 - '0') + (i12 << 3) + (i12 << 1);
                                                i3++;
                                                iMin2 = i20;
                                            }
                                        }
                                        while (i13 < 9 - (i3 - i9)) {
                                            i12 = (i12 << 1) + (i12 << 3);
                                        }
                                        while (i3 < str.length()) {
                                            i3++;
                                        }
                                        if (i3 != i8) {
                                        }
                                        fg.c("");
                                        return 0L;
                                    }
                                    i10 = (cCharAt4 - '0') + (i10 << 3) + (i10 << 1);
                                }
                                while (i11 < 6 - (i9 - i8)) {
                                    i10 = (i10 << 1) + (i10 << 3);
                                }
                                iMin2 = Math.min(i9 + 9, str.length());
                                i3 = i9;
                                i12 = 0;
                                while (i3 < iMin2) {
                                    cCharAt3 = str.charAt(i3);
                                    int i21 = iMin2;
                                    if ('0' <= cCharAt3) {
                                    }
                                    while (i13 < 9 - (i3 - i9)) {
                                        i12 = (i12 << 1) + (i12 << 3);
                                    }
                                    while (i3 < str.length()) {
                                        i3++;
                                    }
                                    if (i3 != i8) {
                                    }
                                    fg.c("");
                                    return 0L;
                                }
                                while (i13 < 9 - (i3 - i9)) {
                                    i12 = (i12 << 1) + (i12 << 3);
                                }
                                while (i3 < str.length()) {
                                    i3++;
                                }
                                if (i3 != i8) {
                                }
                                fg.c("");
                                return 0L;
                            }
                            cCharAt = str.charAt(i3);
                            if (cCharAt == 'D') {
                                au2Var = au2.DAYS;
                            } else if (cCharAt == 'H') {
                                au2Var = au2.HOURS;
                            } else if (cCharAt == 'M') {
                                au2Var = au2.MINUTES;
                            } else if (cCharAt != 'S') {
                                au2Var = null;
                            } else {
                                au2Var = au2.SECONDS;
                            }
                            if (au2Var == null) {
                                throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i3));
                            }
                            if (au2Var2 == null && au2Var2.compareTo(au2Var) <= 0) {
                                fg.c("Unexpected order of duration components");
                                return 0L;
                            }
                            if (au2Var == au2.DAYS) {
                                if (i18 != 0) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA2 = cu2.a(j2, au2Var) * ((long) i4);
                            } else {
                                if (i18 == 0) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA = a(jA2, cu2.a(j2, au2Var) * ((long) i4));
                                if (jA == 9223372036854759646L) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA2 = jA;
                            }
                            i17 = i3 + 1;
                            au2Var2 = au2Var;
                            i16 = i19;
                            i = i6;
                            c = '-';
                            c2 = '+';
                        } else {
                            i5 = i17;
                        }
                        i6 = i;
                        if (i3 == str.length()) {
                            if (cCharAt8 != '+' || cCharAt8 == '-') {
                                i7 = i19;
                            } else {
                                i7 = 0;
                            }
                            if (i3 == i5 + i7) {
                            }
                            j2 = j;
                            if (str.charAt(i3) == '.') {
                                i8 = i3 + 1;
                                iMin = Math.min(i3 + 7, str.length());
                                i10 = 0;
                                while (i9 < iMin) {
                                    cCharAt4 = str.charAt(i9);
                                    if ('0' <= cCharAt4) {
                                    }
                                    while (i11 < 6 - (i9 - i8)) {
                                        i10 = (i10 << 1) + (i10 << 3);
                                    }
                                    iMin2 = Math.min(i9 + 9, str.length());
                                    i3 = i9;
                                    i12 = 0;
                                    while (i3 < iMin2) {
                                        cCharAt3 = str.charAt(i3);
                                        int i22 = iMin2;
                                        if ('0' <= cCharAt3) {
                                        }
                                        while (i13 < 9 - (i3 - i9)) {
                                            i12 = (i12 << 1) + (i12 << 3);
                                        }
                                        while (i3 < str.length()) {
                                            i3++;
                                        }
                                        if (i3 != i8) {
                                        }
                                        fg.c("");
                                        return 0L;
                                    }
                                    while (i13 < 9 - (i3 - i9)) {
                                        i12 = (i12 << 1) + (i12 << 3);
                                    }
                                    while (i3 < str.length()) {
                                        i3++;
                                    }
                                    if (i3 != i8) {
                                    }
                                    fg.c("");
                                    return 0L;
                                }
                                while (i11 < 6 - (i9 - i8)) {
                                    i10 = (i10 << 1) + (i10 << 3);
                                }
                                iMin2 = Math.min(i9 + 9, str.length());
                                i3 = i9;
                                i12 = 0;
                                while (i3 < iMin2) {
                                    cCharAt3 = str.charAt(i3);
                                    int i23 = iMin2;
                                    if ('0' <= cCharAt3) {
                                    }
                                    while (i13 < 9 - (i3 - i9)) {
                                        i12 = (i12 << 1) + (i12 << 3);
                                    }
                                    while (i3 < str.length()) {
                                        i3++;
                                    }
                                    if (i3 != i8) {
                                    }
                                    fg.c("");
                                    return 0L;
                                }
                                while (i13 < 9 - (i3 - i9)) {
                                    i12 = (i12 << 1) + (i12 << 3);
                                }
                                while (i3 < str.length()) {
                                    i3++;
                                }
                                if (i3 != i8) {
                                }
                                fg.c("");
                                return 0L;
                            }
                            cCharAt = str.charAt(i3);
                            if (cCharAt == 'D') {
                                au2Var = au2.DAYS;
                            } else if (cCharAt == 'H') {
                                au2Var = au2.HOURS;
                            } else if (cCharAt == 'M') {
                                au2Var = au2.MINUTES;
                            } else if (cCharAt != 'S') {
                                au2Var = null;
                            } else {
                                au2Var = au2.SECONDS;
                            }
                            if (au2Var == null) {
                                throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i3));
                            }
                            if (au2Var2 == null) {
                            }
                            if (au2Var == au2.DAYS) {
                                if (i18 != 0) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA2 = cu2.a(j2, au2Var) * ((long) i4);
                            } else {
                                if (i18 == 0) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA = a(jA2, cu2.a(j2, au2Var) * ((long) i4));
                                if (jA == 9223372036854759646L) {
                                    fg.c("");
                                    return 0L;
                                }
                                jA2 = jA;
                            }
                            i17 = i3 + 1;
                            au2Var2 = au2Var;
                            i16 = i19;
                            i = i6;
                            c = '-';
                            c2 = '+';
                        }
                        fg.c("");
                        return 0L;
                    }
                }
                i3 = i17 + 1;
                i4 = i19;
                while (i3 < str.length()) {
                    i3++;
                }
                j = 0;
                while (true) {
                    if (i3 < str.length()) {
                        cCharAt5 = str.charAt(i3);
                        i5 = i17;
                        if ('0' > cCharAt5) {
                        }
                    } else {
                        i5 = i17;
                    }
                    i6 = i;
                    if (i3 == str.length()) {
                        if (cCharAt8 != '+') {
                            i7 = i19;
                        } else {
                            i7 = i19;
                        }
                        if (i3 == i5 + i7) {
                        }
                        j2 = j;
                        if (str.charAt(i3) == '.') {
                            i8 = i3 + 1;
                            iMin = Math.min(i3 + 7, str.length());
                            i10 = 0;
                            while (i9 < iMin) {
                                cCharAt4 = str.charAt(i9);
                                if ('0' <= cCharAt4) {
                                }
                                while (i11 < 6 - (i9 - i8)) {
                                    i10 = (i10 << 1) + (i10 << 3);
                                }
                                iMin2 = Math.min(i9 + 9, str.length());
                                i3 = i9;
                                i12 = 0;
                                while (i3 < iMin2) {
                                    cCharAt3 = str.charAt(i3);
                                    int i24 = iMin2;
                                    if ('0' <= cCharAt3) {
                                    }
                                    while (i13 < 9 - (i3 - i9)) {
                                        i12 = (i12 << 1) + (i12 << 3);
                                    }
                                    while (i3 < str.length()) {
                                        i3++;
                                    }
                                    if (i3 != i8) {
                                    }
                                    fg.c("");
                                    return 0L;
                                }
                                while (i13 < 9 - (i3 - i9)) {
                                    i12 = (i12 << 1) + (i12 << 3);
                                }
                                while (i3 < str.length()) {
                                    i3++;
                                }
                                if (i3 != i8) {
                                }
                                fg.c("");
                                return 0L;
                            }
                            while (i11 < 6 - (i9 - i8)) {
                                i10 = (i10 << 1) + (i10 << 3);
                            }
                            iMin2 = Math.min(i9 + 9, str.length());
                            i3 = i9;
                            i12 = 0;
                            while (i3 < iMin2) {
                                cCharAt3 = str.charAt(i3);
                                int i25 = iMin2;
                                if ('0' <= cCharAt3) {
                                }
                                while (i13 < 9 - (i3 - i9)) {
                                    i12 = (i12 << 1) + (i12 << 3);
                                }
                                while (i3 < str.length()) {
                                    i3++;
                                }
                                if (i3 != i8) {
                                }
                                fg.c("");
                                return 0L;
                            }
                            while (i13 < 9 - (i3 - i9)) {
                                i12 = (i12 << 1) + (i12 << 3);
                            }
                            while (i3 < str.length()) {
                                i3++;
                            }
                            if (i3 != i8) {
                            }
                            fg.c("");
                            return 0L;
                        }
                        cCharAt = str.charAt(i3);
                        if (cCharAt == 'D') {
                            au2Var = au2.DAYS;
                        } else if (cCharAt == 'H') {
                            au2Var = au2.HOURS;
                        } else if (cCharAt == 'M') {
                            au2Var = au2.MINUTES;
                        } else if (cCharAt != 'S') {
                            au2Var = null;
                        } else {
                            au2Var = au2.SECONDS;
                        }
                        if (au2Var == null) {
                            throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i3));
                        }
                        if (au2Var2 == null) {
                        }
                        if (au2Var == au2.DAYS) {
                            if (i18 != 0) {
                                fg.c("");
                                return 0L;
                            }
                            jA2 = cu2.a(j2, au2Var) * ((long) i4);
                        } else {
                            if (i18 == 0) {
                                fg.c("");
                                return 0L;
                            }
                            jA = a(jA2, cu2.a(j2, au2Var) * ((long) i4));
                            if (jA == 9223372036854759646L) {
                                fg.c("");
                                return 0L;
                            }
                            jA2 = jA;
                        }
                        i17 = i3 + 1;
                        au2Var2 = au2Var;
                        i16 = i19;
                        i = i6;
                        c = '-';
                        c2 = '+';
                    }
                    fg.c("");
                    return 0L;
                    j = (j << 3) + (j << i19) + ((long) i14);
                    i3++;
                    i17 = i5;
                    yv4Var = yv4Var;
                    i = i15;
                }
            } else {
                if (i18 != 0 || (i17 = i17 + 1) == str.length()) {
                    fg.c("");
                    return 0L;
                }
                i18 = i16;
            }
        }
        int i26 = i;
        long j7 = wt2.j(f(jA2, au2.MILLISECONDS), f(j3, au2.NANOSECONDS));
        return (i26 == 0 || j7 == wt2.f) ? j7 : wt2.n(j7);
    }

    public static final long e(int i, au2 au2Var) {
        au2Var.getClass();
        if (au2Var.compareTo(au2.SECONDS) > 0) {
            return f(i, au2Var);
        }
        long j = i;
        au2 au2Var2 = au2.NANOSECONDS;
        au2Var2.getClass();
        return c(au2Var2.a().convert(j, au2Var.a()));
    }

    public static final long f(long j, au2 au2Var) {
        au2Var.getClass();
        au2 au2Var2 = au2.NANOSECONDS;
        au2Var2.getClass();
        long jConvert = au2Var.a().convert(4611686018426999999L, au2Var2.a());
        if ((-jConvert) <= j && j <= jConvert) {
            return c(au2Var2.a().convert(j, au2Var.a()));
        }
        au2 au2Var3 = au2.MILLISECONDS;
        if (au2Var.compareTo(au2Var3) < 0) {
            au2Var3.getClass();
            return b(kx6.h(au2Var3.a().convert(j, au2Var.a()), -4611686018427387903L, 4611686018427387903L));
        }
        long jSignum = Long.signum(j);
        if (j < C.TIME_UNSET) {
            j = -9223372036854775807L;
        }
        return b(cu2.a(Math.abs(j), au2Var) * jSignum);
    }
}
