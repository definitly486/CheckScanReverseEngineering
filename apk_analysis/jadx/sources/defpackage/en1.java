package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class en1 implements cs0 {
    public final dn1 a;

    public static final class a extends en1 {
        public final dn1 b;

        public a(dn1 dn1Var) {
            super(dn1Var);
            this.b = dn1Var;
        }

        @Override // defpackage.pz3
        public final Object f() {
            return this.a;
        }

        @Override // defpackage.pz3
        public final Object id() {
            return Integer.valueOf(this.b.a);
        }
    }

    public static final class b extends en1 {
        public final dn1 b;

        public b(dn1 dn1Var) {
            super(dn1Var);
            this.b = dn1Var;
        }

        @Override // defpackage.pz3
        public final Object f() {
            return this.a;
        }

        @Override // defpackage.pz3
        public final Object id() {
            return Integer.valueOf(this.b.a);
        }
    }

    public en1(dn1 dn1Var) {
        this.a = dn1Var;
    }
}
