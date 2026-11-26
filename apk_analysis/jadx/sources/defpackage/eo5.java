package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class eo5 extends b0 implements mb4 {
    public static final eo5 c = new eo5(mb4.a.b);

    @Override // defpackage.mb4
    @ul2
    public final gi1 V(sb4 sb4Var) {
        return go5.b;
    }

    @Override // defpackage.mb4
    @ul2
    public final hp2 a(boolean z, boolean z2, pb4 pb4Var) {
        return go5.b;
    }

    @Override // defpackage.mb4, defpackage.qz6
    @ul2
    public final void cancel(CancellationException cancellationException) {
    }

    @Override // defpackage.mb4
    @ul2
    public final Object e0(e02<? super j59> e02Var) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // defpackage.mb4
    @ul2
    public final hp2 g(nl3<? super Throwable, j59> nl3Var) {
        return go5.b;
    }

    @Override // defpackage.mb4
    public final boolean isActive() {
        return true;
    }

    @Override // defpackage.mb4
    public final boolean isCancelled() {
        return false;
    }

    @Override // defpackage.mb4
    public final vl7 p() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // defpackage.mb4
    @ul2
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }

    @Override // defpackage.mb4
    public final zo7<mb4> v() {
        return nx2.a;
    }

    @Override // defpackage.mb4
    @ul2
    public final CancellationException y() {
        throw new IllegalStateException("This job is always active");
    }
}
