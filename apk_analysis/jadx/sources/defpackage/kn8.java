package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kn8 {

    @bq7("subTitle")
    private final String a;

    @bq7("tasks")
    private final List<fo8> b;

    @bq7("listId")
    private final String c;

    @bq7("rankerVersion")
    private final String d;

    @bq7("experimentKey")
    private final String e;

    @bq7("experimentVariant")
    private final String f;

    public /* synthetic */ kn8(String str, List list, String str2, String str3, String str4, String str5, int i, jh2 jh2Var) {
        this(str, list, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5);
    }

    public final String a() {
        return this.e;
    }

    public final String b() {
        return this.f;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kn8)) {
            return false;
        }
        kn8 kn8Var = (kn8) obj;
        return aa4.e(this.a, kn8Var.a) && aa4.e(this.b, kn8Var.b) && aa4.e(this.c, kn8Var.c) && aa4.e(this.d, kn8Var.d) && aa4.e(this.e, kn8Var.e) && aa4.e(this.f, kn8Var.f);
    }

    public final List<fo8> f() {
        return this.b;
    }

    public final int hashCode() {
        int iB = e2.b(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        List<fo8> list = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        String str5 = this.f;
        StringBuilder sb = new StringBuilder("TaskGroupedSubResponse(subTitle=");
        sb.append(str);
        sb.append(", tasks=");
        sb.append(list);
        sb.append(", listId=");
        kv2.c(sb, str2, ", rankerVersion=", str3, ", experimentKey=");
        return dg.c(sb, str4, ", experimentVariant=", str5, ")");
    }

    public kn8(String str, List<fo8> list, String str2, String str3, String str4, String str5) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }
}
