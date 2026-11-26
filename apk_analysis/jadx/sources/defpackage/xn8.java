package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface xn8 {

    public static final class a implements xn8 {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            str.getClass();
            this.a = str;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Action(url=" + this.a + ", registerRequired=" + this.b + ")";
        }
    }

    public static final class b implements xn8 {
        public static final b a = new b();
    }
}
