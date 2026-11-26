package defpackage;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class gc6 {
    public static final AtomicLong n = new AtomicLong(0);
    public final String a;
    public final hc6 b;
    public final Map<String, Object> c;
    public final String d;
    public final String e;
    public final Integer f;
    public final String g;
    public final String h;
    public final String i;
    public final List<String> j;
    public final String k;
    public final String l;
    public final String m;

    public static final class a {
    }

    public gc6(String str, hc6 hc6Var, Map<String, ? extends Object> map, String str2, String str3, Integer num, String str4, String str5, String str6, List<String> list, String str7, String str8, String str9) {
        hc6Var.getClass();
        map.getClass();
        list.getClass();
        str8.getClass();
        str9.getClass();
        this.a = str;
        this.b = hc6Var;
        this.c = map;
        this.d = str2;
        this.e = str3;
        this.f = num;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = list;
        this.k = str7;
        this.l = str8;
        this.m = str9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gc6)) {
            return false;
        }
        gc6 gc6Var = (gc6) obj;
        return this.a.equals(gc6Var.a) && this.b == gc6Var.b && aa4.e(this.c, gc6Var.c) && aa4.e(this.d, gc6Var.d) && aa4.e(this.e, gc6Var.e) && aa4.e(this.f, gc6Var.f) && aa4.e(this.g, gc6Var.g) && aa4.e(this.h, gc6Var.h) && aa4.e(this.i, gc6Var.i) && aa4.e(this.j, gc6Var.j) && aa4.e(this.k, gc6Var.k) && aa4.e(this.l, gc6Var.l) && aa4.e(this.m, gc6Var.m);
    }

    public final int hashCode() {
        int iC = k.c(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31);
        String str = this.d;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.f;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iB = e2.b(this.j, (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31, 31);
        String str6 = this.k;
        return this.m.hashCode() + zg.b((iB + (str6 != null ? str6.hashCode() : 0)) * 31, 31, this.l);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PostHogLogRecord(body=");
        sb.append(this.a);
        sb.append(", level=");
        sb.append(this.b);
        sb.append(", attributes=");
        sb.append(this.c);
        sb.append(", traceId=");
        sb.append(this.d);
        sb.append(", spanId=");
        sb.append(this.e);
        sb.append(", traceFlags=");
        sb.append(this.f);
        sb.append(", distinctId=");
        sb.append(this.g);
        sb.append(", sessionId=");
        sb.append(this.h);
        sb.append(", screenName=");
        sb.append(this.i);
        sb.append(", featureFlagKeys=");
        sb.append(this.j);
        sb.append(", appState=");
        sb.append(this.k);
        sb.append(", timeUnixNano=");
        sb.append(this.l);
        sb.append(", observedTimeUnixNano=");
        return xp.e(sb, this.m, ')');
    }
}
