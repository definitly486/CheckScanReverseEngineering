package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$jumpHint$1", f = "PageFetcherSnapshot.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PageFetcherSnapshot$startConsumingHints$1$jumpHint$1 extends pg8 implements bm3<ViewportHint, e02<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$startConsumingHints$1$jumpHint$1(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super PageFetcherSnapshot$startConsumingHints$1$jumpHint$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcherSnapshot$startConsumingHints$1$jumpHint$1 pageFetcherSnapshot$startConsumingHints$1$jumpHint$1 = new PageFetcherSnapshot$startConsumingHints$1$jumpHint$1(this.this$0, e02Var);
        pageFetcherSnapshot$startConsumingHints$1$jumpHint$1.L$0 = obj;
        return pageFetcherSnapshot$startConsumingHints$1$jumpHint$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ViewportHint viewportHint, e02<? super Boolean> e02Var) {
        return ((PageFetcherSnapshot$startConsumingHints$1$jumpHint$1) create(viewportHint, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        ViewportHint viewportHint = (ViewportHint) this.L$0;
        return Boolean.valueOf(viewportHint.getPresentedItemsBefore() * (-1) > ((PageFetcherSnapshot) this.this$0).config.jumpThreshold || viewportHint.getPresentedItemsAfter() * (-1) > ((PageFetcherSnapshot) this.this$0).config.jumpThreshold);
    }
}
