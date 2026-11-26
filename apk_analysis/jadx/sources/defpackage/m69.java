package defpackage;

/* JADX INFO: loaded from: classes.dex */
public interface m69 {

    public static final class a implements m69 {
        public static final a a = new a();
    }

    public static final class b implements m69 {
        public final j69 a;

        public b(j69 j69Var) {
            j69Var.getClass();
            this.a = j69Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.a == ((b) obj).a;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Failed(failure=" + this.a + ")";
        }
    }

    public static final class c implements m69 {
        public static final c a = new c();
    }
}
