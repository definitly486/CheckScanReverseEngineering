package defpackage;

import io.grpc.h;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public abstract class kj3 extends h.e {
    @Override // io.grpc.h.e
    public h.j a(h.b bVar) {
        return g().a(bVar);
    }

    @Override // io.grpc.h.e
    public final n91 b() {
        return g().b();
    }

    @Override // io.grpc.h.e
    public final ScheduledExecutorService c() {
        return g().c();
    }

    @Override // io.grpc.h.e
    public final ch8 d() {
        return g().d();
    }

    @Override // io.grpc.h.e
    public final void e() {
        g().e();
    }

    public abstract h.e g();

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(g(), "delegate");
        return aVarB.toString();
    }
}
