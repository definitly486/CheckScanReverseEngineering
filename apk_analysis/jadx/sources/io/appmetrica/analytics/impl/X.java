package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.ll3;
import defpackage.me0;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.impl.X;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class X implements Oa {
    public final Context a;
    public final ICommonExecutor b;
    public final K f;
    public final K g;
    public final K h;
    public FutureTask i;
    public final O l;
    public L n;
    public boolean o;
    public final String c = "advertising identifiers collecting is forbidden by client configuration";
    public final String d = "advertising identifiers collecting is forbidden by startup";
    public final String e = "advertising identifiers collecting is forbidden by unknown reason";
    public final cl4 j = new fh8(new T(this));
    public final long k = 90;
    public volatile AdvertisingIdsHolder m = new AdvertisingIdsHolder();

    /* JADX WARN: Multi-variable type inference failed */
    public X(Context context, ICommonExecutor iCommonExecutor, C1341vm c1341vm) {
        this.a = context;
        this.b = iCommonExecutor;
        int i = 2;
        this.f = new K(new Bg("google", null, i, 0 == true ? 1 : 0));
        this.g = new K(new Bg("huawei", 0 == true ? 1 : 0, i, 0 == true ? 1 : 0));
        this.h = new K(new Bg("yandex", 0 == true ? 1 : 0, i, 0 == true ? 1 : 0));
        this.l = new O(c1341vm);
        M m = M.UNKNOWN;
        this.n = new L(m, m, m);
    }

    public static final Void f(X x) {
        x.m = new AdvertisingIdsHolder(x.a(x.n.a, new U(x)), x.a(x.n.b, new V(x)), x.a(x.n.c, new W(x, new C1049ke())));
        x.b.executeDelayed((FutureTask) x.j.getValue(), x.k, TimeUnit.SECONDS);
        return null;
    }

    public static final Void g(X x) {
        x.b();
        return null;
    }

    public final void a() {
        L lA = this.l.a();
        if (!aa4.e(lA, this.n)) {
            this.b.remove((FutureTask) this.j.getValue());
            this.n = lA;
            this.i = new FutureTask(new Callable() { // from class: pl9
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return X.g(this.b);
                }
            });
        }
        ICommonExecutor iCommonExecutor = this.b;
        FutureTask futureTask = this.i;
        if (futureTask == null) {
            aa4.j("blockingRefreshTask");
            throw null;
        }
        iCommonExecutor.execute(futureTask);
        if (this.i != null) {
            return;
        }
        aa4.j("blockingRefreshTask");
        throw null;
    }

    public final void b() {
        AdTrackingInfoResult adTrackingInfoResultA = a(this.n.a, new U(this));
        AdTrackingInfoResult google = this.m.getGoogle();
        IdentifierStatus identifierStatus = adTrackingInfoResultA.mStatus;
        IdentifierStatus identifierStatus2 = IdentifierStatus.UNKNOWN;
        if (identifierStatus == identifierStatus2) {
            adTrackingInfoResultA = new AdTrackingInfoResult(google.mAdTrackingInfo, identifierStatus, adTrackingInfoResultA.mErrorExplanation);
        }
        AdTrackingInfoResult adTrackingInfoResultA2 = a(this.n.b, new V(this));
        AdTrackingInfoResult huawei = this.m.getHuawei();
        IdentifierStatus identifierStatus3 = adTrackingInfoResultA2.mStatus;
        if (identifierStatus3 == identifierStatus2) {
            adTrackingInfoResultA2 = new AdTrackingInfoResult(huawei.mAdTrackingInfo, identifierStatus3, adTrackingInfoResultA2.mErrorExplanation);
        }
        AdTrackingInfoResult adTrackingInfoResultA3 = a(this.n.c, new W(this, new Xn(3, 500)));
        AdTrackingInfoResult yandex = this.m.getYandex();
        IdentifierStatus identifierStatus4 = adTrackingInfoResultA3.mStatus;
        if (identifierStatus4 == identifierStatus2) {
            adTrackingInfoResultA3 = new AdTrackingInfoResult(yandex.mAdTrackingInfo, identifierStatus4, adTrackingInfoResultA3.mErrorExplanation);
        }
        this.m = new AdvertisingIdsHolder(adTrackingInfoResultA, adTrackingInfoResultA2, adTrackingInfoResultA3);
        this.b.executeDelayed((FutureTask) this.j.getValue(), this.k, TimeUnit.SECONDS);
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final synchronized void c(boolean z) {
        if (!this.o) {
            b(z);
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsProvider
    public final synchronized AdvertisingIdsHolder getIdentifiers() {
        FutureTask futureTask = this.i;
        if (futureTask == null) {
            aa4.j("blockingRefreshTask");
            throw null;
        }
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.m;
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final synchronized void init() {
        if (this.i == null) {
            this.n = this.l.a();
            FutureTask futureTask = new FutureTask(new Callable() { // from class: ol9
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return X.f(this.b);
                }
            });
            this.i = futureTask;
            this.b.execute(futureTask);
        }
    }

    @Override // io.appmetrica.analytics.impl.Oa, io.appmetrica.analytics.impl.Am
    public final synchronized void a(C1341vm c1341vm) {
        this.l.a(c1341vm);
        a();
    }

    public final AdTrackingInfoResult a(M m, ll3 ll3Var) {
        int iOrdinal = m.ordinal();
        if (iOrdinal == 0) {
            return (AdTrackingInfoResult) ll3Var.invoke();
        }
        if (iOrdinal == 1) {
            return new AdTrackingInfoResult(null, IdentifierStatus.FORBIDDEN_BY_CLIENT_CONFIG, this.c);
        }
        if (iOrdinal == 2) {
            return new AdTrackingInfoResult(null, IdentifierStatus.FEATURE_DISABLED, this.d);
        }
        if (iOrdinal == 3) {
            return new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, this.e);
        }
        me0.e();
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Oa
    public final synchronized void b(boolean z) {
        this.o = true;
        this.l.b.update(z);
        a();
    }
}
