package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ob0<T> {

    public static final class a<T> extends ob0<T> {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return me0.c("Error(message=", this.a, ")");
        }
    }

    public static final class b<T> extends ob0<T> {
        public final T a;

        /* JADX WARN: Multi-variable type inference failed */
        public b(String str) {
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
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
