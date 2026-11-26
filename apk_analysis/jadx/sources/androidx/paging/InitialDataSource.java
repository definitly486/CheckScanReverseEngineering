package androidx.paging;

import defpackage.kx2;

/* JADX INFO: loaded from: classes3.dex */
public final class InitialDataSource<K, V> extends PageKeyedDataSource<K, V> {
    @Override // androidx.paging.PageKeyedDataSource
    public void loadAfter(PageKeyedDataSource.LoadParams<K> loadParams, PageKeyedDataSource.LoadCallback<K, V> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        loadCallback.onResult(kx2.b, null);
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadBefore(PageKeyedDataSource.LoadParams<K> loadParams, PageKeyedDataSource.LoadCallback<K, V> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        loadCallback.onResult(kx2.b, null);
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadInitial(PageKeyedDataSource.LoadInitialParams<K> loadInitialParams, PageKeyedDataSource.LoadInitialCallback<K, V> loadInitialCallback) {
        loadInitialParams.getClass();
        loadInitialCallback.getClass();
        loadInitialCallback.onResult(kx2.b, 0, 0, null, null);
    }
}
