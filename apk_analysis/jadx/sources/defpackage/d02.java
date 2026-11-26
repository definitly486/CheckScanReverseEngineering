package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d02 {

    public static final class a extends d02 {
        public final df4<?> a;

        public a(df4<?> df4Var) {
            df4Var.getClass();
            this.a = df4Var;
        }

        @Override // defpackage.d02
        public final df4<?> a(List<? extends df4<?>> list) {
            return this.a;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof a) && aa4.e(((a) obj).a, this.a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    public static final class b extends d02 {
        public final nl3<List<? extends df4<?>>, df4<?>> a;

        /* JADX WARN: Multi-variable type inference failed */
        public b(nl3<? super List<? extends df4<?>>, ? extends df4<?>> nl3Var) {
            nl3Var.getClass();
            this.a = nl3Var;
        }

        @Override // defpackage.d02
        public final df4<?> a(List<? extends df4<?>> list) {
            return this.a.invoke(list);
        }
    }

    public abstract df4<?> a(List<? extends df4<?>> list);
}
