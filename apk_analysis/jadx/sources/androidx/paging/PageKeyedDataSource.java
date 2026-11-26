package androidx.paging;

import androidx.arch.core.util.Function;
import defpackage.a31;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.gf1;
import defpackage.hf1;
import defpackage.kn1;
import defpackage.mz0;
import defpackage.nl3;
import defpackage.u20;
import defpackage.ul2;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public abstract class PageKeyedDataSource<Key, Value> extends DataSource<Key, Value> {
    private final boolean supportsPageDropping;

    public static abstract class LoadCallback<Key, Value> {
        public abstract void onResult(List<? extends Value> list, Key key);
    }

    public static abstract class LoadInitialCallback<Key, Value> {
        public abstract void onResult(List<? extends Value> list, int i, int i2, Key key, Key key2);

        public abstract void onResult(List<? extends Value> list, Key key, Key key2);
    }

    public static class LoadInitialParams<Key> {
        public final boolean placeholdersEnabled;
        public final int requestedLoadSize;

        public LoadInitialParams(int i, boolean z) {
            this.requestedLoadSize = i;
            this.placeholdersEnabled = z;
        }
    }

    public static class LoadParams<Key> {
        public final Key key;
        public final int requestedLoadSize;

        public LoadParams(Key key, int i) {
            key.getClass();
            this.key = key;
            this.requestedLoadSize = i;
        }
    }

    public PageKeyedDataSource() {
        super(DataSource.KeyType.PAGE_KEYED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LoadCallback<Key, Value> continuationAsCallback(final a31<? super DataSource.BaseResult<Value>> a31Var, final boolean z) {
        return new LoadCallback<Key, Value>() { // from class: androidx.paging.PageKeyedDataSource.continuationAsCallback.1
            @Override // androidx.paging.PageKeyedDataSource.LoadCallback
            public void onResult(List<? extends Value> list, Key key) {
                list.getClass();
                a31<DataSource.BaseResult<Value>> a31Var2 = a31Var;
                boolean z2 = z;
                a31Var2.resumeWith(new DataSource.BaseResult(list, z2 ? null : key, z2 ? key : null, 0, 0, 24, null));
            }
        };
    }

    public static /* synthetic */ void getSupportsPageDropping$paging_common$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadAfter(LoadParams<Key> loadParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadAfter(loadParams, continuationAsCallback(c31Var, true));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadBefore(LoadParams<Key> loadParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadBefore(loadParams, continuationAsCallback(c31Var, false));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadInitial(LoadInitialParams<Key> loadInitialParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadInitial(loadInitialParams, new LoadInitialCallback<Key, Value>() { // from class: androidx.paging.PageKeyedDataSource$loadInitial$2$1
            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends Value> list, int i, int i2, Key key, Key key2) {
                list.getClass();
                c31Var.resumeWith(new DataSource.BaseResult(list, key, key2, i, (i2 - list.size()) - i));
            }

            @Override // androidx.paging.PageKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends Value> list, Key key, Key key2) {
                list.getClass();
                c31Var.resumeWith(new DataSource.BaseResult(list, key, key2, 0, 0, 24, null));
            }
        });
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List map$lambda$0(Function function, List list) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List map$lambda$1(nl3 nl3Var, List list) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(nl3Var.invoke(it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List mapByPage$lambda$0(nl3 nl3Var, List list) {
        list.getClass();
        return (List) nl3Var.invoke(list);
    }

    @Override // androidx.paging.DataSource
    public Key getKeyInternal$paging_common(Value value) {
        value.getClass();
        throw new IllegalStateException("Cannot get key by item in pageKeyedDataSource");
    }

    @Override // androidx.paging.DataSource
    public boolean getSupportsPageDropping$paging_common() {
        return this.supportsPageDropping;
    }

    @Override // androidx.paging.DataSource
    public final Object load$paging_common(DataSource.Params<Key> params, e02<? super DataSource.BaseResult<Value>> e02Var) {
        if (params.getType$paging_common() == LoadType.REFRESH) {
            return loadInitial(new LoadInitialParams<>(params.getInitialLoadSize(), params.getPlaceholdersEnabled()), e02Var);
        }
        if (params.getKey() == null) {
            return DataSource.BaseResult.Companion.empty$paging_common();
        }
        if (params.getType$paging_common() == LoadType.PREPEND) {
            return loadBefore(new LoadParams<>(params.getKey(), params.getPageSize()), e02Var);
        }
        if (params.getType$paging_common() == LoadType.APPEND) {
            return loadAfter(new LoadParams<>(params.getKey(), params.getPageSize()), e02Var);
        }
        mz0.c(params.getType$paging_common(), "Unsupported type ");
        return null;
    }

    public abstract void loadAfter(LoadParams<Key> loadParams, LoadCallback<Key, Value> loadCallback);

    public abstract void loadBefore(LoadParams<Key> loadParams, LoadCallback<Key, Value> loadCallback);

    public abstract void loadInitial(LoadInitialParams<Key> loadInitialParams, LoadInitialCallback<Key, Value> loadInitialCallback);

    @Override // androidx.paging.DataSource
    public final <ToValue> PageKeyedDataSource<Key, ToValue> map(Function<Value, ToValue> function) {
        function.getClass();
        return mapByPage((Function) new u20(function, 3));
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> PageKeyedDataSource<Key, ToValue> mapByPage(nl3<? super List<? extends Value>, ? extends List<? extends ToValue>> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new gf1(nl3Var, 1));
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> PageKeyedDataSource<Key, ToValue> mapByPage(Function<List<Value>, List<ToValue>> function) {
        function.getClass();
        return new WrapperPageKeyedDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> PageKeyedDataSource<Key, ToValue> map(nl3<? super Value, ? extends ToValue> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new hf1(nl3Var, 1));
    }
}
