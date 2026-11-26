package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class y17<T> {
    public final vp5 a;

    public static final class a {
        public final Integer a;
        public final String b;
        public final String c;
        public final String d;

        public a(Integer num, String str, String str2, String str3) {
            this.a = num;
            this.b = str;
            this.c = str2;
            this.d = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.d;
            return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Notification(id=");
            sb.append(this.a);
            sb.append(", title=");
            sb.append(this.b);
            sb.append(", body=");
            return dg.c(sb, this.c, ", imageUrl=", this.d, ")");
        }
    }

    public y17(vp5 vp5Var) {
        this.a = vp5Var;
    }
}
