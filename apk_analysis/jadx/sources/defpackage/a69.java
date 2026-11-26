package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a69 implements ou5 {
    public final /* synthetic */ s59 a;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ s59 f;
        public final /* synthetic */ nu5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(nu5 nu5Var, s59 s59Var) {
            super(0);
            this.f = s59Var;
            this.g = nu5Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            s59 s59Var = this.f;
            ArrayList arrayList = s59Var.i;
            nu5 nu5Var = this.g;
            if (!arrayList.remove(nu5Var)) {
                s59.c cVar = s59Var.f;
                s59.c.C0329c c0329c = cVar instanceof s59.c.C0329c ? (s59.c.C0329c) cVar : null;
                if (c0329c != null) {
                    if (c0329c.a != nu5Var) {
                        c0329c = null;
                    }
                    if (c0329c != null) {
                        if (c0329c.c) {
                            s59Var.d(c0329c);
                        } else {
                            s68 s68Var = c0329c.d;
                            if (s68Var != null) {
                                s68Var.cancel(null);
                            }
                            if (s59Var.f == c0329c) {
                                s59Var.f = s59.c.a.a;
                                c0329c.b.T(new m69.b(j69.NOT_SHOWN));
                            }
                        }
                    }
                }
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements ll3<j59> {
        public final /* synthetic */ s59 f;
        public final /* synthetic */ nu5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(nu5 nu5Var, s59 s59Var) {
            super(0);
            this.f = s59Var;
            this.g = nu5Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            nu5 nu5Var = this.g;
            this.f.c(nu5Var, new s59.a.b(nu5Var));
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<j59> {
        public final /* synthetic */ s59 f;
        public final /* synthetic */ nu5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(nu5 nu5Var, s59 s59Var) {
            super(0);
            this.f = s59Var;
            this.g = nu5Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            s59 s59Var = this.f;
            ArrayList arrayList = s59Var.i;
            nu5 nu5Var = this.g;
            if (arrayList.contains(nu5Var)) {
                s59Var.a.a();
            } else {
                s59.c cVar = s59Var.f;
                s59.c.C0329c c0329c = cVar instanceof s59.c.C0329c ? (s59.c.C0329c) cVar : null;
                if (c0329c != null) {
                    if (c0329c.a != nu5Var || c0329c.c) {
                        c0329c = null;
                    }
                    if (c0329c != null) {
                        c0329c.c = true;
                        s68 s68Var = c0329c.d;
                        if (s68Var != null) {
                            s68Var.cancel(null);
                        }
                        s59Var.d.a(i69.SHOWN);
                        c0329c.b.T(m69.c.a);
                        c0329c.f = av0.c(s59Var.e, null, null, new z59(null, c0329c, s59Var), 3);
                    }
                }
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public final /* synthetic */ s59 f;
        public final /* synthetic */ nu5 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(nu5 nu5Var, s59 s59Var) {
            super(0);
            this.f = s59Var;
            this.g = nu5Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            this.f.c(this.g, new s59.a.C0328a(j69.REQUEST_FAILED));
            return j59.a;
        }
    }

    public static final class e extends gh4 implements ll3<j59> {
        public final /* synthetic */ nu5 f;
        public final /* synthetic */ s59 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(nu5 nu5Var, s59 s59Var) {
            super(0);
            this.f = nu5Var;
            this.g = s59Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            nu5 nu5Var = this.f;
            if (!nu5Var.b()) {
                this.g.c(nu5Var, new s59.a.C0328a(j69.NO_CONTENT));
            }
            return j59.a;
        }
    }

    public a69(s59 s59Var) {
        this.a = s59Var;
    }

    @Override // defpackage.ou5
    public final void a(nu5 nu5Var) {
        nu5Var.getClass();
        s59 s59Var = this.a;
        s59Var.f(new c(nu5Var, s59Var));
    }

    @Override // defpackage.ou5
    public final void b(nu5 nu5Var) {
        nu5Var.getClass();
        s59 s59Var = this.a;
        s59Var.f(new b(nu5Var, s59Var));
    }

    @Override // defpackage.ou5
    public final void c(nu5 nu5Var) {
        nu5Var.getClass();
        s59 s59Var = this.a;
        s59Var.f(new a(nu5Var, s59Var));
    }

    @Override // defpackage.ou5
    public final void d(nu5 nu5Var) {
        nu5Var.getClass();
        s59 s59Var = this.a;
        s59Var.f(new e(nu5Var, s59Var));
    }

    @Override // defpackage.ou5
    public final void e(nu5 nu5Var) {
        nu5Var.getClass();
        s59 s59Var = this.a;
        s59Var.f(new d(nu5Var, s59Var));
    }
}
