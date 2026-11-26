package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ed3 {
    public final long a;
    public final String b;
    public final String c;
    public final ArrayList d;
    public final boolean e;

    public ed3(long j, String str, String str2, ArrayList arrayList, boolean z) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = arrayList;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ed3)) {
            return false;
        }
        ed3 ed3Var = (ed3) obj;
        return this.a == ed3Var.a && aa4.e(this.b, ed3Var.b) && aa4.e(this.c, ed3Var.c) && this.d.equals(ed3Var.d) && this.e == ed3Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.d(this.d, zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "FloatingButtonInfo(id=", ", deeplink=", this.b);
        sbD.append(", imageUrl=");
        sbD.append(this.c);
        sbD.append(", tabs=");
        sbD.append(this.d);
        sbD.append(", isRegRequired=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
