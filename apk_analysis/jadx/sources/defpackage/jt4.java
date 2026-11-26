package defpackage;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDateTime;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = pt4.class)
public final class jt4 implements Comparable<jt4> {
    public static final a Companion = new a();
    public final LocalDateTime b;

    public static final class a {
        public final df4<jt4> serializer() {
            return pt4.a;
        }
    }

    public static final class b {
        public static final kt4 a = (kt4) ot4.a.getValue();
    }

    static {
        LocalDateTime localDateTime = LocalDateTime.MIN;
        localDateTime.getClass();
        new jt4(localDateTime);
        LocalDateTime localDateTime2 = LocalDateTime.MAX;
        localDateTime2.getClass();
        new jt4(localDateTime2);
    }

    public jt4(ct4 ct4Var, ut4 ut4Var) {
        LocalDateTime localDateTimeOf = LocalDateTime.of(ct4Var.b, ut4Var.b);
        localDateTimeOf.getClass();
        this.b = localDateTimeOf;
    }

    public final ct4 a() {
        LocalDate localDate = this.b.toLocalDate();
        localDate.getClass();
        return new ct4(localDate);
    }

    @Override // java.lang.Comparable
    public final int compareTo(jt4 jt4Var) {
        jt4 jt4Var2 = jt4Var;
        jt4Var2.getClass();
        return this.b.compareTo((ChronoLocalDateTime<?>) jt4Var2.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof jt4) {
            return aa4.e(this.b, ((jt4) obj).b);
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

    public jt4(LocalDateTime localDateTime) {
        localDateTime.getClass();
        this.b = localDateTime;
    }
}
