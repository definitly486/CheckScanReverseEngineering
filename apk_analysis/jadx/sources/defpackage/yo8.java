package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class yo8 {
    public final List<so8> a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public yo8(String str, String str2, String str3, String str4, List list) {
        this.a = list;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public static yo8 a(yo8 yo8Var, ArrayList arrayList) {
        String str = yo8Var.b;
        String str2 = yo8Var.c;
        String str3 = yo8Var.d;
        String str4 = yo8Var.e;
        yo8Var.getClass();
        return new yo8(str, str2, str3, str4, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yo8)) {
            return false;
        }
        yo8 yo8Var = (yo8) obj;
        return this.a.equals(yo8Var.a) && aa4.e(this.b, yo8Var.b) && aa4.e(this.c, yo8Var.c) && aa4.e(this.d, yo8Var.d) && aa4.e(this.e, yo8Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.e;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TasksMainContent(items=");
        sb.append(this.a);
        sb.append(", listId=");
        sb.append(this.b);
        sb.append(", rankerVersion=");
        kv2.c(sb, this.c, ", experimentKey=", this.d, ", experimentVariant=");
        return me0.d(sb, this.e, ")");
    }
}
