package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class fd2<Target> implements x83<Target> {
    public final d93<Target, ed2> a;
    public final List<Integer> b;

    public /* synthetic */ class a extends qm3 implements nl3<Target, ed2> {
        @Override // defpackage.nl3
        public final ed2 invoke(Object obj) {
            return (ed2) ((d3) this.receiver).b(obj);
        }
    }

    public fd2(d93 d93Var, List list) {
        d93Var.getClass();
        this.a = d93Var;
        this.b = list;
    }

    @Override // defpackage.x83
    public final vi3<Target> a() {
        return new gd2(new a(1, this.a.a(), d3.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0), this.b);
    }

    @Override // defpackage.x83
    public final a46<Target> b() {
        d93<Target, ed2> d93Var = this.a;
        return new a46<>(u96.h(new hq5(u96.h(new tj3(d93Var.a(), d93Var.getName())))), kx2.b);
    }

    @Override // defpackage.x83
    public final d93<Target, ed2> c() {
        return this.a;
    }
}
