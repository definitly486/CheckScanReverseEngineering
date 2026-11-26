package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c44 implements k92, hu8, m02<c44> {
    public final b44 a;
    public final d44 b;

    public /* synthetic */ c44(int i) {
        this(new b44(0), new d44(0));
    }

    @Override // defpackage.hu8
    public final void A(Integer num) {
        this.b.a = num;
    }

    @Override // defpackage.hu8
    public final Integer a() {
        return this.b.b;
    }

    @Override // defpackage.k92
    public final Integer b() {
        return this.a.d;
    }

    @Override // defpackage.m02
    public final c44 copy() {
        return new c44(this.a.copy(), this.b.copy());
    }

    @Override // defpackage.hu8
    public final void e(Integer num) {
        this.b.e = num;
    }

    @Override // defpackage.hu8
    public final void g(ed2 ed2Var) {
        this.b.g(ed2Var);
    }

    @Override // defpackage.hu8
    public final Integer getHour() {
        return this.b.a;
    }

    @Override // defpackage.hu8
    public final Integer getMinute() {
        return this.b.d;
    }

    @Override // defpackage.hu8
    public final xc h() {
        return this.b.c;
    }

    @Override // defpackage.hu8
    public final void i(Integer num) {
        this.b.b = num;
    }

    @Override // defpackage.k92
    public final Integer k() {
        return this.a.a;
    }

    @Override // defpackage.k92
    public final void l(Integer num) {
        this.a.c = num;
    }

    @Override // defpackage.hu8
    public final void m(xc xcVar) {
        this.b.c = xcVar;
    }

    @Override // defpackage.k92
    public final Integer n() {
        return this.a.b;
    }

    @Override // defpackage.k92
    public final void o(Integer num) {
        this.a.d = num;
    }

    @Override // defpackage.hu8
    public final Integer r() {
        return this.b.e;
    }

    @Override // defpackage.k92
    public final void s(Integer num) {
        this.a.e = num;
    }

    @Override // defpackage.k92
    public final void u(Integer num) {
        this.a.b = num;
    }

    @Override // defpackage.hu8
    public final void v(Integer num) {
        this.b.d = num;
    }

    @Override // defpackage.hu8
    public final ed2 w() {
        return this.b.w();
    }

    @Override // defpackage.k92
    public final Integer x() {
        return this.a.e;
    }

    @Override // defpackage.k92
    public final void y(Integer num) {
        this.a.a = num;
    }

    @Override // defpackage.k92
    public final Integer z() {
        return this.a.c;
    }

    public c44(b44 b44Var, d44 d44Var) {
        this.a = b44Var;
        this.b = d44Var;
    }

    public c44() {
        this(0);
    }
}
