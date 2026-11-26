package yads;

import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jf6 implements hf6 {
    public final k50 a;
    public boolean b;
    public boolean c;

    public jf6(k50 k50Var) {
        this.a = k50Var;
    }

    @Override // yads.hf6
    public final void a(View view, List list) {
        this.a.a(view, list);
        this.b = false;
        this.c = false;
    }

    @Override // yads.hf6
    public final void b() {
        this.a.b();
        k();
    }

    @Override // yads.hf6
    public final void c() {
        this.a.c();
    }

    @Override // yads.hf6
    public final void d() {
        this.a.d();
    }

    @Override // yads.hf6
    public final void f() {
        this.a.f();
    }

    @Override // yads.hf6
    public final void g() {
        this.a.g();
        k();
    }

    @Override // yads.hf6
    public final void h() {
        if (this.b) {
            return;
        }
        this.b = true;
        this.a.h();
    }

    @Override // yads.hf6
    public final void i() {
        this.a.i();
    }

    @Override // yads.hf6
    public final void j() {
        this.a.j();
    }

    @Override // yads.hf6
    public final void k() {
        this.a.k();
        this.b = false;
        this.c = false;
    }

    @Override // yads.hf6
    public final void l() {
        this.a.l();
    }

    @Override // yads.hf6
    public final void m() {
        this.a.m();
        h();
        n();
    }

    @Override // yads.hf6
    public final void n() {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.n();
    }

    @Override // yads.hf6
    public final void a(long j, float f) {
        this.a.a(j, f);
    }

    @Override // yads.hf6
    public final void a() {
        this.a.a();
    }

    @Override // yads.hf6
    public final void a(float f) {
        this.a.a(f);
    }

    @Override // yads.hf6
    public final void a(gf6 gf6Var) {
        this.a.a(gf6Var);
    }

    @Override // yads.hf6
    public final void a(gb6 gb6Var) {
        this.a.a(gb6Var);
        k();
    }
}
