package androidx.compose.ui.graphics;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;
import defpackage.vg;

/* JADX INFO: loaded from: classes2.dex */
public class Interval<T> {
    public static final int $stable = 0;
    private final T data;
    private final float end;
    private final float start;

    public Interval(float f, float f2, T t) {
        this.start = f;
        this.end = f2;
        this.data = t;
    }

    public final boolean contains(float f) {
        return f <= this.end && this.start <= f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Interval interval = (Interval) obj;
            return this.start == interval.start && this.end == interval.end && aa4.e(this.data, interval.data);
        }
        return false;
    }

    public final T getData() {
        return this.data;
    }

    public final float getEnd() {
        return this.end;
    }

    public final float getStart() {
        return this.start;
    }

    public int hashCode() {
        int iB = jn.b(this.end, Float.hashCode(this.start) * 31, 31);
        T t = this.data;
        return iB + (t != null ? t.hashCode() : 0);
    }

    public final boolean overlaps(Interval<T> interval) {
        return this.start <= interval.end && this.end >= interval.start;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Interval(start=");
        sb.append(this.start);
        sb.append(", end=");
        sb.append(this.end);
        sb.append(", data=");
        return vg.d(sb, this.data, ')');
    }

    public /* synthetic */ Interval(float f, float f2, Object obj, int i, jh2 jh2Var) {
        this(f, f2, (i & 4) != 0 ? null : obj);
    }

    public final boolean overlaps(float f, float f2) {
        return this.start <= f2 && this.end >= f;
    }
}
