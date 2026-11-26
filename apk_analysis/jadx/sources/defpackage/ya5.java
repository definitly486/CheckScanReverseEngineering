package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ya5 {
    public final String a;
    public final Map<String, String> b;
    public final long c;

    public ya5(String str, Map<String, String> map, long j) {
        this.a = str;
        this.b = map;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ya5)) {
            return false;
        }
        ya5 ya5Var = (ya5) obj;
        return aa4.e(this.a, ya5Var.a) && aa4.e(this.b, ya5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MetricsEvent(eventName='");
        sb.append(this.a);
        sb.append("', eventData=");
        sb.append(this.b);
        sb.append(", eventTime=");
        return lg.f(sb, this.c, ')');
    }
}
