package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a40 {
    public final String a;
    public final String b;
    public final String c;
    public final a d;
    public final a e;
    public final Integer f;

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

    public a40(String str, String str2, String str3, a aVar, a aVar2, Integer num, int i) {
        str3 = (i & 4) != 0 ? null : str3;
        aVar2 = (i & 16) != 0 ? null : aVar2;
        num = (i & 32) != 0 ? null : num;
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = aVar2;
        this.f = num;
    }
}
