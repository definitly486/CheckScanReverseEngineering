package defpackage;

import kotlinx.datetime.DateTimeFormatException;

/* JADX INFO: loaded from: classes5.dex */
public final class d44 implements hu8, m02<d44> {
    public Integer a;
    public Integer b;
    public xc c;
    public Integer d;
    public Integer e;
    public Integer f;

    public d44(Integer num, Integer num2, xc xcVar, Integer num3, Integer num4, Integer num5) {
        this.a = num;
        this.b = num2;
        this.c = xcVar;
        this.d = num3;
        this.e = num4;
        this.f = num5;
    }

    @Override // defpackage.hu8
    public final void A(Integer num) {
        this.a = num;
    }

    @Override // defpackage.hu8
    public final Integer a() {
        return this.b;
    }

    @Override // defpackage.m02
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final d44 copy() {
        return new d44(this.a, this.b, this.c, this.d, this.e, this.f);
    }

    public final ut4 c() {
        int iIntValue;
        int iIntValue2;
        Integer num = this.a;
        Integer num2 = this.b;
        Integer numValueOf = null;
        if (num != null) {
            iIntValue = num.intValue();
            if (num2 != null && ((iIntValue + 11) % 12) + 1 != (iIntValue2 = num2.intValue())) {
                c9.f(rz0.c(iIntValue, iIntValue2, "Inconsistent hour and hour-of-am-pm: hour is ", ", but hour-of-am-pm is "));
                return null;
            }
            xc xcVar = this.c;
            if (xcVar != null) {
                if ((xcVar == xc.PM) != (iIntValue >= 12)) {
                    throw new IllegalArgumentException(("Inconsistent hour and the AM/PM marker: hour is " + iIntValue + ", but the AM/PM marker is " + xcVar).toString());
                }
            }
        } else {
            if (num2 != null) {
                int iIntValue3 = num2.intValue();
                xc xcVar2 = this.c;
                if (xcVar2 != null) {
                    if (iIntValue3 == 12) {
                        iIntValue3 = 0;
                    }
                    numValueOf = Integer.valueOf(iIntValue3 + (xcVar2 != xc.PM ? 0 : 12));
                }
            }
            if (numValueOf == null) {
                throw new DateTimeFormatException("Incomplete time: missing hour");
            }
            iIntValue = numValueOf.intValue();
        }
        Integer num3 = this.d;
        ft4.a(num3, "minute");
        int iIntValue4 = num3.intValue();
        Integer num4 = this.e;
        int iIntValue5 = num4 != null ? num4.intValue() : 0;
        Integer num5 = this.f;
        return new ut4(iIntValue, iIntValue4, iIntValue5, num5 != null ? num5.intValue() : 0);
    }

    @Override // defpackage.hu8
    public final void e(Integer num) {
        this.e = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d44)) {
            return false;
        }
        d44 d44Var = (d44) obj;
        return aa4.e(this.a, d44Var.a) && aa4.e(this.b, d44Var.b) && this.c == d44Var.c && aa4.e(this.d, d44Var.d) && aa4.e(this.e, d44Var.e) && aa4.e(this.f, d44Var.f);
    }

    @Override // defpackage.hu8
    public final void g(ed2 ed2Var) {
        this.f = ed2Var != null ? Integer.valueOf(ed2Var.a(9)) : null;
    }

    @Override // defpackage.hu8
    public final Integer getHour() {
        return this.a;
    }

    @Override // defpackage.hu8
    public final Integer getMinute() {
        return this.d;
    }

    @Override // defpackage.hu8
    public final xc h() {
        return this.c;
    }

    public final int hashCode() {
        Integer num = this.a;
        int iIntValue = (num != null ? num.intValue() : 0) * 31;
        Integer num2 = this.b;
        int iIntValue2 = ((num2 != null ? num2.intValue() : 0) * 31) + iIntValue;
        xc xcVar = this.c;
        int iHashCode = ((xcVar != null ? xcVar.hashCode() : 0) * 31) + iIntValue2;
        Integer num3 = this.d;
        int iIntValue3 = ((num3 != null ? num3.intValue() : 0) * 31) + iHashCode;
        Integer num4 = this.e;
        int iIntValue4 = ((num4 != null ? num4.intValue() : 0) * 31) + iIntValue3;
        Integer num5 = this.f;
        return iIntValue4 + (num5 != null ? num5.intValue() : 0);
    }

    @Override // defpackage.hu8
    public final void i(Integer num) {
        this.b = num;
    }

    @Override // defpackage.hu8
    public final void m(xc xcVar) {
        this.c = xcVar;
    }

    @Override // defpackage.hu8
    public final Integer r() {
        return this.e;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    public final String toString() {
        String strR;
        StringBuilder sb = new StringBuilder();
        Object obj = this.a;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append(':');
        Object obj2 = this.d;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append(':');
        Integer num = this.e;
        sb.append(num != null ? num : "??");
        sb.append('.');
        Integer num2 = this.f;
        if (num2 != null) {
            String strValueOf = String.valueOf(num2.intValue());
            strR = ta8.R(9 - strValueOf.length(), strValueOf);
            if (strR == null) {
                strR = "???";
            }
        } else {
            strR = "???";
        }
        sb.append(strR);
        return sb.toString();
    }

    @Override // defpackage.hu8
    public final void v(Integer num) {
        this.d = num;
    }

    @Override // defpackage.hu8
    public final ed2 w() {
        Integer num = this.f;
        if (num != null) {
            return new ed2(num.intValue(), 9);
        }
        return null;
    }

    public /* synthetic */ d44(int i) {
        this(null, null, null, null, null, null);
    }

    public d44() {
        this(0);
    }
}
