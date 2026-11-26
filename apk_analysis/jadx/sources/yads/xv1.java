package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xv1 extends ji1 {
    public final sv1 a;
    public int b;
    public int c;
    public boolean d;

    public xv1(sv1 sv1Var) {
        this.a = sv1Var;
    }

    @Override // yads.ji1
    public final void a() {
        if (!d46.a()) {
            d46.a.post(new uv1(this));
        } else {
            this.c++;
            b();
        }
    }

    public final void b() {
        if (!d46.a()) {
            d46.a.post(new tv1(this));
            return;
        }
        int i = this.b - 1;
        this.b = i;
        if (i == 0 && this.d) {
            this.a.a(this.c != 0);
        }
    }

    public final void c() {
        if (!d46.a()) {
            d46.a.post(new vv1(this));
            return;
        }
        this.d = true;
        if (this.b == 0) {
            this.a.a(this.c != 0);
        }
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        b();
    }
}
