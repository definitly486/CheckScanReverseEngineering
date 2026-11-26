package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class z96 {
    public final String a;
    public final int b;
    public final String c;
    public final List<a> d;
    public boolean e;

    public static final class a {
        public final String a;
        public final int b;
        public final String c;
        public boolean d;

        public a(String str, int i, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = i;
            this.c = str2;
            this.d = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && aa4.e(this.c, aVar.c) && this.d == aVar.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + zg.b(ej0.b(this.b, this.a.hashCode() * 31, 31), 31, this.c);
        }

        public final String toString() {
            boolean z = this.d;
            StringBuilder sbA = mz0.a(this.b, "Variants(event=", this.a, ", id=", ", text=");
            sbA.append(this.c);
            sbA.append(", isChecked=");
            sbA.append(z);
            sbA.append(")");
            return sbA.toString();
        }
    }

    public z96(String str, int i, String str2, ArrayList arrayList) {
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = arrayList;
        this.e = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z96)) {
            return false;
        }
        z96 z96Var = (z96) obj;
        return aa4.e(this.a, z96Var.a) && this.b == z96Var.b && aa4.e(this.c, z96Var.c) && aa4.e(this.d, z96Var.d) && this.e == z96Var.e;
    }

    public final int hashCode() {
        String str = this.a;
        int iB = zg.b(ej0.b(this.b, (str == null ? 0 : str.hashCode()) * 31, 31), 31, this.c);
        List<a> list = this.d;
        return Boolean.hashCode(this.e) + ((iB + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        boolean z = this.e;
        StringBuilder sbA = mz0.a(this.b, "Poll(completeText=", this.a, ", id=", ", title=");
        sbA.append(this.c);
        sbA.append(", variants=");
        sbA.append(this.d);
        sbA.append(", isCompleted=");
        return dh.e(sbA, z, ")");
    }
}
