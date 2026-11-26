package defpackage;

import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.chrono.ChronoLocalDate;
import java.time.format.DateTimeParseException;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = ht4.class)
public final class ct4 implements Comparable<ct4> {
    public static final a Companion = new a();
    public final LocalDate b;

    public static final class a {
        public static ct4 a(a aVar, String str) {
            hc2<ct4> hc2Var = b.a;
            fh8 fh8Var = ft4.a;
            hc2 hc2Var2 = (hc2) fh8Var.getValue();
            aVar.getClass();
            str.getClass();
            hc2Var2.getClass();
            if (hc2Var2 != ((hc2) fh8Var.getValue())) {
                return (ct4) hc2Var2.a(str);
            }
            try {
                String string = str.toString();
                string.getClass();
                return new ct4(LocalDate.parse(ex0.e(6, string.toString())));
            } catch (DateTimeParseException e) {
                throw new DateTimeFormatException(e);
            }
        }

        public final df4<ct4> serializer() {
            return ht4.a;
        }
    }

    public static final class b {
        public static final hc2<ct4> a = (hc2) ft4.b.getValue();
    }

    static {
        LocalDate localDate = LocalDate.MIN;
        localDate.getClass();
        new ct4(localDate);
        LocalDate localDate2 = LocalDate.MAX;
        localDate2.getClass();
        new ct4(localDate2);
    }

    public ct4(int i, int i2, int i3) {
        try {
            LocalDate localDateOf = LocalDate.of(i, i2, i3);
            localDateOf.getClass();
            this.b = localDateOf;
        } catch (DateTimeException e) {
            cg.h(e);
            throw null;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ct4 ct4Var) {
        ct4 ct4Var2 = ct4Var;
        ct4Var2.getClass();
        return this.b.compareTo((ChronoLocalDate) ct4Var2.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ct4) {
            return aa4.e(this.b, ((ct4) obj).b);
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

    public ct4(LocalDate localDate) {
        localDate.getClass();
        this.b = localDate;
    }
}
