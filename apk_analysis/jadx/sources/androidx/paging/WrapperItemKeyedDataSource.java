package androidx.paging;

import androidx.arch.core.util.Function;
import defpackage.j59;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WrapperItemKeyedDataSource<K, A, B> extends ItemKeyedDataSource<K, B> {
    private final IdentityHashMap<B, K> keyMap;
    private final Function<List<A>, List<B>> listFunction;
    private final ItemKeyedDataSource<K, A> source;

    public WrapperItemKeyedDataSource(ItemKeyedDataSource<K, A> itemKeyedDataSource, Function<List<A>, List<B>> function) {
        itemKeyedDataSource.getClass();
        function.getClass();
        this.source = itemKeyedDataSource;
        this.listFunction = function;
        this.keyMap = new IdentityHashMap<>();
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.addInvalidatedCallback(invalidatedCallback);
    }

    public final List<B> convertWithStashedKeys(List<? extends A> list) {
        list.getClass();
        List<B> listConvert$paging_common = DataSource.Companion.convert$paging_common(this.listFunction, list);
        synchronized (this.keyMap) {
            try {
                int size = listConvert$paging_common.size();
                for (int i = 0; i < size; i++) {
                    this.keyMap.put(listConvert$paging_common.get(i), this.source.getKey(list.get(i)));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return listConvert$paging_common;
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public K getKey(B b) {
        K k;
        b.getClass();
        synchronized (this.keyMap) {
            k = this.keyMap.get(b);
            k.getClass();
        }
        return k;
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadAfter(ItemKeyedDataSource.LoadParams<K> loadParams, final ItemKeyedDataSource.LoadCallback<B> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        this.source.loadAfter(loadParams, new ItemKeyedDataSource.LoadCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource.loadAfter.1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(List<? extends A> list) {
                list.getClass();
                loadCallback.onResult(this.convertWithStashedKeys(list));
            }
        });
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadBefore(ItemKeyedDataSource.LoadParams<K> loadParams, final ItemKeyedDataSource.LoadCallback<B> loadCallback) {
        loadParams.getClass();
        loadCallback.getClass();
        this.source.loadBefore(loadParams, new ItemKeyedDataSource.LoadCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource.loadBefore.1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(List<? extends A> list) {
                list.getClass();
                loadCallback.onResult(this.convertWithStashedKeys(list));
            }
        });
    }

    @Override // androidx.paging.ItemKeyedDataSource
    public void loadInitial(ItemKeyedDataSource.LoadInitialParams<K> loadInitialParams, final ItemKeyedDataSource.LoadInitialCallback<B> loadInitialCallback) {
        loadInitialParams.getClass();
        loadInitialCallback.getClass();
        this.source.loadInitial(loadInitialParams, new ItemKeyedDataSource.LoadInitialCallback<A>() { // from class: androidx.paging.WrapperItemKeyedDataSource.loadInitial.1
            @Override // androidx.paging.ItemKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends A> list, int i, int i2) {
                list.getClass();
                loadInitialCallback.onResult(this.convertWithStashedKeys(list), i, i2);
            }

            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(List<? extends A> list) {
                list.getClass();
                loadInitialCallback.onResult(this.convertWithStashedKeys(list));
            }
        });
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.removeInvalidatedCallback(invalidatedCallback);
    }
}
