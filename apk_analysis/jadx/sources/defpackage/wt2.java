package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.upstream.CmcdData;

/* JADX INFO: loaded from: classes5.dex */
public final class wt2 implements Comparable<wt2> {
    public static final a c = new a();
    public static final long d = yt2.b(4611686018427387903L);
    public static final long e = yt2.b(-4611686018427387903L);
    public static final long f = 9223372036854759646L;
    public final long b;

    public static final class a {
    }

    public static final long a(long j, long j2) {
        long j3 = j2 / 1000000;
        long jA = yt2.a(j, j3);
        if (-4611686018426L > jA || jA >= 4611686018427L) {
            return yt2.b(jA);
        }
        return yt2.c((jA * 1000000) + (j2 - (j3 * 1000000)));
    }

    public static final void c(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strR = ta8.R(i3, String.valueOf(i2));
            int i4 = -1;
            int length = strR.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strR.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) strR, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strR, 0, i6);
            }
        }
        sb.append(str);
    }

    public static int d(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return aa4.g(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return i(j) ? -i : i;
    }

    public static final long e(long j) {
        return ((((int) j) & 1) != 1 || h(j)) ? k(j, au2.MILLISECONDS) : j >> 1;
    }

    public static final long f(long j) {
        long j2 = j >> 1;
        if ((((int) j) & 1) == 0) {
            return j2;
        }
        if (j2 > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (j2 < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return j2 * 1000000;
    }

    public static final int g(long j) {
        if (h(j)) {
            return 0;
        }
        return (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % C.NANOS_PER_SECOND);
    }

    public static final boolean h(long j) {
        return j == d || j == e;
    }

    public static final boolean i(long j) {
        return j < 0;
    }

    public static final long j(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? a(j >> 1, j2 >> 1) : a(j2 >> 1, j >> 1);
        }
        if (i == 0) {
            long j3 = (j >> 1) + (j2 >> 1);
            return (-4611686018426999999L > j3 || j3 >= 4611686018427000000L) ? yt2.b(j3 / 1000000) : yt2.c(j3);
        }
        long jA = yt2.a(j >> 1, j2 >> 1);
        if (jA == 9223372036854759646L) {
            fg.c("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (jA == 4611686018427387903L || jA == -4611686018427387903L) {
            return yt2.b(jA);
        }
        return (-4611686018426L > jA || jA >= 4611686018427L) ? yt2.b(kx6.h(jA, -4611686018427387903L, 4611686018427387903L)) : yt2.c(jA * 1000000);
    }

    public static final long k(long j, au2 au2Var) {
        au2Var.getClass();
        if (j == d) {
            return Long.MAX_VALUE;
        }
        if (j == e) {
            return Long.MIN_VALUE;
        }
        long j2 = j >> 1;
        au2 au2Var2 = (((int) j) & 1) == 0 ? au2.NANOSECONDS : au2.MILLISECONDS;
        au2Var2.getClass();
        return au2Var.a().convert(j2, au2Var2.a());
    }

    public static String l(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == d) {
            return "Infinity";
        }
        if (j == e) {
            return "-Infinity";
        }
        boolean zI = i(j);
        StringBuilder sb = new StringBuilder();
        if (zI) {
            sb.append('-');
        }
        if (i(j)) {
            j = n(j);
        }
        long jK = k(j, au2.DAYS);
        int i = 0;
        int iK = h(j) ? 0 : (int) (k(j, au2.HOURS) % 24);
        int iK2 = h(j) ? 0 : (int) (k(j, au2.MINUTES) % 60);
        int iK3 = h(j) ? 0 : (int) (k(j, au2.SECONDS) % 60);
        int iG = g(j);
        boolean z = jK != 0;
        boolean z2 = iK != 0;
        boolean z3 = iK2 != 0;
        boolean z4 = (iK3 == 0 && iG == 0) ? false : true;
        if (z) {
            sb.append(jK);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iK);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iK2);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iK3 != 0 || z || z2 || z3) {
                c(sb, iK3, iG, 9, CmcdData.STREAMING_FORMAT_SS, false);
            } else if (iG >= 1000000) {
                c(sb, iG / PlaybackException.CUSTOM_ERROR_CODE_BASE, iG % PlaybackException.CUSTOM_ERROR_CODE_BASE, 6, "ms", false);
            } else if (iG >= 1000) {
                c(sb, iG / 1000, iG % 1000, 3, "us", false);
            } else {
                sb.append(iG);
                sb.append("ns");
            }
            i = i4;
        }
        if (zI && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    public static final long n(long j) {
        long j2 = ((-(j >> 1)) << 1) + ((long) (((int) j) & 1));
        int i = xt2.a;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(wt2 wt2Var) {
        return d(this.b, wt2Var.b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof wt2) {
            return this.b == ((wt2) obj).b;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.b);
    }

    public final String toString() {
        return l(this.b);
    }
}
