package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class us5 {

    @bq7("ofdId")
    private final int a;

    @bq7("code")
    private final int b;

    @bq7("header")
    private final List<cv3> c;

    @bq7("response")
    private final String d;

    @bq7("extra")
    private final String e;

    public /* synthetic */ us5(int i, int i2, List list, String str, String str2, int i3, jh2 jh2Var) {
        this(i, i2, (i3 & 4) != 0 ? new ArrayList() : list, (i3 & 8) != 0 ? "" : str, (i3 & 16) != 0 ? null : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof us5)) {
            return false;
        }
        us5 us5Var = (us5) obj;
        return this.a == us5Var.a && this.b == us5Var.b && aa4.e(this.c, us5Var.c) && aa4.e(this.d, us5Var.d) && aa4.e(this.e, us5Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(e2.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        List<cv3> list = this.c;
        String str = this.d;
        String str2 = this.e;
        StringBuilder sbF = bg.f(i, i2, "OfdResponse(ofdId=", ", code=", ", headers=");
        sbF.append(list);
        sbF.append(", response=");
        sbF.append(str);
        sbF.append(", extra=");
        return me0.d(sbF, str2, ")");
    }

    public us5(int i, int i2, List<cv3> list, String str, String str2) {
        list.getClass();
        str.getClass();
        this.a = i;
        this.b = i2;
        this.c = list;
        this.d = str;
        this.e = str2;
    }
}
