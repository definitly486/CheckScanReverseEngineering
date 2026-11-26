package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bh6 {

    public static final class a extends bh6 {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str2.getClass();
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
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Affiliated(displayValue=", this.a, ", logoUrl=", this.b, ")");
        }
    }

    public static final class b extends bh6 {
        public static final b a = new b();
    }

    public static final class c extends bh6 {
        public final String a;

        public c(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("NotAffiliated(logoUrl=", this.a, ")");
        }
    }

    public static final class d extends bh6 {
        public static final d a = new d();
    }

    public static final class e extends bh6 {
        public static final e a = new e();
    }
}
