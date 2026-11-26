package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class z76 {
    public static final z76 d = new z76("", null, mx2.b);
    public final String a;
    public final String b;
    public final Map<ub.a, ub> c;

    public z76(String str, String str2, Map<ub.a, ub> map) {
        this.a = str;
        this.b = str2;
        this.c = map;
    }

    public static z76 a(z76 z76Var, String str, String str2, Map map, int i) {
        if ((i & 1) != 0) {
            str = z76Var.a;
        }
        if ((i & 2) != 0) {
            str2 = z76Var.b;
        }
        if ((i & 4) != 0) {
            map = z76Var.c;
        }
        z76Var.getClass();
        map.getClass();
        return new z76(str, str2, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z76)) {
            return false;
        }
        z76 z76Var = (z76) obj;
        return this.a.equals(z76Var.a) && aa4.e(this.b, z76Var.b) && this.c.equals(z76Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PhoneSignUpState(phone=", this.a, ", inviteCode=", this.b, ", agreements=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }
}
