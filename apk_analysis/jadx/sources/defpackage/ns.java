package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public interface ns {
    public static final a a = new a();

    public static final class a implements ns {
        @Override // defpackage.ns
        public final boolean equals(Object obj, Object obj2) {
            if (this == obj2) {
                return true;
            }
            if (!(obj instanceof b24) || !(obj2 instanceof b24)) {
                return aa4.e(obj, obj2);
            }
            b24 b24Var = (b24) obj;
            b24 b24Var2 = (b24) obj2;
            return aa4.e(b24Var.a, b24Var2.a) && aa4.e(b24Var.b, b24Var2.b) && b24Var.d.equals(b24Var2.d) && aa4.e(b24Var.o, b24Var2.o) && b24Var.p == b24Var2.p && b24Var.q == b24Var2.q;
        }

        @Override // defpackage.ns
        public final int hashCode(Object obj) {
            if (!(obj instanceof b24)) {
                if (obj != null) {
                    return obj.hashCode();
                }
                return 0;
            }
            b24 b24Var = (b24) obj;
            return b24Var.q.hashCode() + ((b24Var.p.hashCode() + ((b24Var.o.hashCode() + k.c(b24Var.d, (b24Var.b.hashCode() + (b24Var.a.hashCode() * 31)) * 961, 961)) * 31)) * 31);
        }

        public final String toString() {
            return "AsyncImageModelEqualityDelegate.Default";
        }
    }

    boolean equals(Object obj, Object obj2);

    int hashCode(Object obj);
}
