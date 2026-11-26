package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface tx0 {
    public static final ch2 a = new ch2();

    public static final class a {
        public final vm5 a;

        public a(vm5 vm5Var) {
            this.a = vm5Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            vm5 vm5Var = this.a;
            if (vm5Var != null) {
                return vm5Var.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "ReadResult(request=null, response=" + this.a + ")";
        }
    }

    b a(vm5 vm5Var, vm5 vm5Var2);

    a b(vm5 vm5Var);

    public static final class b {
        public static final b b = new b();
        public final vm5 a;

        public b() {
            this.a = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return aa4.e(this.a, ((b) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            vm5 vm5Var = this.a;
            if (vm5Var != null) {
                return vm5Var.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "WriteResult(response=" + this.a + ")";
        }

        public b(vm5 vm5Var) {
            this.a = vm5Var;
        }
    }
}
