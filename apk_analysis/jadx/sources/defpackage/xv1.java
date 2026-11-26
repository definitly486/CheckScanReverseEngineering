package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class xv1 {

    public static final class a extends xv1 {
        public static final a a = new a();
    }

    public static final class b extends xv1 {
        public static final b a = new b();
    }

    public static final class c extends xv1 {
        public final int a;

        public c(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.a == ((c) obj).a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return kv2.b(this.a, "Success(codeLength=", ")");
        }
    }

    public static final class d extends xv1 {
        public static final d a = new d();
    }
}
