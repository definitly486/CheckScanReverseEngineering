package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class xd4 implements lq7 {
    public final boolean a;

    public xd4(fc4 fc4Var) {
        this.a = fc4Var.g != yk1.NONE;
    }

    @Override // defpackage.lq7
    public final <Base> void a(ne4<Base> ne4Var, nl3<? super Base, ? extends xp7<? super Base>> nl3Var) {
    }

    @Override // defpackage.lq7
    public final <Base> void b(ne4<Base> ne4Var, nl3<? super String, ? extends xl2<? extends Base>> nl3Var) {
    }

    @Override // defpackage.lq7
    public final <Base, Sub extends Base> void c(ne4<Base> ne4Var, ne4<Sub> ne4Var2, df4<Sub> df4Var) {
        sp7 kind = df4Var.getDescriptor().getKind();
        if ((kind instanceof ba6) || aa4.e(kind, sp7.a.a)) {
            h2.d("Serializer for ", ne4Var2.f(), " can't be registered as a subclass for polymorphic serialization because its kind ", kind, " is not concrete. To work with multiple hierarchies, register it as a base class.");
            return;
        }
        if (this.a) {
            if (aa4.e(kind, eb8.b.a) || aa4.e(kind, eb8.c.a) || (kind instanceof dg6) || (kind instanceof sp7.b)) {
                h2.d("Serializer for ", ne4Var2.f(), " of kind ", kind, " cannot be serialized polymorphically with class discriminator.");
            }
        }
    }

    @Override // defpackage.lq7
    public final <T> void e(ne4<T> ne4Var, nl3<? super List<? extends df4<?>>, ? extends df4<?>> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
    }
}
