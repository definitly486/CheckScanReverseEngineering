package defpackage;

import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zi3 implements cm1 {
    @Override // defpackage.cm1
    public final void a(int i) {
        ((p94.c.a) this).b.a(i);
    }

    @Override // defpackage.cm1
    public final void b(int i) {
        ((p94.c.a) this).b.b(i);
    }

    @Override // defpackage.e98
    public final void c(qu1 qu1Var) {
        ((p94.c.a) this).b.c(qu1Var);
    }

    @Override // defpackage.e98
    public final void d(InputStream inputStream) {
        ((p94.c.a) this).b.d(inputStream);
    }

    @Override // defpackage.e98
    public final void e() {
        ((p94.c.a) this).b.e();
    }

    @Override // defpackage.cm1
    public final void f(yd2 yd2Var) {
        ((p94.c.a) this).b.f(yd2Var);
    }

    @Override // defpackage.e98
    public final void flush() {
        ((p94.c.a) this).b.flush();
    }

    @Override // defpackage.cm1
    public final void g(xc2 xc2Var) {
        ((p94.c.a) this).b.g(xc2Var);
    }

    @Override // defpackage.cm1
    public final void h() {
        ((p94.c.a) this).b.h();
    }

    @Override // defpackage.e98
    public final boolean isReady() {
        return ((p94.c.a) this).b.isReady();
    }

    @Override // defpackage.cm1
    public final void j(h88 h88Var) {
        ((p94.c.a) this).b.j(h88Var);
    }

    @Override // defpackage.cm1
    public final void l(y54 y54Var) {
        ((p94.c.a) this).b.l(y54Var);
    }

    @Override // defpackage.e98
    public final void m() {
        ((p94.c.a) this).b.m();
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(((p94.c.a) this).b, "delegate");
        return aVarB.toString();
    }
}
