package androidx.paging;

import androidx.compose.ui.spatial.RectListKt;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j44;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.CachedPageEventFlow$sharedForDownstream$1", f = "CachedPageEventFlow.kt", l = {RectListKt.BitOffsetForFocusable, 66}, m = "invokeSuspend", v = 1)
public final class CachedPageEventFlow$sharedForDownstream$1<T> extends pg8 implements bm3<id3<? super j44<? extends PageEvent<T>>>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ CachedPageEventFlow<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPageEventFlow$sharedForDownstream$1(CachedPageEventFlow<T> cachedPageEventFlow, e02<? super CachedPageEventFlow$sharedForDownstream$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cachedPageEventFlow;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CachedPageEventFlow$sharedForDownstream$1 cachedPageEventFlow$sharedForDownstream$1 = new CachedPageEventFlow$sharedForDownstream$1(this.this$0, e02Var);
        cachedPageEventFlow$sharedForDownstream$1.L$0 = obj;
        return cachedPageEventFlow$sharedForDownstream$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super j44<? extends PageEvent<T>>> id3Var, e02<? super j59> e02Var) {
        return ((CachedPageEventFlow$sharedForDownstream$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[LOOP:0: B:14:0x0053->B:24:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (r5 == r0) goto L18;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L27
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L18
            java.lang.Object r1 = r4.L$1
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r3 = r4.L$0
            id3 r3 = (defpackage.id3) r3
            defpackage.r57.b(r5)
            goto L53
        L18:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L1f:
            java.lang.Object r1 = r4.L$0
            id3 r1 = (defpackage.id3) r1
            defpackage.r57.b(r5)
            goto L40
        L27:
            defpackage.r57.b(r5)
            java.lang.Object r5 = r4.L$0
            r1 = r5
            id3 r1 = (defpackage.id3) r1
            androidx.paging.CachedPageEventFlow<T> r5 = r4.this$0
            androidx.paging.FlattenedPageController r5 = androidx.paging.CachedPageEventFlow.access$getPageController$p(r5)
            r4.L$0 = r1
            r4.label = r3
            java.lang.Object r5 = r5.getStateAsEvents(r4)
            if (r5 != r0) goto L40
            goto L6b
        L40:
            java.util.List r5 = (java.util.List) r5
            androidx.paging.CachedPageEventFlow<T> r3 = r4.this$0
            mb4 r3 = androidx.paging.CachedPageEventFlow.access$getJob$p(r3)
            r3.start()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.Iterator r5 = r5.iterator()
            r3 = r1
            r1 = r5
        L53:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L6c
            java.lang.Object r5 = r1.next()
            j44 r5 = (defpackage.j44) r5
            r4.L$0 = r3
            r4.L$1 = r1
            r4.label = r2
            java.lang.Object r5 = r3.emit(r5, r4)
            if (r5 != r0) goto L53
        L6b:
            return r0
        L6c:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPageEventFlow$sharedForDownstream$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
