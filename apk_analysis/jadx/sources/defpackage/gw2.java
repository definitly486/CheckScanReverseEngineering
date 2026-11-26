package defpackage;

/* JADX INFO: loaded from: classes.dex */
public interface gw2 {

    public static final class a implements gw2 {
        public static final a a = new a();
    }

    public static final class b implements gw2 {
        public static final b a = new b();
    }

    public static final class c implements gw2 {
        public final j3 a;

        public c(j3 j3Var) {
            this.a = j3Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.a.equals(((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "EmailVerified(accountInfo=" + this.a + ")";
        }
    }

    public static final class d implements gw2 {
        public static final d a = new d();
    }
}
