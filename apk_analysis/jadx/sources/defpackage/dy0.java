package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class dy0 implements Serializable {
    public final int b;
    public final int c;
    public final int d;

    public dy0(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dy0)) {
            return false;
        }
        dy0 dy0Var = (dy0) obj;
        return this.b == dy0Var.b && this.c == dy0Var.c && this.d == dy0Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ej0.b(this.c, Integer.hashCode(this.b) * 31, 31);
    }

    public final String toString() {
        return l2.e(bg.f(this.b, this.c, "CalendarDay(year=", ", month=", ", day="), ")", this.d);
    }
}
