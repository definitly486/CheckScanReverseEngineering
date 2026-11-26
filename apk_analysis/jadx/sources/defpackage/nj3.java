package defpackage;

import io.grpc.l;

/* JADX INFO: loaded from: classes5.dex */
public abstract class nj3 extends l {
    public final l b;

    public nj3(l lVar) {
        this.b = lVar;
    }

    @Override // io.grpc.l
    public String a() {
        return this.b.a();
    }

    @Override // io.grpc.l
    public final void b() {
        this.b.b();
    }

    @Override // io.grpc.l
    public void c() {
        this.b.c();
    }

    @Override // io.grpc.l
    public void d(l.d dVar) {
        this.b.d(dVar);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.b, "delegate");
        return aVarB.toString();
    }
}
