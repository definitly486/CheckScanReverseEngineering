package androidx.paging;

import defpackage.e02;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: Add missing generic type declarations: [Value, Key] */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class Pager$pageFetcher$1<Key, Value> extends qm3 implements nl3<e02<? super PagingSource<Key, Value>>, Object> {
    public Pager$pageFetcher$1(Object obj) {
        super(1, obj, SuspendingPagingSourceFactory.class, "create", "create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super PagingSource<Key, Value>> e02Var) {
        return ((SuspendingPagingSourceFactory) this.receiver).create(e02Var);
    }
}
