package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface a41 {

    public static final class a implements a41 {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a.equals(((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("Finally(link=", this.a, ")");
        }
    }

    public static final class b implements a41 {
        public static final b a = new b();
    }
}
