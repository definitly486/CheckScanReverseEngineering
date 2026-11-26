package androidx.paging;

import defpackage.hd3;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class Pager<Key, Value> {
    private final hd3<PagingData<Value>> flow;
    private final PageFetcher<Key, Value> pageFetcher;

    public Pager(PagingConfig pagingConfig, Key key, RemoteMediator<Key, Value> remoteMediator, ll3<? extends PagingSource<Key, Value>> ll3Var) {
        pagingConfig.getClass();
        ll3Var.getClass();
        PageFetcher<Key, Value> pageFetcher = new PageFetcher<>(ll3Var instanceof SuspendingPagingSourceFactory ? new Pager$pageFetcher$1((SuspendingPagingSourceFactory) ll3Var) : new Pager$pageFetcher$2(ll3Var, null), key, pagingConfig, remoteMediator);
        this.pageFetcher = pageFetcher;
        this.flow = pageFetcher.getFlow();
    }

    public static /* synthetic */ void getFlow$annotations() {
    }

    private static /* synthetic */ void getPageFetcher$annotations() {
    }

    public final void append() {
        this.pageFetcher.load(LoadType.APPEND);
    }

    public final hd3<PagingData<Value>> getFlow() {
        return this.flow;
    }

    public final void prepend() {
        this.pageFetcher.load(LoadType.PREPEND);
    }

    public final void refresh(Value value) {
        value.getClass();
        this.pageFetcher.refresh(value);
    }

    public final void retry() {
        this.pageFetcher.retry();
    }

    public final void refresh() {
        this.pageFetcher.refreshAll();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Pager(PagingConfig pagingConfig, ll3<? extends PagingSource<Key, Value>> ll3Var) {
        this(pagingConfig, null, ll3Var, 2, null);
        pagingConfig.getClass();
        ll3Var.getClass();
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, RemoteMediator remoteMediator, ll3 ll3Var, int i, jh2 jh2Var) {
        this(pagingConfig, (i & 2) != 0 ? null : obj, remoteMediator, ll3Var);
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, ll3 ll3Var, int i, jh2 jh2Var) {
        this(pagingConfig, (i & 2) != 0 ? null : obj, ll3Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Pager(PagingConfig pagingConfig, Key key, ll3<? extends PagingSource<Key, Value>> ll3Var) {
        this(pagingConfig, key, null, ll3Var);
        pagingConfig.getClass();
        ll3Var.getClass();
    }
}
