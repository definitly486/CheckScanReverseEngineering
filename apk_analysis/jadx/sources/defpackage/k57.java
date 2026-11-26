package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class k57<T> implements Serializable {
    public final Object b;

    public static final class a implements Serializable {
        public final Throwable b;

        public a(Throwable th) {
            th.getClass();
            this.b = th;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return aa4.e(this.b, ((a) obj).b);
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "Failure(" + this.b + ')';
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).b;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k57) {
            return aa4.e(this.b, ((k57) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.b;
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Success(" + obj + ')';
    }
}
