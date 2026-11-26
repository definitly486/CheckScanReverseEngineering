package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface hn2 {

    public static final class a implements hn2 {
        public final int a;

        public static void a(int i) {
            if (i > 0) {
                return;
            }
            fg.c("px must be > 0.");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.a == ((a) obj).a;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return kv2.b(this.a, "Pixels(px=", ")");
        }
    }

    public static final class b implements hn2 {
        public static final b a = new b();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof b);
        }

        public final int hashCode() {
            return -2093724603;
        }

        public final String toString() {
            return "Undefined";
        }
    }
}
