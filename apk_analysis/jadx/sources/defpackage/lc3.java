package defpackage;

import com.posthog.internal.a;
import com.posthog.internal.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class lc3 {
    public final String a;

    @bq7("value")
    private final Object b;

    @bq7("operator")
    private final a c;
    public final b d;
    public final Boolean e;

    @bq7("dependency_chain")
    private final List<String> f;

    public lc3(String str, Object obj, a aVar, b bVar, Boolean bool, List<String> list) {
        str.getClass();
        this.a = str;
        this.b = obj;
        this.c = aVar;
        this.d = bVar;
        this.e = bool;
        this.f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lc3)) {
            return false;
        }
        lc3 lc3Var = (lc3) obj;
        return this.a.equals(lc3Var.a) && aa4.e(this.b, lc3Var.b) && this.c == lc3Var.c && this.d == lc3Var.d && aa4.e(this.e, lc3Var.e) && aa4.e(this.f, lc3Var.f);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Object obj = this.b;
        int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        a aVar = this.c;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        b bVar = this.d;
        int iHashCode4 = (iHashCode3 + (bVar == null ? 0 : bVar.hashCode())) * 31;
        Boolean bool = this.e;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<String> list = this.f;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlagProperty(key=");
        sb.append(this.a);
        sb.append(", propertyValue=");
        sb.append(this.b);
        sb.append(", propertyOperator=");
        sb.append(this.c);
        sb.append(", type=");
        sb.append(this.d);
        sb.append(", negation=");
        sb.append(this.e);
        sb.append(", dependencyChain=");
        return qg.f(sb, this.f, ')');
    }
}
