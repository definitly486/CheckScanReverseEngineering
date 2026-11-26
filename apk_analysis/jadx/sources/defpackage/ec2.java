package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ec2 implements k92, hu8, ea9, m02<ec2> {
    public final b44 a;
    public final d44 b;
    public final f44 c;
    public String d;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ec2(int i) {
        int i2 = 0;
        this(new b44(i2), new d44(i2), new f44(null, null, null, null), null);
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

    @Override // defpackage.ea9
    public final void c(Boolean bool) {
        this.c.a = bool;
    }

    @Override // defpackage.m02
    public final ec2 copy() {
        b44 b44VarCopy = this.a.copy();
        d44 d44VarCopy = this.b.copy();
        f44 f44Var = this.c;
        return new ec2(b44VarCopy, d44VarCopy, new f44(f44Var.a, f44Var.b, f44Var.c, f44Var.d), this.d);
    }

    @Override // defpackage.ea9
    public final void d(Integer num) {
        this.c.c = num;
    }

    @Override // defpackage.hu8
    public final void e(Integer num) {
        this.b.e = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ec2)) {
            return false;
        }
        ec2 ec2Var = (ec2) obj;
        return aa4.e(ec2Var.a, this.a) && aa4.e(ec2Var.b, this.b) && aa4.e(ec2Var.c, this.c) && aa4.e(ec2Var.d, this.d);
    }

    @Override // defpackage.ea9
    public final void f(Integer num) {
        this.c.b = num;
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

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ this.b.hashCode()) ^ this.c.hashCode();
        String str = this.d;
        return (str != null ? str.hashCode() : 0) ^ iHashCode;
    }

    @Override // defpackage.hu8
    public final void i(Integer num) {
        this.b.b = num;
    }

    @Override // defpackage.ea9
    public final Boolean isNegative() {
        return this.c.a;
    }

    @Override // defpackage.ea9
    public final Integer j() {
        return this.c.d;
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

    @Override // defpackage.ea9
    public final Integer p() {
        return this.c.b;
    }

    @Override // defpackage.ea9
    public final Integer q() {
        return this.c.c;
    }

    @Override // defpackage.hu8
    public final Integer r() {
        return this.b.e;
    }

    @Override // defpackage.k92
    public final void s(Integer num) {
        this.a.e = num;
    }

    @Override // defpackage.ea9
    public final void t(Integer num) {
        this.c.d = num;
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

    public ec2(b44 b44Var, d44 d44Var, f44 f44Var, String str) {
        this.a = b44Var;
        this.b = d44Var;
        this.c = f44Var;
        this.d = str;
    }

    public ec2() {
        this(0);
    }
}
