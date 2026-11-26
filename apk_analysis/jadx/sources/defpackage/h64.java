package defpackage;

import java.time.Instant;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = j64.class)
public final class h64 implements Comparable<h64> {
    public static final a Companion = new a();
    public static final h64 c;
    public static final h64 d;
    public final Instant b;

    public static final class a {
        public static h64 a(a aVar, String str) {
            fc2 fc2Var = rb2.b.a;
            aVar.getClass();
            str.getClass();
            fc2Var.getClass();
            try {
                return fc2Var.a(str).a();
            } catch (IllegalArgumentException e) {
                throw new DateTimeFormatException("Failed to parse an instant from '" + ((Object) str) + '\'', e);
            }
        }

        public final df4<h64> serializer() {
            return j64.a;
        }
    }

    static {
        Instant instantOfEpochSecond = Instant.ofEpochSecond(-3217862419201L, 999999999L);
        instantOfEpochSecond.getClass();
        new h64(instantOfEpochSecond);
        Instant instantOfEpochSecond2 = Instant.ofEpochSecond(3093527980800L, 0L);
        instantOfEpochSecond2.getClass();
        new h64(instantOfEpochSecond2);
        Instant instant = Instant.MIN;
        instant.getClass();
        c = new h64(instant);
        Instant instant2 = Instant.MAX;
        instant2.getClass();
        d = new h64(instant2);
    }

    public h64(Instant instant) {
        instant.getClass();
        this.b = instant;
    }

    @Override // java.lang.Comparable
    public final int compareTo(h64 h64Var) {
        h64 h64Var2 = h64Var;
        h64Var2.getClass();
        return this.b.compareTo(h64Var2.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h64) {
            return aa4.e(this.b, ((h64) obj).b);
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
}
