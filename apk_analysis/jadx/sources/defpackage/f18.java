package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class f18<T> extends lz7<T> {
    public final lz7<T> a;
    public final jo2 b;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ f18<T> f;
        public final /* synthetic */ s08<T> g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f18<T> f18Var, s08<T> s08Var) {
            super(0);
            this.f = f18Var;
            this.g = s08Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.a.a(this.g);
            return j59.a;
        }
    }

    public f18(lz7<T> lz7Var, jo2 jo2Var) {
        jo2Var.getClass();
        this.a = lz7Var;
        this.b = jo2Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        this.b.a(new a(this, s08Var));
    }
}
