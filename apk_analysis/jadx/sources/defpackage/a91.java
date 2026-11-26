package defpackage;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.JobCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public class a91<E> extends a0<j59> implements x81<E> {
    public final mu0 f;

    public a91(o22 o22Var, mu0 mu0Var) {
        super(o22Var, true, true);
        this.f = mu0Var;
    }

    @Override // defpackage.qz6
    public final Object b(e02<? super E> e02Var) {
        return this.f.b(e02Var);
    }

    @Override // defpackage.qz6
    public final Object c(co1 co1Var) {
        mu0 mu0Var = this.f;
        mu0Var.getClass();
        Object objC = mu0.C(mu0Var, co1Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objC;
    }

    @Override // defpackage.sb4, defpackage.mb4, defpackage.qz6
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(A(), null, this);
        }
        x(cancellationException);
    }

    @Override // defpackage.no7
    public final boolean close(Throwable th) {
        return this.f.d(th, false);
    }

    @Override // defpackage.no7
    public final xl7<E, no7<E>> getOnSend() {
        return this.f.getOnSend();
    }

    @Override // defpackage.qz6
    public final wl7 h() {
        return this.f.h();
    }

    @Override // defpackage.qz6
    public final Object i() {
        return this.f.i();
    }

    @Override // defpackage.no7
    public final void invokeOnClose(nl3<? super Throwable, j59> nl3Var) {
        this.f.invokeOnClose(nl3Var);
    }

    @Override // defpackage.no7
    public final boolean isClosedForSend() {
        return this.f.isClosedForSend();
    }

    @Override // defpackage.qz6
    public final k91<E> iterator() {
        mu0 mu0Var = this.f;
        mu0Var.getClass();
        return new mu0.a();
    }

    @Override // defpackage.qz6
    public final wl7 l() {
        return this.f.l();
    }

    @Override // defpackage.no7
    @ul2
    public final boolean offer(E e) {
        return this.f.offer(e);
    }

    @Override // defpackage.no7
    public final Object send(E e, e02<? super j59> e02Var) {
        return this.f.send(e, e02Var);
    }

    @Override // defpackage.no7
    /* JADX INFO: renamed from: trySend-JP2dKIU, reason: not valid java name */
    public final Object mo0trySendJP2dKIU(E e) {
        return this.f.mo0trySendJP2dKIU(e);
    }

    @Override // defpackage.sb4
    public final void x(CancellationException cancellationException) {
        this.f.d(cancellationException, true);
        w(cancellationException);
    }
}
