package androidx.paging;

import androidx.arch.core.util.Function;
import defpackage.a31;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.fg2;
import defpackage.kn1;
import defpackage.me0;
import defpackage.nl3;
import defpackage.ow0;
import defpackage.qn1;
import defpackage.ul2;
import defpackage.zm3;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public abstract class ItemKeyedDataSource<Key, Value> extends DataSource<Key, Value> {

    public static abstract class LoadCallback<Value> {
        public abstract void onResult(List<? extends Value> list);
    }

    public static abstract class LoadInitialCallback<Value> extends LoadCallback<Value> {
        public abstract void onResult(List<? extends Value> list, int i, int i2);
    }

    public static class LoadInitialParams<Key> {
        public final boolean placeholdersEnabled;
        public final Key requestedInitialKey;
        public final int requestedLoadSize;

        public LoadInitialParams(Key key, int i, boolean z) {
            this.requestedInitialKey = key;
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

    public ItemKeyedDataSource() {
        super(DataSource.KeyType.ITEM_KEYED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnonymousClass1 asCallback(final a31<? super DataSource.BaseResult<Value>> a31Var) {
        return new LoadCallback<Value>() { // from class: androidx.paging.ItemKeyedDataSource.asCallback.1
            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(List<? extends Value> list) {
                list.getClass();
                a31Var.resumeWith(new DataSource.BaseResult(list, this.getPrevKey$paging_common(list), this.getNextKey$paging_common(list), 0, 0, 24, null));
            }
        };
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

    public abstract Key getKey(Value value);

    @Override // androidx.paging.DataSource
    public Key getKeyInternal$paging_common(Value value) {
        value.getClass();
        return getKey(value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Key getNextKey$paging_common(List<? extends Value> list) {
        list.getClass();
        Object objC0 = qn1.c0(list);
        if (objC0 != null) {
            return (Key) getKey(objC0);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Key getPrevKey$paging_common(List<? extends Value> list) {
        list.getClass();
        Object objV = qn1.V(list);
        if (objV != null) {
            return (Key) getKey(objV);
        }
        return null;
    }

    @Override // androidx.paging.DataSource
    public final Object load$paging_common(DataSource.Params<Key> params, e02<? super DataSource.BaseResult<Value>> e02Var) {
        int i = WhenMappings.$EnumSwitchMapping$0[params.getType$paging_common().ordinal()];
        if (i == 1) {
            return loadInitial$paging_common(new LoadInitialParams<>(params.getKey(), params.getInitialLoadSize(), params.getPlaceholdersEnabled()), e02Var);
        }
        if (i == 2) {
            Key key = params.getKey();
            key.getClass();
            return loadBefore$paging_common(new LoadParams<>(key, params.getPageSize()), e02Var);
        }
        if (i != 3) {
            me0.e();
            return null;
        }
        Key key2 = params.getKey();
        key2.getClass();
        return loadAfter$paging_common(new LoadParams<>(key2, params.getPageSize()), e02Var);
    }

    public abstract void loadAfter(LoadParams<Key> loadParams, LoadCallback<Value> loadCallback);

    public final Object loadAfter$paging_common(LoadParams<Key> loadParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadAfter(loadParams, asCallback(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public abstract void loadBefore(LoadParams<Key> loadParams, LoadCallback<Value> loadCallback);

    public final Object loadBefore$paging_common(LoadParams<Key> loadParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadBefore(loadParams, asCallback(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public abstract void loadInitial(LoadInitialParams<Key> loadInitialParams, LoadInitialCallback<Value> loadInitialCallback);

    public final Object loadInitial$paging_common(LoadInitialParams<Key> loadInitialParams, e02<? super DataSource.BaseResult<Value>> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadInitial(loadInitialParams, new LoadInitialCallback<Value>() { // from class: androidx.paging.ItemKeyedDataSource$loadInitial$2$1
            @Override // androidx.paging.ItemKeyedDataSource.LoadInitialCallback
            public void onResult(List<? extends Value> list, int i, int i2) {
                list.getClass();
                c31Var.resumeWith(new DataSource.BaseResult(list, this.getPrevKey$paging_common(list), this.getNextKey$paging_common(list), i, (i2 - list.size()) - i));
            }

            @Override // androidx.paging.ItemKeyedDataSource.LoadCallback
            public void onResult(List<? extends Value> list) {
                list.getClass();
                c31Var.resumeWith(new DataSource.BaseResult(list, this.getPrevKey$paging_common(list), this.getNextKey$paging_common(list), 0, 0, 24, null));
            }
        });
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> map(Function<Value, ToValue> function) {
        function.getClass();
        return mapByPage((Function) new fg2(function, 2));
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> mapByPage(nl3<? super List<? extends Value>, ? extends List<? extends ToValue>> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new ow0(nl3Var, 1));
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> mapByPage(Function<List<Value>, List<ToValue>> function) {
        function.getClass();
        return new WrapperItemKeyedDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    public final <ToValue> ItemKeyedDataSource<Key, ToValue> map(nl3<? super Value, ? extends ToValue> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new zm3(nl3Var, 1));
    }
}
