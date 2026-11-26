package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class z74 implements er2 {
    public final er2 a;
    public final f06 b;

    public z74(er2 er2Var, f06 f06Var) {
        this.a = er2Var;
        this.b = f06Var;
    }

    @Override // yads.er2
    public final vz2 a(int i) {
        return this.a.a(i);
    }

    @Override // yads.er2
    public final int b(int i) {
        return this.a.b(i);
    }

    @Override // yads.er2
    public final int c(int i) {
        return this.a.c(i);
    }

    @Override // yads.er2
    public final vz2 d() {
        return this.a.d();
    }

    @Override // yads.er2
    public final int e() {
        return this.a.e();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z74)) {
            return false;
        }
        z74 z74Var = (z74) obj;
        return this.a.equals(z74Var.a) && this.b.equals(z74Var.b);
    }

    @Override // yads.er2
    public final int f() {
        return this.a.f();
    }

    @Override // yads.er2
    public final Object g() {
        return this.a.g();
    }

    @Override // yads.er2
    public final void h() {
        this.a.h();
    }

    public final int hashCode() {
        return this.a.hashCode() + ((this.b.hashCode() + 527) * 31);
    }

    @Override // yads.er2
    public final void i() {
        this.a.i();
    }

    @Override // yads.er2
    public final int length() {
        return this.a.length();
    }

    @Override // yads.er2
    public final int a(vz2 vz2Var) {
        return this.a.a(vz2Var);
    }

    @Override // yads.er2
    public final void b() {
        this.a.b();
    }

    @Override // yads.er2
    public final f06 c() {
        return this.b;
    }

    @Override // yads.er2
    public final void a() {
        this.a.a();
    }

    @Override // yads.er2
    public final boolean b(int i, long j) {
        return this.a.b(i, j);
    }

    @Override // yads.er2
    public final void a(float f) {
        this.a.a(f);
    }

    @Override // yads.er2
    public final void a(boolean z) {
        this.a.a(z);
    }

    @Override // yads.er2
    public final void a(long j, long j2, long j3, List list, ly3[] ly3VarArr) {
        this.a.a(j, j2, j3, list, ly3VarArr);
    }

    @Override // yads.er2
    public final int a(long j, List list) {
        return this.a.a(j, list);
    }

    @Override // yads.er2
    public final boolean a(long j, cz czVar, List list) {
        return this.a.a(j, czVar, list);
    }

    @Override // yads.er2
    public final boolean a(int i, long j) {
        return this.a.a(i, j);
    }
}
