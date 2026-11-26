package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class q6 implements o6 {
    public final String a;
    public final List<xp6> b;
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

    public q6(String str, List<xp6> list, String str2, String str3, String str4, a aVar, a aVar2) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = list;
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
        if (!(obj instanceof q6)) {
            return false;
        }
        q6 q6Var = (q6) obj;
        return aa4.e(this.a, q6Var.a) && this.b.equals(q6Var.b) && aa4.e(this.c, q6Var.c) && aa4.e(this.d, q6Var.d) && aa4.e(this.e, q6Var.e) && this.f.equals(q6Var.f) && aa4.e(this.g, q6Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(e2.b(this.b, this.a.hashCode() * 31, 31), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (this.f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        a aVar = this.g;
        return iHashCode + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivateSettingsPromocodeSuccess(imageUrl=");
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
