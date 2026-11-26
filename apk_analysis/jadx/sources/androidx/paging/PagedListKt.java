package androidx.paging;

import defpackage.ul2;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class PagedListKt {
    @ul2
    public static final /* synthetic */ PagedList PagedList(DataSource dataSource, PagedList.Config config, Executor executor, Executor executor2, PagedList.BoundaryCallback boundaryCallback, Object obj) {
        dataSource.getClass();
        config.getClass();
        executor.getClass();
        executor2.getClass();
        return new PagedList.Builder(dataSource, config).setNotifyExecutor(executor).setFetchExecutor(executor2).setBoundaryCallback(boundaryCallback).setInitialKey(obj).build();
    }

    public static /* synthetic */ PagedList PagedList$default(DataSource dataSource, PagedList.Config config, Executor executor, Executor executor2, PagedList.BoundaryCallback boundaryCallback, Object obj, int i, Object obj2) {
        if ((i & 16) != 0) {
            boundaryCallback = null;
        }
        if ((i & 32) != 0) {
            obj = null;
        }
        return PagedList(dataSource, config, executor, executor2, boundaryCallback, obj);
    }

    public static final <Key> PagingSource.LoadParams<Key> toRefreshLoadParams(PagedList.Config config, Key key) {
        config.getClass();
        return new PagingSource.LoadParams.Refresh(key, config.initialLoadSizeHint, config.enablePlaceholders);
    }
}
