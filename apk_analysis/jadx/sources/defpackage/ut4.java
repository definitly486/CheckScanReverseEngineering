package defpackage;

import java.time.DateTimeException;
import java.time.LocalTime;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = bu4.class)
public final class ut4 implements Comparable<ut4> {
    public static final a Companion = new a();
    public final LocalTime b;

    public static final class a {
        public final df4<ut4> serializer() {
            return bu4.a;
        }
    }

    static {
        LocalTime localTime = LocalTime.MIN;
        localTime.getClass();
        new ut4(localTime);
        LocalTime localTime2 = LocalTime.MAX;
        localTime2.getClass();
        new ut4(localTime2);
    }

    public ut4(int i, int i2, int i3, int i4) {
        try {
            LocalTime localTimeOf = LocalTime.of(i, i2, i3, i4);
            localTimeOf.getClass();
            this.b = localTimeOf;
        } catch (DateTimeException e) {
            cg.h(e);
            throw null;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ut4 ut4Var) {
        ut4 ut4Var2 = ut4Var;
        ut4Var2.getClass();
        return this.b.compareTo(ut4Var2.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ut4) {
            return aa4.e(this.b, ((ut4) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        String string = this.b.toString();
        string.getClass();
        return string;
    }

    public ut4(LocalTime localTime) {
        localTime.getClass();
        this.b = localTime;
    }
}
