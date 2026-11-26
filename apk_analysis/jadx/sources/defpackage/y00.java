package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface y00 {

    public interface a {
        void handleErrorAlfaIdLink(a40 a40Var);

        void handleSuccessAlfaIdLink(String str);
    }

    public static final class b implements y00 {
        public final a40 a;

        public b(a40 a40Var) {
            this.a = a40Var;
        }

        @Override // defpackage.y00
        public final void a(a aVar) {
            aVar.handleErrorAlfaIdLink(this.a);
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
            return "Fail(data=" + this.a + ")";
        }
    }

    public static final class c implements y00 {
        public final String a;

        public c(String str) {
            str.getClass();
            this.a = str;
        }

        @Override // defpackage.y00
        public final void a(a aVar) {
            aVar.handleSuccessAlfaIdLink(this.a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && aa4.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("Success(link=", this.a, ")");
        }
    }

    void a(a aVar);
}
