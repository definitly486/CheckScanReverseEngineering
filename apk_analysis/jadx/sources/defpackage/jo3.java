package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface jo3 {

    public static final class a implements jo3 {
        public final kn3 a;

        public a(kn3 kn3Var) {
            kn3Var.getClass();
            this.a = kn3Var;
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
            return "Content(banner=" + this.a + ")";
        }
    }

    public static final class b implements jo3 {
        public static final b a = new b();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof b);
        }

        public final int hashCode() {
            return -602518461;
        }

        public final String toString() {
            return "Failed";
        }
    }

    public static final class c implements jo3 {
        public static final c a = new c();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof c);
        }

        public final int hashCode() {
            return -74962442;
        }

        public final String toString() {
            return "Loading";
        }
    }
}
