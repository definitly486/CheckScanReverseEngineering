package defpackage;

import androidx.media3.common.C;
import com.tapjoy.TapjoyCacheKt;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class g64 implements Comparable<g64>, Serializable {
    public static final g64 d = new g64(-31557014167219200L, 0);
    public static final g64 e = new g64(31556889864403199L, 999999999);
    public final long b;
    public final int c;

    public static final class a {
        public static g64 a(int i, long j) {
            long j2 = i;
            long j3 = j2 / C.NANOS_PER_SECOND;
            if ((j2 ^ C.NANOS_PER_SECOND) < 0 && j3 * C.NANOS_PER_SECOND != j2) {
                j3--;
            }
            long j4 = j + j3;
            if ((j ^ j4) < 0 && (j3 ^ j) >= 0) {
                return j > 0 ? g64.e : g64.d;
            }
            if (j4 < -31557014167219200L) {
                return g64.d;
            }
            if (j4 > 31556889864403199L) {
                return g64.e;
            }
            long j5 = j2 % C.NANOS_PER_SECOND;
            return new g64(j4, (int) (j5 + ((((j5 ^ C.NANOS_PER_SECOND) & ((-j5) | j5)) >> 63) & C.NANOS_PER_SECOND)));
        }
    }

    public g64(long j, int i) {
        this.b = j;
        this.c = i;
        if (-31557014167219200L > j || j >= 31556889864403200L) {
            fg.c("Instant exceeds minimum or maximum instant");
            throw null;
        }
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        int i = l64.a;
        return new p64(this.b, this.c);
    }

    @Override // java.lang.Comparable
    public final int compareTo(g64 g64Var) {
        g64 g64Var2 = g64Var;
        g64Var2.getClass();
        int iG = aa4.g(this.b, g64Var2.b);
        return iG != 0 ? iG : aa4.f(this.c, g64Var2.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g64)) {
            return false;
        }
        g64 g64Var = (g64) obj;
        return this.b == g64Var.b && this.c == g64Var.c;
    }

    public final int hashCode() {
        return (this.c * 51) + Long.hashCode(this.b);
    }

    public final String toString() {
        long j;
        int[] iArr;
        int i;
        StringBuilder sb = new StringBuilder();
        b59.h.getClass();
        long j2 = this.b;
        long j3 = j2 / TapjoyCacheKt.DEFAULT_TIME_TO_LIVE;
        if ((j2 ^ TapjoyCacheKt.DEFAULT_TIME_TO_LIVE) < 0 && j3 * TapjoyCacheKt.DEFAULT_TIME_TO_LIVE != j2) {
            j3--;
        }
        long j4 = j2 % TapjoyCacheKt.DEFAULT_TIME_TO_LIVE;
        int i2 = (int) (j4 + (TapjoyCacheKt.DEFAULT_TIME_TO_LIVE & (((j4 ^ TapjoyCacheKt.DEFAULT_TIME_TO_LIVE) & ((-j4) | j4)) >> 63)));
        long j5 = 719468 + j3;
        if (j5 < 0) {
            long j6 = ((j3 + 719469) / 146097) - 1;
            j = j6 * 400;
            j5 += (-j6) * 146097;
        } else {
            j = 0;
        }
        long j7 = ((400 * j5) + 591) / 146097;
        long j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        if (j8 < 0) {
            j7--;
            j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        }
        int i3 = (int) j8;
        int i4 = ((i3 * 5) + 2) / 153;
        int i5 = ((i4 + 2) % 12) + 1;
        int i6 = (i3 - (((i4 * 306) + 5) / 10)) + 1;
        int i7 = (int) (j7 + j + ((long) (i4 / 10)));
        int i8 = i2 / 3600;
        int i9 = i2 - (i8 * 3600);
        int i10 = i9 / 60;
        int i11 = i9 - (i10 * 60);
        int i12 = this.c;
        b59 b59Var = new b59(i7, i5, i6, i8, i10, i11, i12);
        int i13 = 0;
        if (Math.abs(i7) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (i7 >= 0) {
                sb2.append(i7 + 10000);
                sb2.deleteCharAt(0).getClass();
            } else {
                sb2.append(i7 - 10000);
                sb2.deleteCharAt(1).getClass();
            }
            sb.append((CharSequence) sb2);
        } else {
            if (i7 >= 10000) {
                sb.append('+');
            }
            sb.append(i7);
        }
        sb.append('-');
        m64.a(sb, sb, i5);
        sb.append('-');
        m64.a(sb, sb, i6);
        sb.append('T');
        m64.a(sb, sb, i8);
        sb.append(':');
        m64.a(sb, sb, i10);
        sb.append(':');
        m64.a(sb, sb, i11);
        if (i12 != 0) {
            sb.append('.');
            while (true) {
                int i14 = i13 + 1;
                iArr = m64.a;
                int i15 = iArr[i14];
                i = b59Var.g;
                if (i % i15 != 0) {
                    break;
                }
                i13 = i14;
            }
            int i16 = i13 - (i13 % 3);
            String strValueOf = String.valueOf((i / iArr[i16]) + iArr[9 - i16]);
            strValueOf.getClass();
            sb.append(strValueOf.substring(1));
        }
        sb.append('Z');
        return sb.toString();
    }
}
