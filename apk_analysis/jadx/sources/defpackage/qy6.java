package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class qy6 implements qn2 {
    public final w93 a;
    public final vn2 b;

    public static final class a implements qn2.b {
        public final vn2.a a;

        public a(vn2.a aVar) {
            this.a = aVar;
        }

        @Override // qn2.b
        public final b a() {
            vn2.c cVarE;
            vn2.a aVar = this.a;
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                aVar.a(true);
                cVarE = vn2Var.e(aVar.a.a);
            }
            if (cVarE != null) {
                return new b(cVarE);
            }
            return null;
        }

        @Override // qn2.b
        public final void abort() {
            this.a.a(false);
        }
    }

    public static final class b implements qn2.c {
        public final vn2.c b;

        public b(vn2.c cVar) {
            this.b = cVar;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.b.close();
        }

        @Override // qn2.c
        public final j46 getData() {
            vn2.c cVar = this.b;
            if (!cVar.c) {
                return cVar.b.c.get(1);
            }
            ah.f("snapshot is closed");
            return null;
        }

        @Override // qn2.c
        public final j46 getMetadata() {
            vn2.c cVar = this.b;
            if (!cVar.c) {
                return cVar.b.c.get(0);
            }
            ah.f("snapshot is closed");
            return null;
        }

        @Override // qn2.c
        public final a l0() {
            vn2.a aVarB;
            vn2.c cVar = this.b;
            vn2 vn2Var = vn2.this;
            synchronized (vn2Var.i) {
                cVar.close();
                aVarB = vn2Var.b(cVar.b.a);
            }
            if (aVarB != null) {
                return new a(aVarB);
            }
            return null;
        }
    }

    public qy6(long j, o22 o22Var, w93 w93Var, j46 j46Var) {
        this.a = w93Var;
        this.b = new vn2(j, o22Var, w93Var, j46Var);
    }

    @Override // defpackage.qn2
    public final a a(String str) {
        gx0 gx0Var = gx0.e;
        vn2.a aVarB = this.b.b(gx0.a.c(str).e("SHA-256").g());
        if (aVarB != null) {
            return new a(aVarB);
        }
        return null;
    }

    @Override // defpackage.qn2
    public final b b(String str) {
        gx0 gx0Var = gx0.e;
        vn2.c cVarE = this.b.e(gx0.a.c(str).e("SHA-256").g());
        if (cVarE != null) {
            return new b(cVarE);
        }
        return null;
    }

    @Override // defpackage.qn2
    public final w93 getFileSystem() {
        return this.a;
    }
}
