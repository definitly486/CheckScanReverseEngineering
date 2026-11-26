package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcher$flow$1$3$downstreamFlow$1", f = "PageFetcher.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PageFetcher$flow$1$3$downstreamFlow$1<Value> extends pg8 implements bm3<PageEvent<Value>, e02<? super j59>, Object> {
    /* synthetic */ Object L$0;
    int label;

    public PageFetcher$flow$1$3$downstreamFlow$1(e02<? super PageFetcher$flow$1$3$downstreamFlow$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcher$flow$1$3$downstreamFlow$1 pageFetcher$flow$1$3$downstreamFlow$1 = new PageFetcher$flow$1$3$downstreamFlow$1(e02Var);
        pageFetcher$flow$1$3$downstreamFlow$1.L$0 = obj;
        return pageFetcher$flow$1$3$downstreamFlow$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(PageEvent<Value> pageEvent, e02<? super j59> e02Var) {
        return ((PageFetcher$flow$1$3$downstreamFlow$1) create(pageEvent, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        PageEvent pageEvent = (PageEvent) this.L$0;
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(2)) {
            pagingLogger.log(2, "Sent " + pageEvent, null);
        }
        return j59.a;
    }
}
