package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public interface mb4 extends o22.a {

    public static final class a implements o22.b<mb4> {
        public static final /* synthetic */ a b = new a();
    }

    boolean P();

    gi1 V(sb4 sb4Var);

    hp2 a(boolean z, boolean z2, pb4 pb4Var);

    void cancel(CancellationException cancellationException);

    Object e0(e02<? super j59> e02Var);

    hp2 g(nl3<? super Throwable, j59> nl3Var);

    boolean isActive();

    boolean isCancelled();

    vl7 p();

    boolean start();

    zo7<mb4> v();

    CancellationException y();
}
