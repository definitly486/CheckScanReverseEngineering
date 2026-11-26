package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.pg8;
import defpackage.r01;
import defpackage.r22;
import defpackage.r57;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ContiguousPagedList<K, V> extends PagedList<V> implements PagedStorage.Callback, LegacyPageFetcher.PageConsumer<V> {
    public static final Companion Companion = new Companion(null);
    private int appendItemsRequested;
    private final PagedList.BoundaryCallback<V> boundaryCallback;
    private boolean boundaryCallbackBeginDeferred;
    private boolean boundaryCallbackEndDeferred;
    private int highestIndexAccessed;
    private final K initialLastKey;
    private int lowestIndexAccessed;
    private final LegacyPageFetcher<K, V> pager;
    private final PagingSource<K, V> pagingSource;
    private int prependItemsRequested;
    private boolean replacePagesWithNulls;
    private final boolean shouldTrim;

    /* JADX INFO: renamed from: androidx.paging.ContiguousPagedList$tryDispatchBoundaryCallbacks$1, reason: invalid class name */
    @bd2(c = "androidx.paging.ContiguousPagedList$tryDispatchBoundaryCallbacks$1", f = "ContiguousPagedList.jvmAndAndroid.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ boolean $dispatchBegin;
        final /* synthetic */ boolean $dispatchEnd;
        int label;
        final /* synthetic */ ContiguousPagedList<K, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ContiguousPagedList<K, V> contiguousPagedList, boolean z, boolean z2, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = contiguousPagedList;
            this.$dispatchBegin = z;
            this.$dispatchEnd = z2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, this.$dispatchBegin, this.$dispatchEnd, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.this$0.dispatchBoundaryCallbacks(this.$dispatchBegin, this.$dispatchEnd);
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContiguousPagedList(PagingSource<K, V> pagingSource, y22 y22Var, r22 r22Var, r22 r22Var2, PagedList.BoundaryCallback<V> boundaryCallback, PagedList.Config config, PagingSource.LoadResult.Page<K, V> page, K k) {
        super(pagingSource, y22Var, r22Var, new PagedStorage(), config);
        pagingSource.getClass();
        y22Var.getClass();
        r22Var.getClass();
        r22Var2.getClass();
        config.getClass();
        page.getClass();
        this.pagingSource = pagingSource;
        this.boundaryCallback = boundaryCallback;
        this.initialLastKey = k;
        this.lowestIndexAccessed = Integer.MAX_VALUE;
        this.highestIndexAccessed = Integer.MIN_VALUE;
        this.shouldTrim = config.maxSize != Integer.MAX_VALUE;
        PagedStorage<V> storage$paging_common = getStorage$paging_common();
        storage$paging_common.getClass();
        this.pager = new LegacyPageFetcher<>(y22Var, config, pagingSource, r22Var, r22Var2, this, storage$paging_common);
        if (config.enablePlaceholders) {
            getStorage$paging_common().init(page.getItemsBefore() != Integer.MIN_VALUE ? page.getItemsBefore() : 0, page, page.getItemsAfter() != Integer.MIN_VALUE ? page.getItemsAfter() : 0, 0, this, (page.getItemsBefore() == Integer.MIN_VALUE || page.getItemsAfter() == Integer.MIN_VALUE) ? false : true);
        } else {
            getStorage$paging_common().init(0, page, 0, page.getItemsBefore() != Integer.MIN_VALUE ? page.getItemsBefore() : 0, this, false);
        }
        triggerBoundaryCallback(LoadType.REFRESH, page.getData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dispatchBoundaryCallbacks(boolean z, boolean z2) {
        if (z) {
            PagedList.BoundaryCallback<V> boundaryCallback = this.boundaryCallback;
            boundaryCallback.getClass();
            boundaryCallback.onItemAtFrontLoaded(getStorage$paging_common().getFirstLoadedItem$paging_common());
        }
        if (z2) {
            PagedList.BoundaryCallback<V> boundaryCallback2 = this.boundaryCallback;
            boundaryCallback2.getClass();
            boundaryCallback2.onItemAtEndLoaded(getStorage$paging_common().getLastLoadedItem$paging_common());
        }
    }

    public static /* synthetic */ void getLastKey$annotations() {
    }

    private static /* synthetic */ void getPager$annotations() {
    }

    private final void triggerBoundaryCallback(LoadType loadType, List<? extends V> list) {
        if (this.boundaryCallback != null) {
            boolean z = false;
            boolean z2 = getStorage$paging_common().size() == 0;
            boolean z3 = !z2 && loadType == LoadType.PREPEND && list.isEmpty();
            if (!z2 && loadType == LoadType.APPEND && list.isEmpty()) {
                z = true;
            }
            deferBoundaryCallbacks$paging_common(z2, z3, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryDispatchBoundaryCallbacks(boolean z) {
        boolean z2 = this.boundaryCallbackBeginDeferred && this.lowestIndexAccessed <= getConfig().prefetchDistance;
        boolean z3 = this.boundaryCallbackEndDeferred && this.highestIndexAccessed >= (size() - 1) - getConfig().prefetchDistance;
        if (z2 || z3) {
            if (z2) {
                this.boundaryCallbackBeginDeferred = false;
            }
            if (z3) {
                this.boundaryCallbackEndDeferred = false;
            }
            if (z) {
                av0.c(getCoroutineScope$paging_common(), getNotifyDispatcher$paging_common(), null, new AnonymousClass1(this, z2, z3, null), 2);
            } else {
                dispatchBoundaryCallbacks(z2, z3);
            }
        }
    }

    public final void deferBoundaryCallbacks$paging_common(boolean z, boolean z2, boolean z3) {
        if (this.boundaryCallback == null) {
            ah.f("Can't defer BoundaryCallback, no instance");
            return;
        }
        if (this.lowestIndexAccessed == Integer.MAX_VALUE) {
            this.lowestIndexAccessed = getStorage$paging_common().size();
        }
        if (this.highestIndexAccessed == Integer.MIN_VALUE) {
            this.highestIndexAccessed = 0;
        }
        if (z || z2 || z3) {
            av0.c(getCoroutineScope$paging_common(), getNotifyDispatcher$paging_common(), null, new ContiguousPagedList$deferBoundaryCallbacks$1(z, this, z2, z3, null), 2);
        }
    }

    @Override // androidx.paging.PagedList
    public void detach() {
        this.pager.detach();
    }

    @Override // androidx.paging.PagedList
    public void dispatchCurrentLoadState(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        this.pager.getLoadStateManager().dispatchCurrentLoadState(bm3Var);
    }

    public final PagedList.BoundaryCallback<V> getBoundaryCallback$paging_common() {
        return this.boundaryCallback;
    }

    @Override // androidx.paging.PagedList
    public K getLastKey() {
        K refreshKey;
        PagingState<?, V> refreshKeyInfo = getStorage$paging_common().getRefreshKeyInfo(getConfig());
        return (refreshKeyInfo == null || (refreshKey = this.pagingSource.getRefreshKey(refreshKeyInfo)) == null) ? this.initialLastKey : refreshKey;
    }

    @Override // androidx.paging.PagedList
    public final PagingSource<K, V> getPagingSource() {
        return this.pagingSource;
    }

    @Override // androidx.paging.PagedList
    public boolean isDetached() {
        return this.pager.isDetached();
    }

    @Override // androidx.paging.PagedList
    public void loadAroundInternal(int i) {
        Companion companion = Companion;
        int prependItemsRequested$paging_common = companion.getPrependItemsRequested$paging_common(getConfig().prefetchDistance, i, getStorage$paging_common().getPlaceholdersBefore());
        int appendItemsRequested$paging_common = companion.getAppendItemsRequested$paging_common(getConfig().prefetchDistance, i, getStorage$paging_common().getDataCount() + getStorage$paging_common().getPlaceholdersBefore());
        int iMax = Math.max(prependItemsRequested$paging_common, this.prependItemsRequested);
        this.prependItemsRequested = iMax;
        if (iMax > 0) {
            this.pager.trySchedulePrepend();
        }
        int iMax2 = Math.max(appendItemsRequested$paging_common, this.appendItemsRequested);
        this.appendItemsRequested = iMax2;
        if (iMax2 > 0) {
            this.pager.tryScheduleAppend();
        }
        this.lowestIndexAccessed = Math.min(this.lowestIndexAccessed, i);
        this.highestIndexAccessed = Math.max(this.highestIndexAccessed, i);
        tryDispatchBoundaryCallbacks(true);
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onInitialized(int i) {
        notifyInserted$paging_common(0, i);
        this.replacePagesWithNulls = getStorage$paging_common().getPlaceholdersBefore() > 0 || getStorage$paging_common().getPlaceholdersAfter() > 0;
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPageAppended(int i, int i2, int i3) {
        notifyChanged(i, i2);
        notifyInserted$paging_common(i + i2, i3);
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPagePrepended(int i, int i2, int i3) {
        notifyChanged(i, i2);
        notifyInserted$paging_common(0, i3);
        this.lowestIndexAccessed += i3;
        this.highestIndexAccessed += i3;
    }

    @Override // androidx.paging.LegacyPageFetcher.PageConsumer
    public boolean onPageResult(LoadType loadType, PagingSource.LoadResult.Page<?, V> page) {
        loadType.getClass();
        page.getClass();
        List<? extends V> data = page.getData();
        boolean z = true;
        boolean z2 = lastLoad() > getStorage$paging_common().getMiddleOfLoadedRange();
        boolean z3 = this.shouldTrim && getStorage$paging_common().shouldPreTrimNewPage(getConfig().maxSize, getRequiredRemainder$paging_common(), data.size());
        LoadType loadType2 = LoadType.APPEND;
        if (loadType == loadType2) {
            if (!z3 || z2) {
                getStorage$paging_common().appendPage$paging_common(page, this);
                int size = this.appendItemsRequested - data.size();
                this.appendItemsRequested = size;
                if (size <= 0 || data.isEmpty()) {
                }
            } else {
                this.appendItemsRequested = 0;
            }
            z = false;
        } else {
            if (loadType != LoadType.PREPEND) {
                r01.e(loadType, "unexpected result type ");
                return false;
            }
            if (z3 && z2) {
                this.prependItemsRequested = 0;
            } else {
                getStorage$paging_common().prependPage$paging_common(page, this);
                int size2 = this.prependItemsRequested - data.size();
                this.prependItemsRequested = size2;
                if (size2 <= 0 || data.isEmpty()) {
                }
            }
            z = false;
        }
        if (this.shouldTrim) {
            LegacyPageFetcher<K, V> legacyPageFetcher = this.pager;
            if (z2) {
                if (!(legacyPageFetcher.getLoadStateManager().getStartState() instanceof LoadState.Loading) && getStorage$paging_common().trimFromFront$paging_common(this.replacePagesWithNulls, getConfig().maxSize, getRequiredRemainder$paging_common(), this)) {
                    this.pager.getLoadStateManager().setState(LoadType.PREPEND, LoadState.NotLoading.Companion.getIncomplete$paging_common());
                }
            } else if (!(legacyPageFetcher.getLoadStateManager().getEndState() instanceof LoadState.Loading) && getStorage$paging_common().trimFromEnd$paging_common(this.replacePagesWithNulls, getConfig().maxSize, getRequiredRemainder$paging_common(), this)) {
                this.pager.getLoadStateManager().setState(loadType2, LoadState.NotLoading.Companion.getIncomplete$paging_common());
            }
        }
        triggerBoundaryCallback(loadType, data);
        return z;
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPagesRemoved(int i, int i2) {
        notifyRemoved(i, i2);
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPagesSwappedToPlaceholder(int i, int i2) {
        notifyChanged(i, i2);
    }

    @Override // androidx.paging.LegacyPageFetcher.PageConsumer
    public void onStateChanged(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        dispatchStateChangeAsync$paging_common(loadType, loadState);
    }

    @Override // androidx.paging.PagedList
    public void retry() {
        Runnable refreshRetryCallback$paging_common;
        super.retry();
        this.pager.retry();
        if (!(this.pager.getLoadStateManager().getRefreshState() instanceof LoadState.Error) || (refreshRetryCallback$paging_common = getRefreshRetryCallback$paging_common()) == null) {
            return;
        }
        refreshRetryCallback$paging_common.run();
    }

    @Override // androidx.paging.PagedList
    public void setInitialLoadState(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        this.pager.getLoadStateManager().setState(loadType, loadState);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final int getAppendItemsRequested$paging_common(int i, int i2, int i3) {
            return ((i2 + i) + 1) - i3;
        }

        public final int getPrependItemsRequested$paging_common(int i, int i2, int i3) {
            return i - (i2 - i3);
        }

        private Companion() {
        }
    }
}
