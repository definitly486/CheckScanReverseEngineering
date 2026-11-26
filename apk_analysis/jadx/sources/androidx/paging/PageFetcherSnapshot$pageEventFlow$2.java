package androidx.paging;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$2", f = "PageFetcherSnapshot.kt", l = {694, 194}, m = "invokeSuspend", v = 1)
public final class PageFetcherSnapshot$pageEventFlow$2<Value> extends pg8 implements bm3<id3<? super PageEvent<Value>>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$pageEventFlow$2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super PageFetcherSnapshot$pageEventFlow$2> e02Var) {
        super(2, e02Var);
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcherSnapshot$pageEventFlow$2 pageFetcherSnapshot$pageEventFlow$2 = new PageFetcherSnapshot$pageEventFlow$2(this.this$0, e02Var);
        pageFetcherSnapshot$pageEventFlow$2.L$0 = obj;
        return pageFetcherSnapshot$pageEventFlow$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super PageEvent<Value>> id3Var, e02<? super j59> e02Var) {
        return ((PageFetcherSnapshot$pageEventFlow$2) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
    
        if (r1.emit(r2, r6) == r0) goto L17;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 1
            r3 = 2
            r4 = 0
            if (r1 == 0) goto L27
            if (r1 == r2) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r7)
            goto L6c
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r4
        L17:
            java.lang.Object r1 = r6.L$2
            id3 r1 = (defpackage.id3) r1
            java.lang.Object r2 = r6.L$1
            yg5 r2 = (defpackage.yg5) r2
            java.lang.Object r5 = r6.L$0
            androidx.paging.PageFetcherSnapshotState$Holder r5 = (androidx.paging.PageFetcherSnapshotState.Holder) r5
            defpackage.r57.b(r7)
            goto L49
        L27:
            defpackage.r57.b(r7)
            java.lang.Object r7 = r6.L$0
            r1 = r7
            id3 r1 = (defpackage.id3) r1
            androidx.paging.PageFetcherSnapshot<Key, Value> r7 = r6.this$0
            androidx.paging.PageFetcherSnapshotState$Holder r5 = androidx.paging.PageFetcherSnapshot.access$getStateHolder$p(r7)
            yg5 r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getLock$p(r5)
            r6.L$0 = r5
            r6.L$1 = r7
            r6.L$2 = r1
            r6.label = r2
            java.lang.Object r2 = r7.lock(r4, r6)
            if (r2 != r0) goto L48
            goto L6b
        L48:
            r2 = r7
        L49:
            androidx.paging.PageFetcherSnapshotState r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getState$p(r5)     // Catch: java.lang.Throwable -> L6f
            androidx.paging.MutableLoadStateCollection r7 = r7.getSourceLoadStates$paging_common()     // Catch: java.lang.Throwable -> L6f
            androidx.paging.LoadStates r7 = r7.snapshot()     // Catch: java.lang.Throwable -> L6f
            r2.unlock(r4)
            androidx.paging.PageEvent$LoadStateUpdate r2 = new androidx.paging.PageEvent$LoadStateUpdate
            r2.<init>(r7, r4, r3, r4)
            r6.L$0 = r4
            r6.L$1 = r4
            r6.L$2 = r4
            r6.label = r3
            java.lang.Object r6 = r1.emit(r2, r6)
            if (r6 != r0) goto L6c
        L6b:
            return r0
        L6c:
            j59 r6 = defpackage.j59.a
            return r6
        L6f:
            r6 = move-exception
            r2.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$pageEventFlow$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
