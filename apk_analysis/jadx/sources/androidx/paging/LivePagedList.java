package androidx.paging;

import androidx.lifecycle.LiveData;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cs4;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.me0;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.y22;
import defpackage.zg0;

/* JADX INFO: loaded from: classes3.dex */
public final class LivePagedList<Key, Value> extends LiveData<PagedList<Value>> {
    private final PagedList.BoundaryCallback<Value> boundaryCallback;
    private final ll3<j59> callback;
    private final PagedList.Config config;
    private final y22 coroutineScope;
    private PagedList<Value> currentData;
    private mb4 currentJob;
    private final r22 fetchDispatcher;
    private final r22 notifyDispatcher;
    private final ll3<PagingSource<Key, Value>> pagingSourceFactory;
    private final Runnable refreshRetryCallback;

    /* JADX INFO: renamed from: androidx.paging.LivePagedList$invalidate$1, reason: invalid class name */
    @bd2(c = "androidx.paging.LivePagedList$invalidate$1", f = "LivePagedList.kt", l = {86, 91}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ LivePagedList<Key, Value> this$0;

        /* JADX INFO: renamed from: androidx.paging.LivePagedList$invalidate$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.LivePagedList$invalidate$1$1", f = "LivePagedList.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class C01011 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            int label;
            final /* synthetic */ LivePagedList<Key, Value> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01011(LivePagedList<Key, Value> livePagedList, e02<? super C01011> e02Var) {
                super(2, e02Var);
                this.this$0 = livePagedList;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C01011(this.this$0, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C01011) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                ((LivePagedList) this.this$0).currentData.setInitialLoadState(LoadType.REFRESH, LoadState.Loading.INSTANCE);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LivePagedList<Key, Value> livePagedList, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = livePagedList;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00a9  */
        /* JADX WARN: Code duplicated, block: B:25:0x00be  */
        /* JADX WARN: Code duplicated, block: B:27:0x00c2  */
        /* JADX WARN: Code duplicated, block: B:28:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:30:0x00dd  */
        /* JADX WARN: Code duplicated, block: B:33:0x011a  */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            PagingSource pagingSource;
            Object obj2;
            PagingSource pagingSource2;
            PagingSource.LoadResult loadResult;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ((LivePagedList) this.this$0).currentData.getPagingSource().unregisterInvalidatedCallback(((LivePagedList) this.this$0).callback);
                PagingSource pagingSource3 = (PagingSource) ((LivePagedList) this.this$0).pagingSourceFactory.invoke();
                pagingSource3.registerInvalidatedCallback(((LivePagedList) this.this$0).callback);
                if (pagingSource3 instanceof LegacyPagingSource) {
                    ((LegacyPagingSource) pagingSource3).setPageSize(((LivePagedList) this.this$0).config.pageSize);
                }
                r22 r22Var = ((LivePagedList) this.this$0).notifyDispatcher;
                C01011 c01011 = new C01011(this.this$0, null);
                this.L$0 = pagingSource3;
                this.label = 1;
                if (av0.d(r22Var, c01011, this) != a32Var) {
                    pagingSource = pagingSource3;
                }
                return a32Var;
            }
            if (i == 1) {
                pagingSource = (PagingSource) this.L$0;
                r57.b(obj);
            } else {
                if (i != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj3 = this.L$1;
                pagingSource = (PagingSource) this.L$0;
                r57.b(obj);
                obj2 = obj3;
            }
            pagingSource2 = pagingSource;
            loadResult = (PagingSource.LoadResult) obj;
            if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                ((LivePagedList) this.this$0).currentData.setInitialLoadState(LoadType.REFRESH, new LoadState.NotLoading(false));
                pagingSource2.invalidate();
            } else if (loadResult instanceof PagingSource.LoadResult.Error) {
                ((LivePagedList) this.this$0).currentData.setInitialLoadState(LoadType.REFRESH, new LoadState.Error(((PagingSource.LoadResult.Error) loadResult).getThrowable()));
            } else {
                if (loadResult instanceof PagingSource.LoadResult.Page) {
                    me0.e();
                    return null;
                }
                PagedList pagedListCreate = PagedList.Companion.create(pagingSource2, (PagingSource.LoadResult.Page) loadResult, ((LivePagedList) this.this$0).coroutineScope, ((LivePagedList) this.this$0).notifyDispatcher, ((LivePagedList) this.this$0).fetchDispatcher, ((LivePagedList) this.this$0).boundaryCallback, ((LivePagedList) this.this$0).config, obj2);
                LivePagedList<Key, Value> livePagedList = this.this$0;
                livePagedList.onItemUpdate(((LivePagedList) livePagedList).currentData, pagedListCreate);
                ((LivePagedList) this.this$0).currentData = pagedListCreate;
                this.this$0.postValue(pagedListCreate);
            }
            return j59.a;
            Object lastKey = ((LivePagedList) this.this$0).currentData.getLastKey();
            PagingSource.LoadParams<Key> refreshLoadParams = PagedListKt.toRefreshLoadParams(((LivePagedList) this.this$0).config, lastKey);
            this.L$0 = pagingSource;
            this.L$1 = lastKey;
            this.label = 2;
            Object objLoad = pagingSource.load(refreshLoadParams, this);
            if (objLoad != a32Var) {
                obj2 = lastKey;
                obj = objLoad;
                pagingSource2 = pagingSource;
                loadResult = (PagingSource.LoadResult) obj;
                if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                    ((LivePagedList) this.this$0).currentData.setInitialLoadState(LoadType.REFRESH, new LoadState.NotLoading(false));
                    pagingSource2.invalidate();
                } else if (loadResult instanceof PagingSource.LoadResult.Error) {
                    ((LivePagedList) this.this$0).currentData.setInitialLoadState(LoadType.REFRESH, new LoadState.Error(((PagingSource.LoadResult.Error) loadResult).getThrowable()));
                } else {
                    if (loadResult instanceof PagingSource.LoadResult.Page) {
                        me0.e();
                        return null;
                    }
                    PagedList pagedListCreate2 = PagedList.Companion.create(pagingSource2, (PagingSource.LoadResult.Page) loadResult, ((LivePagedList) this.this$0).coroutineScope, ((LivePagedList) this.this$0).notifyDispatcher, ((LivePagedList) this.this$0).fetchDispatcher, ((LivePagedList) this.this$0).boundaryCallback, ((LivePagedList) this.this$0).config, obj2);
                    LivePagedList<Key, Value> livePagedList2 = this.this$0;
                    livePagedList2.onItemUpdate(((LivePagedList) livePagedList2).currentData, pagedListCreate2);
                    ((LivePagedList) this.this$0).currentData = pagedListCreate2;
                    this.this$0.postValue(pagedListCreate2);
                }
                return j59.a;
            }
            return a32Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LivePagedList(y22 y22Var, Key key, PagedList.Config config, PagedList.BoundaryCallback<Value> boundaryCallback, ll3<? extends PagingSource<Key, Value>> ll3Var, r22 r22Var, r22 r22Var2) {
        super(new InitialPagedList(y22Var, r22Var, r22Var2, config, key));
        y22Var.getClass();
        config.getClass();
        ll3Var.getClass();
        r22Var.getClass();
        r22Var2.getClass();
        this.coroutineScope = y22Var;
        this.config = config;
        this.boundaryCallback = boundaryCallback;
        this.pagingSourceFactory = ll3Var;
        this.notifyDispatcher = r22Var;
        this.fetchDispatcher = r22Var2;
        this.callback = new zg0(this, 1);
        cs4 cs4Var = new cs4(this, 0);
        this.refreshRetryCallback = cs4Var;
        PagedList<Value> value = getValue();
        value.getClass();
        PagedList<Value> pagedList = value;
        this.currentData = pagedList;
        pagedList.setRetryCallback(cs4Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 callback$lambda$0(LivePagedList livePagedList) {
        livePagedList.invalidate(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidate(boolean z) {
        mb4 mb4Var = this.currentJob;
        if (mb4Var == null || z) {
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.currentJob = av0.c(this.coroutineScope, this.fetchDispatcher, null, new AnonymousClass1(this, null), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onItemUpdate(PagedList<Value> pagedList, PagedList<Value> pagedList2) {
        pagedList.setRetryCallback(null);
        pagedList2.setRetryCallback(this.refreshRetryCallback);
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        invalidate(false);
    }
}
