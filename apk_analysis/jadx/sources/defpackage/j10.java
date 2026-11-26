package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class j10 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final n10 b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    public /* synthetic */ j10(long j, n10 n10Var, String str, int i, jh2 jh2Var) {
        this(j, n10Var, (i & 4) != 0 ? new String() : str);
    }

    public final long a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }

    public final n10 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j10)) {
            return false;
        }
        j10 j10Var = (j10) obj;
        return this.a == j10Var.a && this.b == j10Var.b && aa4.e(this.c, j10Var.c);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        n10 n10Var = this.b;
        int iHashCode2 = (iHashCode + (n10Var == null ? 0 : n10Var.hashCode())) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        long j = this.a;
        n10 n10Var = this.b;
        String str = this.c;
        StringBuilder sb = new StringBuilder("BalanceBlockResponse(id=");
        sb.append(j);
        sb.append(", type=");
        sb.append(n10Var);
        return kh.c(sb, ", title=", str, ")");
    }

    public j10(long j, n10 n10Var, String str) {
        this.a = j;
        this.b = n10Var;
        this.c = str;
    }
}
