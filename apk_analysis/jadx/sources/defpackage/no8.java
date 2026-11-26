package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class no8 implements kk1 {
    public final String a;
    public final ArrayList b;
    public final String c;
    public final String d;
    public final String e;
    public final a f;
    public final a g;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("Button(title=", this.a, ", deeplink=", this.b, ")");
        }
    }

    public no8(String str, ArrayList arrayList, String str2, String str3, String str4, a aVar, a aVar2) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = arrayList;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = aVar;
        this.g = aVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof no8)) {
            return false;
        }
        no8 no8Var = (no8) obj;
        return aa4.e(this.a, no8Var.a) && this.b.equals(no8Var.b) && aa4.e(this.c, no8Var.c) && aa4.e(this.d, no8Var.d) && aa4.e(this.e, no8Var.e) && this.f.equals(no8Var.f) && aa4.e(this.g, no8Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(tg.d(this.b, this.a.hashCode() * 31, 31), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (this.f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        a aVar = this.g;
        return iHashCode + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaskSuccess(imageUrl=");
        sb.append(this.a);
        sb.append(", badges=");
        sb.append(this.b);
        sb.append(", title=");
        kv2.c(sb, this.c, ", subtitle=", this.d, ", description=");
        sb.append(this.e);
        sb.append(", okButton=");
        sb.append(this.f);
        sb.append(", aboutButton=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }
}
