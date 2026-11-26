package androidx.paging;

import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bj;
import defpackage.bm3;
import defpackage.bv0;
import defpackage.eq;
import defpackage.fg;
import defpackage.fr3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ki0;
import defpackage.me0;
import defpackage.n7;
import defpackage.nn1;
import defpackage.oi2;
import defpackage.qn1;
import defpackage.qo2;
import defpackage.qy2;
import defpackage.r22;
import defpackage.ry2;
import defpackage.sh2;
import defpackage.sy2;
import defpackage.ul2;
import defpackage.uy4;
import defpackage.vh0;
import defpackage.y22;
import java.lang.ref.WeakReference;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public abstract class PagedList<T> extends AbstractList<T> {
    public static final Companion Companion = new Companion(null);
    private final List<WeakReference<Callback>> callbacks;
    private final Config config;
    private final y22 coroutineScope;
    private final List<WeakReference<bm3<LoadType, LoadState, j59>>> loadStateListeners;
    private final r22 notifyDispatcher;
    private final PagingSource<?, T> pagingSource;
    private Runnable refreshRetryCallback;
    private final int requiredRemainder;
    private final PagedStorage<T> storage;

    public static abstract class BoundaryCallback<T> {
        public void onItemAtEndLoaded(T t) {
            t.getClass();
        }

        public void onItemAtFrontLoaded(T t) {
            t.getClass();
        }

        public void onZeroItemsLoaded() {
        }
    }

    public static abstract class Callback {
        public abstract void onChanged(int i, int i2);

        public abstract void onInserted(int i, int i2);

        public abstract void onRemoved(int i, int i2);
    }

    public static final class Config {
        public static final Companion Companion = new Companion(null);
        public static final int MAX_SIZE_UNBOUNDED = Integer.MAX_VALUE;
        public final boolean enablePlaceholders;
        public final int initialLoadSizeHint;
        public final int maxSize;
        public final int pageSize;
        public final int prefetchDistance;

        public Config(int i, int i2, boolean z, int i3, int i4) {
            this.pageSize = i;
            this.prefetchDistance = i2;
            this.enablePlaceholders = z;
            this.initialLoadSizeHint = i3;
            this.maxSize = i4;
        }

        public static final class Builder {
            public static final Companion Companion = new Companion(null);
            public static final int DEFAULT_INITIAL_PAGE_MULTIPLIER = 3;
            private int pageSize = -1;
            private int prefetchDistance = -1;
            private int initialLoadSizeHint = -1;
            private boolean enablePlaceholders = true;
            private int maxSize = Integer.MAX_VALUE;

            public final Config build() {
                int i = this.prefetchDistance;
                if (i < 0) {
                    i = this.pageSize;
                    this.prefetchDistance = i;
                }
                if (this.initialLoadSizeHint < 0) {
                    this.initialLoadSizeHint = this.pageSize * 3;
                }
                if (!this.enablePlaceholders && i == 0) {
                    fg.c("Placeholders and prefetch are the only ways to trigger loading of more data in the PagedList, so either placeholders must be enabled, or prefetch distance must be > 0.");
                    return null;
                }
                int i2 = this.maxSize;
                if (i2 != Integer.MAX_VALUE) {
                    if (i2 < (i * 2) + this.pageSize) {
                        eq.f("Maximum size must be at least pageSize + 2*prefetchDist, pageSize=", this.pageSize, ", prefetchDist=", this.prefetchDistance, ", maxSize=", this.maxSize);
                        return null;
                    }
                }
                return new Config(this.pageSize, this.prefetchDistance, this.enablePlaceholders, this.initialLoadSizeHint, this.maxSize);
            }

            public final Builder setEnablePlaceholders(boolean z) {
                this.enablePlaceholders = z;
                return this;
            }

            public final Builder setInitialLoadSizeHint(int i) {
                this.initialLoadSizeHint = i;
                return this;
            }

            public final Builder setMaxSize(int i) {
                this.maxSize = i;
                return this;
            }

            public final Builder setPageSize(int i) {
                if (i >= 1) {
                    this.pageSize = i;
                    return this;
                }
                fg.c("Page size must be a positive number");
                return null;
            }

            public final Builder setPrefetchDistance(int i) {
                this.prefetchDistance = i;
                return this;
            }

            public static final class Companion {
                public /* synthetic */ Companion(jh2 jh2Var) {
                    this();
                }

                private Companion() {
                }
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static /* synthetic */ void getMAX_SIZE_UNBOUNDED$annotations() {
            }

            private Companion() {
            }
        }
    }

    public static abstract class LoadStateManager {
        private LoadState endState;
        private LoadState refreshState;
        private LoadState startState;

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LoadType.values().length];
                try {
                    iArr[LoadType.REFRESH.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LoadType.PREPEND.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[LoadType.APPEND.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public LoadStateManager() {
            LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
            this.refreshState = companion.getIncomplete$paging_common();
            this.startState = companion.getIncomplete$paging_common();
            this.endState = companion.getIncomplete$paging_common();
        }

        public final void dispatchCurrentLoadState(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
            bm3Var.getClass();
            bm3Var.invoke(LoadType.REFRESH, this.refreshState);
            bm3Var.invoke(LoadType.PREPEND, this.startState);
            bm3Var.invoke(LoadType.APPEND, this.endState);
        }

        public final LoadState getEndState() {
            return this.endState;
        }

        public final LoadState getRefreshState() {
            return this.refreshState;
        }

        public final LoadState getStartState() {
            return this.startState;
        }

        public abstract void onStateChanged(LoadType loadType, LoadState loadState);

        public final void setEndState(LoadState loadState) {
            loadState.getClass();
            this.endState = loadState;
        }

        public final void setRefreshState(LoadState loadState) {
            loadState.getClass();
            this.refreshState = loadState;
        }

        public final void setStartState(LoadState loadState) {
            loadState.getClass();
            this.startState = loadState;
        }

        public final void setState(LoadType loadType, LoadState loadState) {
            loadType.getClass();
            loadState.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        me0.e();
                        return;
                    } else if (aa4.e(this.endState, loadState)) {
                        return;
                    } else {
                        this.endState = loadState;
                    }
                } else if (aa4.e(this.startState, loadState)) {
                    return;
                } else {
                    this.startState = loadState;
                }
            } else if (aa4.e(this.refreshState, loadState)) {
                return;
            } else {
                this.refreshState = loadState;
            }
            onStateChanged(loadType, loadState);
        }
    }

    public PagedList(PagingSource<?, T> pagingSource, y22 y22Var, r22 r22Var, PagedStorage<T> pagedStorage, Config config) {
        pagingSource.getClass();
        y22Var.getClass();
        r22Var.getClass();
        pagedStorage.getClass();
        config.getClass();
        this.pagingSource = pagingSource;
        this.coroutineScope = y22Var;
        this.notifyDispatcher = r22Var;
        this.storage = pagedStorage;
        this.config = config;
        this.requiredRemainder = (config.prefetchDistance * 2) + config.pageSize;
        this.callbacks = new ArrayList();
        this.loadStateListeners = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addWeakCallback$lambda$0(WeakReference weakReference) {
        weakReference.getClass();
        return weakReference.get() == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addWeakLoadStateListener$lambda$0(WeakReference weakReference) {
        weakReference.getClass();
        return weakReference.get() == null;
    }

    public static final <K, T> PagedList<T> create(PagingSource<K, T> pagingSource, PagingSource.LoadResult.Page<K, T> page, y22 y22Var, r22 r22Var, r22 r22Var2, BoundaryCallback<T> boundaryCallback, Config config, K k) {
        return Companion.create(pagingSource, page, y22Var, r22Var, r22Var2, boundaryCallback, config, k);
    }

    @ul2
    public static /* synthetic */ void getDataSource$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeWeakCallback$lambda$0(Callback callback, WeakReference weakReference) {
        weakReference.getClass();
        return weakReference.get() == null || weakReference.get() == callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeWeakLoadStateListener$lambda$0(bm3 bm3Var, WeakReference weakReference) {
        weakReference.getClass();
        return weakReference.get() == null || weakReference.get() == bm3Var;
    }

    public final void addWeakCallback(Callback callback) {
        callback.getClass();
        nn1.y(new sy2(2), this.callbacks);
        this.callbacks.add(new WeakReference<>(callback));
    }

    public final void addWeakLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        nn1.y(new qy2(4), this.loadStateListeners);
        this.loadStateListeners.add(new WeakReference<>(bm3Var));
        dispatchCurrentLoadState(bm3Var);
    }

    public abstract void detach();

    public abstract void dispatchCurrentLoadState(bm3<? super LoadType, ? super LoadState, j59> bm3Var);

    public final void dispatchStateChangeAsync$paging_common(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        av0.c(this.coroutineScope, this.notifyDispatcher, null, new PagedList$dispatchStateChangeAsync$1(this, loadType, loadState, null), 2);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return this.storage.get(i);
    }

    public final Config getConfig() {
        return this.config;
    }

    public final y22 getCoroutineScope$paging_common() {
        return this.coroutineScope;
    }

    public final DataSource<?, T> getDataSource() {
        PagingSource<?, T> pagingSource = getPagingSource();
        if (!(pagingSource instanceof LegacyPagingSource)) {
            ki0.c(pagingSource.getClass().getSimpleName(), "Attempt to access dataSource on a PagedList that was instantiated with a ", " instead of a DataSource");
            return null;
        }
        DataSource<?, T> dataSource$paging_common = ((LegacyPagingSource) pagingSource).getDataSource$paging_common();
        dataSource$paging_common.getClass();
        return dataSource$paging_common;
    }

    public abstract Object getLastKey();

    public final int getLoadedCount() {
        return this.storage.getDataCount();
    }

    public final r22 getNotifyDispatcher$paging_common() {
        return this.notifyDispatcher;
    }

    public PagingSource<?, T> getPagingSource() {
        return this.pagingSource;
    }

    public final PlaceholderPaddedList<T> getPlaceholderPaddedList() {
        return this.storage;
    }

    public final int getPositionOffset() {
        return this.storage.getPositionOffset();
    }

    public final Runnable getRefreshRetryCallback$paging_common() {
        return this.refreshRetryCallback;
    }

    public final int getRequiredRemainder$paging_common() {
        return this.requiredRemainder;
    }

    public int getSize() {
        return this.storage.size();
    }

    public final PagedStorage<T> getStorage$paging_common() {
        return this.storage;
    }

    public abstract boolean isDetached();

    public boolean isImmutable() {
        return isDetached();
    }

    public final int lastLoad() {
        return this.storage.getLastLoadAroundIndex();
    }

    public final void loadAround(int i) {
        if (i < 0 || i >= size()) {
            bj.d(size(), n7.c(i, "Index: ", ", Size: "));
        } else {
            this.storage.setLastLoadAroundIndex(i);
            loadAroundInternal(i);
        }
    }

    public abstract void loadAroundInternal(int i);

    public final void notifyChanged(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        Iterator<T> it = qn1.j0(this.callbacks).iterator();
        while (it.hasNext()) {
            Callback callback = (Callback) ((WeakReference) it.next()).get();
            if (callback != null) {
                callback.onChanged(i, i2);
            }
        }
    }

    public final void notifyInserted$paging_common(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        Iterator<T> it = qn1.j0(this.callbacks).iterator();
        while (it.hasNext()) {
            Callback callback = (Callback) ((WeakReference) it.next()).get();
            if (callback != null) {
                callback.onInserted(i, i2);
            }
        }
    }

    public final void notifyRemoved(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        Iterator<T> it = qn1.j0(this.callbacks).iterator();
        while (it.hasNext()) {
            Callback callback = (Callback) ((WeakReference) it.next()).get();
            if (callback != null) {
                callback.onRemoved(i, i2);
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i) {
        return (T) removeAt(i);
    }

    public /* bridge */ Object removeAt(int i) {
        return super.remove(i);
    }

    public final void removeWeakCallback(Callback callback) {
        callback.getClass();
        nn1.y(new vh0(callback, 2), this.callbacks);
    }

    public final void removeWeakLoadStateListener(bm3<? super LoadType, ? super LoadState, j59> bm3Var) {
        bm3Var.getClass();
        nn1.y(new ry2(bm3Var, 2), this.loadStateListeners);
    }

    public void retry() {
    }

    public void setInitialLoadState(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
    }

    public final void setRefreshRetryCallback$paging_common(Runnable runnable) {
        this.refreshRetryCallback = runnable;
    }

    public final void setRetryCallback(Runnable runnable) {
        this.refreshRetryCallback = runnable;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    public final List<T> snapshot() {
        return isImmutable() ? this : new SnapshotPagedList(this);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <K, T> PagedList<T> create(PagingSource<K, T> pagingSource, PagingSource.LoadResult.Page<K, T> page, y22 y22Var, r22 r22Var, r22 r22Var2, BoundaryCallback<T> boundaryCallback, Config config, K k) {
            K k2;
            pagingSource.getClass();
            y22Var.getClass();
            r22Var.getClass();
            r22Var2.getClass();
            config.getClass();
            if (page == null) {
                k2 = k;
                page = (PagingSource.LoadResult.Page) bv0.a(gx2.b, new PagedList$Companion$create$resolvedInitialPage$1(pagingSource, new PagingSource.LoadParams.Refresh(k2, config.initialLoadSizeHint, config.enablePlaceholders), null));
            } else {
                k2 = k;
            }
            return new ContiguousPagedList(pagingSource, y22Var, r22Var, r22Var2, boundaryCallback, config, page, k2);
        }

        public final void dispatchNaiveUpdatesSinceSnapshot$paging_common(int i, int i2, Callback callback) {
            callback.getClass();
            if (i2 < i) {
                if (i2 > 0) {
                    callback.onChanged(0, i2);
                }
                int i3 = i - i2;
                if (i3 > 0) {
                    callback.onInserted(i2, i3);
                    return;
                }
                return;
            }
            if (i > 0) {
                callback.onChanged(0, i);
            }
            int i4 = i2 - i;
            if (i4 != 0) {
                callback.onRemoved(i, i4);
            }
        }

        private Companion() {
        }
    }

    @ul2
    public static final class Builder<Key, Value> {
        private BoundaryCallback<Value> boundaryCallback;
        private final Config config;
        private y22 coroutineScope;
        private DataSource<Key, Value> dataSource;
        private r22 fetchDispatcher;
        private Key initialKey;
        private final PagingSource.LoadResult.Page<Key, Value> initialPage;
        private r22 notifyDispatcher;
        private final PagingSource<Key, Value> pagingSource;

        public Builder(PagingSource<Key, Value> pagingSource, PagingSource.LoadResult.Page<Key, Value> page, Config config) {
            pagingSource.getClass();
            page.getClass();
            config.getClass();
            this.coroutineScope = fr3.b;
            this.pagingSource = pagingSource;
            this.dataSource = null;
            this.initialPage = page;
            this.config = config;
        }

        private static /* synthetic */ void getCoroutineScope$annotations() {
        }

        public final PagedList<Value> build() {
            r22 r22Var = this.fetchDispatcher;
            if (r22Var == null) {
                oi2 oi2Var = qo2.a;
                r22Var = sh2.c;
            }
            r22 r22Var2 = r22Var;
            PagingSource<Key, Value> legacyPagingSource = this.pagingSource;
            if (legacyPagingSource == null) {
                DataSource<Key, Value> dataSource = this.dataSource;
                legacyPagingSource = dataSource != null ? new LegacyPagingSource(r22Var2, dataSource) : null;
            }
            PagingSource<Key, Value> pagingSource = legacyPagingSource;
            if (pagingSource instanceof LegacyPagingSource) {
                ((LegacyPagingSource) pagingSource).setPageSize(this.config.pageSize);
            }
            if (pagingSource == null) {
                ah.f("PagedList cannot be built without a PagingSource or DataSource");
                return null;
            }
            Companion companion = PagedList.Companion;
            PagingSource.LoadResult.Page<Key, Value> page = this.initialPage;
            y22 y22Var = this.coroutineScope;
            r22 r22VarK0 = this.notifyDispatcher;
            if (r22VarK0 == null) {
                oi2 oi2Var2 = qo2.a;
                r22VarK0 = uy4.a.k0();
            }
            return companion.create(pagingSource, page, y22Var, r22VarK0, r22Var2, this.boundaryCallback, this.config, this.initialKey);
        }

        public final Builder<Key, Value> setBoundaryCallback(BoundaryCallback<Value> boundaryCallback) {
            this.boundaryCallback = boundaryCallback;
            return this;
        }

        public final Builder<Key, Value> setCoroutineScope(y22 y22Var) {
            y22Var.getClass();
            this.coroutineScope = y22Var;
            return this;
        }

        public final Builder<Key, Value> setFetchDispatcher(r22 r22Var) {
            r22Var.getClass();
            this.fetchDispatcher = r22Var;
            return this;
        }

        @ul2
        public final Builder<Key, Value> setFetchExecutor(Executor executor) {
            executor.getClass();
            this.fetchDispatcher = aq5.x(executor);
            return this;
        }

        public final Builder<Key, Value> setInitialKey(Key key) {
            this.initialKey = key;
            return this;
        }

        public final Builder<Key, Value> setNotifyDispatcher(r22 r22Var) {
            r22Var.getClass();
            this.notifyDispatcher = r22Var;
            return this;
        }

        @ul2
        public final Builder<Key, Value> setNotifyExecutor(Executor executor) {
            executor.getClass();
            this.notifyDispatcher = aq5.x(executor);
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(DataSource<Key, Value> dataSource, int i) {
            this(dataSource, PagedListConfigKt.Config$default(i, 0, false, 0, 0, 30, null));
            dataSource.getClass();
        }

        public Builder(DataSource<Key, Value> dataSource, Config config) {
            dataSource.getClass();
            config.getClass();
            this.coroutineScope = fr3.b;
            this.pagingSource = null;
            this.dataSource = dataSource;
            this.initialPage = null;
            this.config = config;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(PagingSource<Key, Value> pagingSource, PagingSource.LoadResult.Page<Key, Value> page, int i) {
            this(pagingSource, page, PagedListConfigKt.Config$default(i, 0, false, 0, 0, 30, null));
            pagingSource.getClass();
            page.getClass();
        }
    }

    @ul2
    public final void addWeakCallback(List<? extends T> list, Callback callback) {
        callback.getClass();
        if (list != null && list != this) {
            Companion.dispatchNaiveUpdatesSinceSnapshot$paging_common(size(), list.size(), callback);
        }
        addWeakCallback(callback);
    }
}
