package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import defpackage.e2;
import defpackage.tg;
import defpackage.vg;
import defpackage.xp;
import defpackage.zg;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class G {
    public final String a;
    public final String b;
    public final D c;
    public final Map d;
    public final long e;
    public final long f;
    public final List g;
    public final boolean h;
    public final String i;

    public G(String str, String str2, D d, LinkedHashMap linkedHashMap, long j, long j2, List list, boolean z, String str3) {
        this.a = str;
        this.b = str2;
        this.c = d;
        this.d = linkedHashMap;
        this.e = j;
        this.f = j2;
        this.g = list;
        this.h = z;
        this.i = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof G)) {
            return false;
        }
        G g = (G) obj;
        return aa4.e(this.a, g.a) && aa4.e(this.b, g.b) && aa4.e(this.c, g.c) && aa4.e(this.d, g.d) && this.e == g.e && this.f == g.f && aa4.e(this.g, g.g) && this.h == g.h && aa4.e(this.i, g.i);
    }

    public final int hashCode() {
        int iC = tg.c(e2.b(this.g, vg.b(vg.b(defpackage.k.c(this.d, (this.c.a.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31, 31), 31, this.e), 31, this.f), 31), 31, this.h);
        String str = this.i;
        return iC + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RequestConfig(type=");
        sb.append(this.a);
        sb.append(", url=");
        sb.append(this.b);
        sb.append(", preconditions=");
        sb.append(this.c);
        sb.append(", headers=");
        sb.append(this.d);
        sb.append(", resendIntervalForValidResponse=");
        sb.append(this.e);
        sb.append(", resendIntervalForInvalidResponse=");
        sb.append(this.f);
        sb.append(", validResponseCodes=");
        sb.append(this.g);
        sb.append(", reportEventEnabled=");
        sb.append(this.h);
        sb.append(", reportUrl=");
        return xp.e(sb, this.i, ')');
    }
}
