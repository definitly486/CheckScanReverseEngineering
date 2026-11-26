package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class go0 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("profit")
    private final uf6 c;

    @bq7("iconUrl")
    private final String d;

    public go0(long j, String str, uf6 uf6Var, String str2) {
        str.getClass();
        this.a = j;
        this.b = str;
        this.c = uf6Var;
        this.d = str2;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.b;
    }

    public final uf6 c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof go0)) {
            return false;
        }
        go0 go0Var = (go0) obj;
        return this.a == go0Var.a && aa4.e(this.b, go0Var.b) && aa4.e(this.c, go0Var.c) && aa4.e(this.d, go0Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(Long.hashCode(this.a) * 31, 31, this.b);
        uf6 uf6Var = this.c;
        int iHashCode = (iB + (uf6Var == null ? 0 : uf6Var.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        uf6 uf6Var = this.c;
        String str2 = this.d;
        StringBuilder sbD = ah.d(j, "BonusProgram(id=", ", name=", str);
        sbD.append(", profit=");
        sbD.append(uf6Var);
        sbD.append(", iconUrl=");
        sbD.append(str2);
        sbD.append(")");
        return sbD.toString();
    }
}
