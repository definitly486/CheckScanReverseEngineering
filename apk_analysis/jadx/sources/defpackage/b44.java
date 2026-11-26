package defpackage;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;
import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class b44 implements k92, m02<b44> {
    public Integer a;
    public Integer b;
    public Integer c;
    public Integer d;
    public Integer e;

    public b44(Integer num, Integer num2, Integer num3, Integer num4, Integer num5) {
        this.a = num;
        this.b = num2;
        this.c = num3;
        this.d = num4;
        this.e = num5;
    }

    @Override // defpackage.m02
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final b44 copy() {
        return new b44(this.a, this.b, this.c, this.d, this.e);
    }

    @Override // defpackage.k92
    public final Integer b() {
        return this.d;
    }

    public final ct4 c() {
        ct4 ct4Var;
        Integer num = this.a;
        ft4.a(num, "year");
        int iIntValue = num.intValue();
        Integer num2 = this.e;
        if (num2 == null) {
            Integer num3 = this.b;
            ft4.a(num3, "monthNumber");
            int iIntValue2 = num3.intValue();
            Integer num4 = this.c;
            ft4.a(num4, "dayOfMonth");
            ct4Var = new ct4(iIntValue, iIntValue2, num4.intValue());
        } else {
            ct4 ct4Var2 = new ct4(iIntValue, 1, 1);
            int iIntValue3 = num2.intValue() - 1;
            lc2.Companion.getClass();
            ct4 ct4VarA = it4.a(ct4Var2, iIntValue3, lc2.a);
            LocalDate localDate = ct4VarA.b;
            if (localDate.getYear() != iIntValue) {
                throw new DateTimeFormatException("Can not create a LocalDate from the given input: the day of year is " + num2 + ", which is not a valid day of year for the year " + iIntValue);
            }
            if (this.b != null) {
                int monthValue = localDate.getMonthValue();
                Integer num5 = this.b;
                if (num5 == null || monthValue != num5.intValue()) {
                    StringBuilder sb = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                    sb.append(num2);
                    sb.append(", which is ");
                    Month month = localDate.getMonth();
                    month.getClass();
                    sb.append(month);
                    Integer num6 = this.b;
                    sb.append(", but ");
                    sb.append(num6);
                    sb.append(" was specified as the month number");
                    throw new DateTimeFormatException(sb.toString());
                }
            }
            if (this.c != null) {
                int dayOfMonth = localDate.getDayOfMonth();
                Integer num7 = this.c;
                if (num7 == null || dayOfMonth != num7.intValue()) {
                    StringBuilder sb2 = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                    sb2.append(num2);
                    sb2.append(", which is the day ");
                    sb2.append(localDate.getDayOfMonth());
                    sb2.append(" of ");
                    Month month2 = localDate.getMonth();
                    month2.getClass();
                    sb2.append(month2);
                    Integer num8 = this.c;
                    sb2.append(", but ");
                    sb2.append(num8);
                    sb2.append(" was specified as the day of month");
                    throw new DateTimeFormatException(sb2.toString());
                }
            }
            ct4Var = ct4VarA;
        }
        LocalDate localDate2 = ct4Var.b;
        Integer num9 = this.d;
        if (num9 != null) {
            int iIntValue4 = num9.intValue();
            DayOfWeek dayOfWeek = localDate2.getDayOfWeek();
            dayOfWeek.getClass();
            if (iIntValue4 != dayOfWeek.ordinal() + 1) {
                StringBuilder sb3 = new StringBuilder("Can not create a LocalDate from the given input: the day of week is ");
                if (1 > iIntValue4 || iIntValue4 >= 8) {
                    c9.f(jh.b(iIntValue4, "Expected ISO day-of-week number in 1..7, got "));
                    return null;
                }
                sb3.append((DayOfWeek) uc2.a.get(iIntValue4 - 1));
                sb3.append(" but the date is ");
                sb3.append(ct4Var);
                sb3.append(", which is a ");
                DayOfWeek dayOfWeek2 = localDate2.getDayOfWeek();
                dayOfWeek2.getClass();
                sb3.append(dayOfWeek2);
                throw new DateTimeFormatException(sb3.toString());
            }
        }
        return ct4Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b44)) {
            return false;
        }
        b44 b44Var = (b44) obj;
        return aa4.e(this.a, b44Var.a) && aa4.e(this.b, b44Var.b) && aa4.e(this.c, b44Var.c) && aa4.e(this.d, b44Var.d) && aa4.e(this.e, b44Var.e);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num != null ? num.hashCode() : 0) * 923521;
        Integer num2 = this.b;
        int iHashCode2 = ((num2 != null ? num2.hashCode() : 0) * 29791) + iHashCode;
        Integer num3 = this.c;
        int iHashCode3 = ((num3 != null ? num3.hashCode() : 0) * 961) + iHashCode2;
        Integer num4 = this.d;
        int iHashCode4 = ((num4 != null ? num4.hashCode() : 0) * 31) + iHashCode3;
        Integer num5 = this.e;
        return iHashCode4 + (num5 != null ? num5.hashCode() : 0);
    }

    @Override // defpackage.k92
    public final Integer k() {
        return this.a;
    }

    @Override // defpackage.k92
    public final void l(Integer num) {
        this.c = num;
    }

    @Override // defpackage.k92
    public final Integer n() {
        return this.b;
    }

    @Override // defpackage.k92
    public final void o(Integer num) {
        this.d = num;
    }

    @Override // defpackage.k92
    public final void s(Integer num) {
        this.e = num;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Object obj = this.a;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append('-');
        Object obj2 = this.b;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append('-');
        Object obj3 = this.c;
        if (obj3 == null) {
            obj3 = "??";
        }
        sb.append(obj3);
        sb.append(" (day of week is ");
        Integer num = this.d;
        return vg.d(sb, num != null ? num : "??", ')');
    }

    @Override // defpackage.k92
    public final void u(Integer num) {
        this.b = num;
    }

    @Override // defpackage.k92
    public final Integer x() {
        return this.e;
    }

    @Override // defpackage.k92
    public final void y(Integer num) {
        this.a = num;
    }

    @Override // defpackage.k92
    public final Integer z() {
        return this.c;
    }

    public /* synthetic */ b44(int i) {
        this(null, null, null, null, null);
    }

    public b44() {
        this(0);
    }
}
