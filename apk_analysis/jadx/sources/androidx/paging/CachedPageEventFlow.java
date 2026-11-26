package androidx.paging;

import defpackage.av0;
import defpackage.bt7;
import defpackage.by0;
import defpackage.c32;
import defpackage.cu0;
import defpackage.hd3;
import defpackage.j44;
import defpackage.j59;
import defpackage.mb4;
import defpackage.s68;
import defpackage.tb7;
import defpackage.vb8;
import defpackage.vg5;
import defpackage.y22;
import defpackage.ys7;
import defpackage.zs7;

/* JADX INFO: loaded from: classes3.dex */
public final class CachedPageEventFlow<T> {
    private final hd3<PageEvent<T>> downstreamFlow;
    private final mb4 job;
    private final vg5<j44<PageEvent<T>>> mutableSharedSrc;
    private final FlattenedPageController<T> pageController;
    private final ys7<j44<PageEvent<T>>> sharedForDownstream;

    public CachedPageEventFlow(hd3<? extends PageEvent<T>> hd3Var, y22 y22Var) {
        hd3Var.getClass();
        y22Var.getClass();
        this.pageController = new FlattenedPageController<>();
        zs7 zs7VarA = bt7.a(1, Integer.MAX_VALUE, cu0.SUSPEND);
        this.mutableSharedSrc = zs7VarA;
        this.sharedForDownstream = new vb8(zs7VarA, new CachedPageEventFlow$sharedForDownstream$1(this, null));
        s68 s68VarC = av0.c(y22Var, null, c32.LAZY, new CachedPageEventFlow$job$1(hd3Var, this, null), 1);
        s68VarC.g(new by0(this, 0));
        this.job = s68VarC;
        this.downstreamFlow = new tb7(new CachedPageEventFlow$downstreamFlow$1(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 job$lambda$0$0(CachedPageEventFlow cachedPageEventFlow, Throwable th) {
        cachedPageEventFlow.mutableSharedSrc.e(null);
        return j59.a;
    }

    public final void close() {
        this.job.cancel(null);
    }

    public final PageEvent.Insert<T> getCachedEvent$paging_common() {
        return this.pageController.getCachedEvent();
    }

    public final hd3<PageEvent<T>> getDownstreamFlow() {
        return this.downstreamFlow;
    }
}
