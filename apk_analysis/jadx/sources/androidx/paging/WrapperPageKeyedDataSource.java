package androidx.paging;

import androidx.arch.core.util.Function;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WrapperPageKeyedDataSource<K, A, B> extends PageKeyedDataSource<K, B> {
    private final Function<List<A>, List<B>> listFunction;
    private final PageKeyedDataSource<K, A> source;

    public WrapperPageKeyedDataSource(PageKeyedDataSource<K, A> pageKeyedDataSource, Function<List<A>, List<B>> function) {
        pageKeyedDataSource.getClass();
        function.getClass();
        this.source = pageKeyedDataSource;
        this.listFunction = function;
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.addInvalidatedCallback(invalidatedCallback);
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadAfter(PageKeyedDataSource.LoadParams<K> loadParams, final PageKeyedDataSource.LoadCallback<K, B> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        this.source.loadAfter(loadParams, new PageKeyedDataSource.LoadCallback<K, A>() { // from class: androidx.paging.WrapperPageKeyedDataSource.loadAfter.1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(List<? extends A> list, K k) {
                list.getClass();
                loadCallback.onResult(DataSource.Companion.convert$paging_common(((WrapperPageKeyedDataSource) this).listFunction, list), k);
            }
        });
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadBefore(PageKeyedDataSource.LoadParams<K> loadParams, final PageKeyedDataSource.LoadCallback<K, B> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        this.source.loadBefore(loadParams, new PageKeyedDataSource.LoadCallback<K, A>() { // from class: androidx.paging.WrapperPageKeyedDataSource.loadBefore.1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(List<? extends A> list, K k) {
                list.getClass();
                loadCallback.onResult(DataSource.Companion.convert$paging_common(((WrapperPageKeyedDataSource) this).listFunction, list), k);
            }
        });
    }

    @Override // androidx.paging.PageKeyedDataSource
    public void loadInitial(PageKeyedDataSource.LoadInitialParams<K> loadInitialParams, final PageKeyedDataSource.LoadInitialCallback<K, B> loadInitialCallback) {
        loadInitialParams.getClass();
        loadInitialCallback.getClass();
        this.source.loadInitial(loadInitialParams, new PageKeyedDataSource.LoadInitialCallback<K, A>(this) { // from class: androidx.paging.WrapperPageKeyedDataSource.loadInitial.1
            final /* synthetic */ WrapperPageKeyedDataSource<K, A, B> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends A> list, int i, int i2, K k, K k2) {
                list.getClass();
                loadInitialCallback.onResult(DataSource.Companion.convert$paging_common(((WrapperPageKeyedDataSource) this.this$0).listFunction, list), i, i2, k, k2);
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends A> list, K k, K k2) {
                list.getClass();
                loadInitialCallback.onResult(DataSource.Companion.convert$paging_common(((WrapperPageKeyedDataSource) this.this$0).listFunction, list), k, k2);
            }
        });
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.removeInvalidatedCallback(invalidatedCallback);
    }
}
