package defpackage;

import java.time.DateTimeException;
import java.time.ZoneOffset;

/* JADX INFO: loaded from: classes5.dex */
public final class f44 implements ea9, m02<f44> {
    public Boolean a;
    public Integer b;
    public Integer c;
    public Integer d;

    public f44(Boolean bool, Integer num, Integer num2, Integer num3) {
        this.a = bool;
        this.b = num;
        this.c = num2;
        this.d = num3;
    }

    public final da9 a() {
        int i = aa4.e(this.a, Boolean.TRUE) ? -1 : 1;
        Integer num = this.b;
        Integer numValueOf = num != null ? Integer.valueOf(num.intValue() * i) : null;
        Integer num2 = this.c;
        Integer numValueOf2 = num2 != null ? Integer.valueOf(num2.intValue() * i) : null;
        Integer num3 = this.d;
        Integer numValueOf3 = num3 != null ? Integer.valueOf(num3.intValue() * i) : null;
        fh8 fh8Var = ua9.a;
        try {
            if (numValueOf != null) {
                ZoneOffset zoneOffsetOfHoursMinutesSeconds = ZoneOffset.ofHoursMinutesSeconds(numValueOf.intValue(), numValueOf2 != null ? numValueOf2.intValue() : 0, numValueOf3 != null ? numValueOf3.intValue() : 0);
                zoneOffsetOfHoursMinutesSeconds.getClass();
                return new da9(zoneOffsetOfHoursMinutesSeconds);
            }
            if (numValueOf2 != null) {
                ZoneOffset zoneOffsetOfHoursMinutesSeconds2 = ZoneOffset.ofHoursMinutesSeconds(numValueOf2.intValue() / 60, numValueOf2.intValue() % 60, numValueOf3 != null ? numValueOf3.intValue() : 0);
                zoneOffsetOfHoursMinutesSeconds2.getClass();
                return new da9(zoneOffsetOfHoursMinutesSeconds2);
            }
            ZoneOffset zoneOffsetOfTotalSeconds = ZoneOffset.ofTotalSeconds(numValueOf3 != null ? numValueOf3.intValue() : 0);
            zoneOffsetOfTotalSeconds.getClass();
            return new da9(zoneOffsetOfTotalSeconds);
        } catch (DateTimeException e) {
            cg.h(e);
            return null;
        }
    }

    @Override // defpackage.ea9
    public final void c(Boolean bool) {
        this.a = bool;
    }

    @Override // defpackage.m02
    public final f44 copy() {
        return new f44(this.a, this.b, this.c, this.d);
    }

    @Override // defpackage.ea9
    public final void d(Integer num) {
        this.c = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f44)) {
            return false;
        }
        f44 f44Var = (f44) obj;
        return aa4.e(this.a, f44Var.a) && aa4.e(this.b, f44Var.b) && aa4.e(this.c, f44Var.c) && aa4.e(this.d, f44Var.d);
    }

    @Override // defpackage.ea9
    public final void f(Integer num) {
        this.b = num;
    }

    public final int hashCode() {
        Boolean bool = this.a;
        int iHashCode = bool != null ? bool.hashCode() : 0;
        Integer num = this.b;
        int iHashCode2 = iHashCode + (num != null ? num.hashCode() : 0);
        Integer num2 = this.c;
        int iHashCode3 = iHashCode2 + (num2 != null ? num2.hashCode() : 0);
        Integer num3 = this.d;
        return iHashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    @Override // defpackage.ea9
    public final Boolean isNegative() {
        return this.a;
    }

    @Override // defpackage.ea9
    public final Integer j() {
        return this.d;
    }

    @Override // defpackage.ea9
    public final Integer p() {
        return this.b;
    }

    @Override // defpackage.ea9
    public final Integer q() {
        return this.c;
    }

    @Override // defpackage.ea9
    public final void t(Integer num) {
        this.d = num;
    }

    public final String toString() {
        String str;
        Boolean bool = this.a;
        if (bool != null) {
            str = bool.booleanValue() ? "-" : "+";
        } else {
            str = " ";
        }
        StringBuilder sb = new StringBuilder(str);
        Object obj = this.b;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append(':');
        Object obj2 = this.c;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append(':');
        Integer num = this.d;
        sb.append(num != null ? num : "??");
        return sb.toString();
    }

    public f44() {
        this(null, null, null, null);
    }
}
