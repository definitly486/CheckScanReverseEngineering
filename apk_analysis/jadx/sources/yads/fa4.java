package yads;

import defpackage.ca8;
import defpackage.up7;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class fa4 {
    public static final ea4 Companion = new ea4();
    public static final defpackage.cl4[] e = {null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.qy1(3)), null};
    public final long a;
    public final Integer b;
    public final Map c;
    public final String d;

    public fa4(int i, long j, Integer num, Map map, String str) {
        if (15 != (i & 15)) {
            defpackage.r96.f(da4.b, i, 15);
            throw null;
        }
        this.a = j;
        this.b = num;
        this.c = map;
        this.d = str;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        ca8 ca8Var = ca8.a;
        return new defpackage.uq4(ca8Var, defpackage.ev0.a(ca8Var));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fa4)) {
            return false;
        }
        fa4 fa4Var = (fa4) obj;
        return this.a == fa4Var.a && defpackage.aa4.e(this.b, fa4Var.b) && defpackage.aa4.e(this.c, fa4Var.c) && defpackage.aa4.e(this.d, fa4Var.d);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Map map = this.c;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        String str = this.d;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "MobileAdsNetworkResponseLog(timestamp=" + this.a + ", statusCode=" + this.b + ", headers=" + this.c + ", body=" + this.d + ")";
    }

    public fa4(long j, Integer num, Map map, String str) {
        this.a = j;
        this.b = num;
        this.c = map;
        this.d = str;
    }
}
