package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d46<ReqT, RespT> extends rl1<ReqT, RespT> {
    @Override // defpackage.rl1
    public void a(String str, Throwable th) {
        f().a(str, th);
    }

    @Override // defpackage.rl1
    public final void b() {
        f().b();
    }

    @Override // defpackage.rl1
    public final void c() {
        f().c();
    }

    public abstract rl1<?, ?> f();

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(f(), "delegate");
        return aVarB.toString();
    }
}
