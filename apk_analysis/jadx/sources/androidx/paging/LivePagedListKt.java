package androidx.paging;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import defpackage.aq5;
import defpackage.fr3;
import defpackage.ll3;
import defpackage.r22;
import defpackage.ul2;
import defpackage.y22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class LivePagedListKt {
    @ul2
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(ll3<? extends PagingSource<Key, Value>> ll3Var, int i, Key key, PagedList.BoundaryCallback<Value> boundaryCallback, y22 y22Var, r22 r22Var) {
        ll3Var.getClass();
        y22Var.getClass();
        r22Var.getClass();
        PagedList.Config configBuild = new PagedList.Config.Builder().setPageSize(i).build();
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        mainThreadExecutor.getClass();
        return new LivePagedList(y22Var, key, configBuild, boundaryCallback, ll3Var, aq5.x(mainThreadExecutor), r22Var);
    }

    public static /* synthetic */ LiveData toLiveData$default(ll3 ll3Var, PagedList.Config config, Object obj, PagedList.BoundaryCallback boundaryCallback, y22 y22Var, r22 r22Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = null;
        }
        if ((i & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i & 8) != 0) {
            y22Var = fr3.b;
        }
        if ((i & 16) != 0) {
            Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
            iOThreadExecutor.getClass();
            r22Var = aq5.x(iOThreadExecutor);
        }
        return toLiveData((ll3<? extends PagingSource<Object, Value>>) ll3Var, config, obj, boundaryCallback, y22Var, r22Var);
    }

    public static /* synthetic */ LiveData toLiveData$default(DataSource.Factory factory, int i, Object obj, PagedList.BoundaryCallback boundaryCallback, Executor executor, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            obj = null;
        }
        if ((i2 & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i2 & 8) != 0) {
            executor = ArchTaskExecutor.getIOThreadExecutor();
            executor.getClass();
        }
        return toLiveData((DataSource.Factory<Object, Value>) factory, i, obj, boundaryCallback, executor);
    }

    public static /* synthetic */ LiveData toLiveData$default(DataSource.Factory factory, PagedList.Config config, Object obj, PagedList.BoundaryCallback boundaryCallback, Executor executor, int i, Object obj2) {
        if ((i & 2) != 0) {
            obj = null;
        }
        if ((i & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i & 8) != 0) {
            executor = ArchTaskExecutor.getIOThreadExecutor();
            executor.getClass();
        }
        return toLiveData((DataSource.Factory<Object, Value>) factory, config, obj, boundaryCallback, executor);
    }

    public static /* synthetic */ LiveData toLiveData$default(ll3 ll3Var, int i, Object obj, PagedList.BoundaryCallback boundaryCallback, y22 y22Var, r22 r22Var, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            obj = null;
        }
        if ((i2 & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i2 & 8) != 0) {
            y22Var = fr3.b;
        }
        if ((i2 & 16) != 0) {
            Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
            iOThreadExecutor.getClass();
            r22Var = aq5.x(iOThreadExecutor);
        }
        return toLiveData((ll3<? extends PagingSource<Object, Value>>) ll3Var, i, obj, boundaryCallback, y22Var, r22Var);
    }

    @ul2
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(DataSource.Factory<Key, Value> factory, int i, Key key, PagedList.BoundaryCallback<Value> boundaryCallback, Executor executor) {
        factory.getClass();
        executor.getClass();
        return new LivePagedListBuilder(factory, PagedListConfigKt.Config$default(i, 0, false, 0, 0, 30, null)).setInitialLoadKey(key).setBoundaryCallback(boundaryCallback).setFetchExecutor(executor).build();
    }

    @ul2
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(ll3<? extends PagingSource<Key, Value>> ll3Var, PagedList.Config config, Key key, PagedList.BoundaryCallback<Value> boundaryCallback, y22 y22Var, r22 r22Var) {
        ll3Var.getClass();
        config.getClass();
        y22Var.getClass();
        r22Var.getClass();
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        mainThreadExecutor.getClass();
        return new LivePagedList(y22Var, key, config, boundaryCallback, ll3Var, aq5.x(mainThreadExecutor), r22Var);
    }

    @ul2
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(DataSource.Factory<Key, Value> factory, PagedList.Config config, Key key, PagedList.BoundaryCallback<Value> boundaryCallback, Executor executor) {
        factory.getClass();
        config.getClass();
        executor.getClass();
        return new LivePagedListBuilder(factory, config).setInitialLoadKey(key).setBoundaryCallback(boundaryCallback).setFetchExecutor(executor).build();
    }
}
