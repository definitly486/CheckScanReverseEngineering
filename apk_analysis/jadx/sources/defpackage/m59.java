package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class m59<Model> implements nc5<Model, Model> {
    public static final m59<?> a = new m59<>();

    public static class a<Model> implements oc5<Model, Model> {
        public static final a<?> a = new a<>();

        @Override // defpackage.oc5
        public final nc5<Model, Model> d(if5 if5Var) {
            return m59.a;
        }
    }

    public static class b<Model> implements s82<Model> {
        public final Model b;

        public b(Model model) {
            this.b = model;
        }

        @Override // defpackage.s82
        public final Class<Model> a() {
            return (Class<Model>) this.b.getClass();
        }

        @Override // defpackage.s82
        public final void b() {
        }

        @Override // defpackage.s82
        public final y82 c() {
            return y82.LOCAL;
        }

        @Override // defpackage.s82
        public final void cancel() {
        }

        @Override // defpackage.s82
        public final void f(jg6 jg6Var, s82.a<? super Model> aVar) {
            aVar.d(this.b);
        }
    }

    @Override // defpackage.nc5
    public final nc5.a<Model> a(Model model, int i, int i2, xz5 xz5Var) {
        return new nc5.a<>(new oq5(model), new b(model));
    }

    @Override // defpackage.nc5
    public final boolean b(Model model) {
        return true;
    }
}
