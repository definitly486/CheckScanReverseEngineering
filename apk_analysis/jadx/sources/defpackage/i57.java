package defpackage;

/* JADX INFO: loaded from: classes.dex */
public interface i57<T> {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements i57 {
        public final Throwable a;

        public a(Throwable th) {
            th.getClass();
            this.a = th;
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
            return "Error(exception=" + this.a + ")";
        }
    }

    public static final class b implements i57 {
        public static final b a = new b();
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class c<T> implements i57<T> {
        public final T a;

        public c(T t) {
            this.a = t;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            T t = this.a;
            if (t == null) {
                return 0;
            }
            return t.hashCode();
        }

        public final String toString() {
            return ch.c(this.a, "Success(data=", ")");
        }
    }
}
