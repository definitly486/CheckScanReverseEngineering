package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class jn8 {
    public final String a;
    public final ArrayList b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public jn8(String str, ArrayList arrayList, String str2, String str3, String str4, String str5) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jn8)) {
            return false;
        }
        jn8 jn8Var = (jn8) obj;
        return aa4.e(this.a, jn8Var.a) && this.b.equals(jn8Var.b) && aa4.e(this.c, jn8Var.c) && aa4.e(this.d, jn8Var.d) && aa4.e(this.e, jn8Var.e) && aa4.e(this.f, jn8Var.f);
    }

    public final int hashCode() {
        int iD = tg.d(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        int iHashCode = (iD + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaskGroupedSubContent(toolbarTitle=");
        sb.append(this.a);
        sb.append(", tasks=");
        sb.append(this.b);
        sb.append(", listId=");
        kv2.c(sb, this.c, ", rankerVersion=", this.d, ", experimentKey=");
        return dg.c(sb, this.e, ", experimentVariant=", this.f, ")");
    }
}
