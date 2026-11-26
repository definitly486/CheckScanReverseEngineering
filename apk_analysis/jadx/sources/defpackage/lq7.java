package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface lq7 {
    <Base> void a(ne4<Base> ne4Var, nl3<? super Base, ? extends xp7<? super Base>> nl3Var);

    <Base> void b(ne4<Base> ne4Var, nl3<? super String, ? extends xl2<? extends Base>> nl3Var);

    <Base, Sub extends Base> void c(ne4<Base> ne4Var, ne4<Sub> ne4Var2, df4<Sub> df4Var);

    default <T> void d(ne4<T> ne4Var, df4<T> df4Var) {
        df4Var.getClass();
        e(ne4Var, new nu1(df4Var, 2));
    }

    <T> void e(ne4<T> ne4Var, nl3<? super List<? extends df4<?>>, ? extends df4<?>> nl3Var);
}
