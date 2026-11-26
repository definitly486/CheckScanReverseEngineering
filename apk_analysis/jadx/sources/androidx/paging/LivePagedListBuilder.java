package androidx.paging;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import defpackage.ah;
import defpackage.aq5;
import defpackage.fr3;
import defpackage.ll3;
import defpackage.r22;
import defpackage.ul2;
import defpackage.y22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public final class LivePagedListBuilder<Key, Value> {
    private PagedList.BoundaryCallback<Value> boundaryCallback;
    private final PagedList.Config config;
    private y22 coroutineScope;
    private final DataSource.Factory<Key, Value> dataSourceFactory;
    private r22 fetchDispatcher;
    private Key initialLoadKey;
    private final ll3<PagingSource<Key, Value>> pagingSourceFactory;

    @ul2
    public LivePagedListBuilder(DataSource.Factory<Key, Value> factory, PagedList.Config config) {
        factory.getClass();
        config.getClass();
        this.coroutineScope = fr3.b;
        Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
        iOThreadExecutor.getClass();
        this.fetchDispatcher = aq5.x(iOThreadExecutor);
        this.pagingSourceFactory = null;
        this.dataSourceFactory = factory;
        this.config = config;
    }

    private static /* synthetic */ void getBoundaryCallback$annotations() {
    }

    private static /* synthetic */ void getConfig$annotations() {
    }

    private static /* synthetic */ void getCoroutineScope$annotations() {
    }

    public final LiveData<PagedList<Value>> build() {
        ll3<PagingSource<Key, Value>> ll3Var;
        ll3<PagingSource<Key, Value>> ll3VarAsPagingSourceFactory = this.pagingSourceFactory;
        if (ll3VarAsPagingSourceFactory != null) {
            ll3Var = ll3VarAsPagingSourceFactory;
        } else {
            DataSource.Factory<Key, Value> factory = this.dataSourceFactory;
            if (factory != null) {
                ll3VarAsPagingSourceFactory = factory.asPagingSourceFactory(this.fetchDispatcher);
                ll3Var = ll3VarAsPagingSourceFactory;
            } else {
                ll3Var = null;
            }
        }
        if (ll3Var == null) {
            ah.f("LivePagedList cannot be built without a PagingSourceFactory or DataSource.Factory");
            return null;
        }
        y22 y22Var = this.coroutineScope;
        Key key = this.initialLoadKey;
        PagedList.Config config = this.config;
        PagedList.BoundaryCallback<Value> boundaryCallback = this.boundaryCallback;
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        mainThreadExecutor.getClass();
        return new LivePagedList(y22Var, key, config, boundaryCallback, ll3Var, aq5.x(mainThreadExecutor), this.fetchDispatcher);
    }

    public final LivePagedListBuilder<Key, Value> setBoundaryCallback(PagedList.BoundaryCallback<Value> boundaryCallback) {
        this.boundaryCallback = boundaryCallback;
        return this;
    }

    public final LivePagedListBuilder<Key, Value> setCoroutineScope(y22 y22Var) {
        y22Var.getClass();
        this.coroutineScope = y22Var;
        return this;
    }

    public final LivePagedListBuilder<Key, Value> setFetchExecutor(Executor executor) {
        executor.getClass();
        this.fetchDispatcher = aq5.x(executor);
        return this;
    }

    public final LivePagedListBuilder<Key, Value> setInitialLoadKey(Key key) {
        this.initialLoadKey = key;
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public LivePagedListBuilder(DataSource.Factory<Key, Value> factory, int i) {
        this(factory, new PagedList.Config.Builder().setPageSize(i).build());
        factory.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ul2
    public LivePagedListBuilder(ll3<? extends PagingSource<Key, Value>> ll3Var, PagedList.Config config) {
        ll3Var.getClass();
        config.getClass();
        this.coroutineScope = fr3.b;
        Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
        iOThreadExecutor.getClass();
        this.fetchDispatcher = aq5.x(iOThreadExecutor);
        this.pagingSourceFactory = ll3Var;
        this.dataSourceFactory = null;
        this.config = config;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public LivePagedListBuilder(ll3<? extends PagingSource<Key, Value>> ll3Var, int i) {
        this(ll3Var, new PagedList.Config.Builder().setPageSize(i).build());
        ll3Var.getClass();
    }
}
