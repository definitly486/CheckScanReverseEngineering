package defpackage;

import androidx.media3.common.C;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class xc2 implements Comparable<xc2> {
    public static final a d = new a();
    public static final long e = -3153600000000000000L;
    public final long b;
    public volatile boolean c;

    public static final class a extends b {
    }

    public static abstract class b {
    }

    public xc2(long j) {
        long jNanoTime = System.nanoTime();
        long jMin = Math.min(3153600000000000000L, Math.max(e, j));
        this.b = jNanoTime + jMin;
        this.c = jMin <= 0;
    }

    public final long a() {
        long jNanoTime = System.nanoTime();
        if (!this.c && this.b - jNanoTime <= 0) {
            this.c = true;
        }
        return this.b - jNanoTime;
    }

    @Override // java.lang.Comparable
    public final int compareTo(xc2 xc2Var) {
        xc2 xc2Var2 = xc2Var;
        xc2Var2.getClass();
        return Long.compare(this.b, xc2Var2.b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof xc2) && this.b == ((xc2) obj).b;
    }

    public final int hashCode() {
        return Objects.hash(d, Long.valueOf(this.b));
    }

    public final String toString() {
        long jA = a();
        long jAbs = Math.abs(jA) / C.NANOS_PER_SECOND;
        long jAbs2 = Math.abs(jA) % C.NANOS_PER_SECOND;
        StringBuilder sb = new StringBuilder();
        if (jA < 0) {
            sb.append('-');
        }
        sb.append(jAbs);
        if (jAbs2 > 0) {
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
        }
        sb.append("s from now");
        return sb.toString();
    }
}
