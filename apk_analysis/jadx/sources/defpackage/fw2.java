package defpackage;

/* JADX INFO: loaded from: classes.dex */
public interface fw2 {

    public static final class a implements fw2 {
        public final String a;

        public a(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("ChangePossible(email=", this.a, ")");
        }
    }

    public static final class b implements fw2 {
        public static final b a = new b();
    }

    public static final class c implements fw2 {
        public static final c a = new c();
    }

    public static final class d implements fw2 {
        public static final d a = new d();
    }
}
