package defpackage;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes5.dex */
public final class k49 implements Comparable<k49> {
    public final int b;

    @Override // java.lang.Comparable
    public final int compareTo(k49 k49Var) {
        return aa4.f(this.b ^ Integer.MIN_VALUE, k49Var.b ^ Integer.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k49) {
            return this.b == ((k49) obj).b;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b);
    }

    public final String toString() {
        return String.valueOf(((long) this.b) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }
}
