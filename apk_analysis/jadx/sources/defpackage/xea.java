package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class xea {
    public final String a;
    public final String b;
    public final Map<String, String> c;

    public xea(String str, String str2, Map map) {
        this.a = str;
        this.b = str2;
        this.c = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xea)) {
            return false;
        }
        xea xeaVar = (xea) obj;
        return aa4.e(this.a, xeaVar.a) && aa4.e(this.b, xeaVar.b) && aa4.e(this.c, xeaVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MigrationDtoVer1(uuid=");
        sb.append((Object) ("MetricsEventUuid(value=" + this.a + ')'));
        sb.append(", eventName=");
        sb.append(this.b);
        sb.append(", eventData=");
        return g2.c(sb, this.c, ')');
    }

    public xea() {
        throw null;
    }
}
