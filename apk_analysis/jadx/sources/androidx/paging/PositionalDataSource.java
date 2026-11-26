package androidx.paging;

import androidx.arch.core.util.Function;
import defpackage.a31;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j2;
import defpackage.jh;
import defpackage.jh2;
import defpackage.k3;
import defpackage.kn1;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.v90;
import defpackage.x90;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public abstract class PositionalDataSource<T> extends DataSource<Integer, T> {
    public static final Companion Companion = new Companion(null);
    private final boolean isContiguous;

    public static abstract class LoadInitialCallback<T> {
        public abstract void onResult(List<? extends T> list, int i);

        public abstract void onResult(List<? extends T> list, int i, int i2);
    }

    public static class LoadInitialParams {
        public final int pageSize;
        public final boolean placeholdersEnabled;
        public final int requestedLoadSize;
        public final int requestedStartPosition;

        public LoadInitialParams(int i, int i2, int i3, boolean z) {
            this.requestedStartPosition = i;
            this.requestedLoadSize = i2;
            this.pageSize = i3;
            this.placeholdersEnabled = z;
            if (i < 0) {
                j2.d(jh.b(i, "invalid start position: "));
                throw null;
            }
            if (i2 < 0) {
                j2.d(jh.b(i2, "invalid load size: "));
                throw null;
            }
            if (i3 >= 0) {
                return;
            }
            j2.d(jh.b(i3, "invalid page size: "));
            throw null;
        }
    }

    public static abstract class LoadRangeCallback<T> {
        public abstract void onResult(List<? extends T> list);
    }

    public static class LoadRangeParams {
        public final int loadSize;
        public final int startPosition;

        public LoadRangeParams(int i, int i2) {
            this.startPosition = i;
            this.loadSize = i2;
        }
    }

    public PositionalDataSource() {
        super(DataSource.KeyType.POSITIONAL);
    }

    public static final int computeInitialLoadPosition(LoadInitialParams loadInitialParams, int i) {
        return Companion.computeInitialLoadPosition(loadInitialParams, i);
    }

    public static final int computeInitialLoadSize(LoadInitialParams loadInitialParams, int i, int i2) {
        return Companion.computeInitialLoadSize(loadInitialParams, i, i2);
    }

    public static /* synthetic */ void isContiguous$paging_common$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadRange(final LoadRangeParams loadRangeParams, e02<? super DataSource.BaseResult<T>> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadRange(loadRangeParams, new LoadRangeCallback<T>() { // from class: androidx.paging.PositionalDataSource$loadRange$2$1
            @Override // androidx.paging.PositionalDataSource.LoadRangeCallback
            public void onResult(List<? extends T> list) {
                list.getClass();
                int i = loadRangeParams.startPosition;
                Integer numValueOf = i == 0 ? null : Integer.valueOf(i);
                boolean zIsInvalid = this.isInvalid();
                a31<DataSource.BaseResult<T>> a31Var = c31Var;
                if (zIsInvalid) {
                    a31Var.resumeWith(DataSource.BaseResult.Companion.empty$paging_common());
                } else {
                    a31Var.resumeWith(new DataSource.BaseResult(list, numValueOf, Integer.valueOf(list.size() + loadRangeParams.startPosition), 0, 0, 24, null));
                }
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
        Iterator<T> it = list2.iterator();
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
        Iterator<T> it = list2.iterator();
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

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.paging.DataSource
    public final Integer getKeyInternal$paging_common(T t) {
        t.getClass();
        throw new IllegalStateException("Cannot get key by item in positionalDataSource");
    }

    @Override // androidx.paging.DataSource
    public boolean isContiguous$paging_common() {
        return this.isContiguous;
    }

    @Override // androidx.paging.DataSource
    public final Object load$paging_common(DataSource.Params<Integer> params, e02<? super DataSource.BaseResult<T>> e02Var) {
        if (params.getType$paging_common() != LoadType.REFRESH) {
            Integer key = params.getKey();
            key.getClass();
            int iIntValue = key.intValue();
            int pageSize = params.getPageSize();
            if (params.getType$paging_common() == LoadType.PREPEND) {
                pageSize = Math.min(pageSize, iIntValue);
                iIntValue -= pageSize;
            }
            return loadRange(new LoadRangeParams(iIntValue, pageSize), e02Var);
        }
        int initialLoadSize = params.getInitialLoadSize();
        int iMax = 0;
        if (params.getKey() != null) {
            int iIntValue2 = params.getKey().intValue();
            if (params.getPlaceholdersEnabled()) {
                initialLoadSize = Math.max(initialLoadSize / params.getPageSize(), 2) * params.getPageSize();
                iMax = Math.max(0, params.getPageSize() * ((iIntValue2 - (initialLoadSize / 2)) / params.getPageSize()));
            } else {
                iMax = Math.max(0, iIntValue2 - (initialLoadSize / 2));
            }
        }
        return loadInitial$paging_common(new LoadInitialParams(iMax, initialLoadSize, params.getPageSize(), params.getPlaceholdersEnabled()), e02Var);
    }

    public abstract void loadInitial(LoadInitialParams loadInitialParams, LoadInitialCallback<T> loadInitialCallback);

    public final Object loadInitial$paging_common(final LoadInitialParams loadInitialParams, e02<? super DataSource.BaseResult<T>> e02Var) throws Throwable {
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        loadInitial(loadInitialParams, new LoadInitialCallback<T>(this) { // from class: androidx.paging.PositionalDataSource$loadInitial$2$1
            final /* synthetic */ PositionalDataSource<T> this$0;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.this$0 = this;
            }

            private final void resume(PositionalDataSource.LoadInitialParams loadInitialParams2, DataSource.BaseResult<T> baseResult) {
                if (loadInitialParams2.placeholdersEnabled) {
                    baseResult.validateForInitialTiling$paging_common(loadInitialParams2.pageSize);
                }
                c31Var.resumeWith(baseResult);
            }

            @Override // androidx.paging.PositionalDataSource.LoadInitialCallback
            public void onResult(List<? extends T> list, int i, int i2) {
                list.getClass();
                if (this.this$0.isInvalid()) {
                    c31Var.resumeWith(DataSource.BaseResult.Companion.empty$paging_common());
                } else {
                    int size = list.size() + i;
                    resume(loadInitialParams, new DataSource.BaseResult<>(list, i == 0 ? null : Integer.valueOf(i), size != i2 ? Integer.valueOf(size) : null, i, (i2 - list.size()) - i));
                }
            }

            @Override // androidx.paging.PositionalDataSource.LoadInitialCallback
            public void onResult(List<? extends T> list, int i) {
                list.getClass();
                if (this.this$0.isInvalid()) {
                    c31Var.resumeWith(DataSource.BaseResult.Companion.empty$paging_common());
                } else {
                    resume(loadInitialParams, new DataSource.BaseResult<>(list, i == 0 ? null : Integer.valueOf(i), Integer.valueOf(list.size() + i), i, Integer.MIN_VALUE));
                }
            }
        });
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public abstract void loadRange(LoadRangeParams loadRangeParams, LoadRangeCallback<T> loadRangeCallback);

    @Override // androidx.paging.DataSource
    public final <V> PositionalDataSource<V> map(Function<T, V> function) {
        function.getClass();
        return mapByPage((Function) new k3(function, 3));
    }

    @Override // androidx.paging.DataSource
    public final <V> PositionalDataSource<V> mapByPage(nl3<? super List<? extends T>, ? extends List<? extends V>> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new v90(nl3Var, 2));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final int computeInitialLoadPosition(LoadInitialParams loadInitialParams, int i) {
            loadInitialParams.getClass();
            int i2 = loadInitialParams.requestedStartPosition;
            int i3 = loadInitialParams.requestedLoadSize;
            int i4 = loadInitialParams.pageSize;
            return Math.max(0, Math.min(((((i - i3) + i4) - 1) / i4) * i4, (i2 / i4) * i4));
        }

        public final int computeInitialLoadSize(LoadInitialParams loadInitialParams, int i, int i2) {
            loadInitialParams.getClass();
            return Math.min(i2 - i, loadInitialParams.requestedLoadSize);
        }

        private Companion() {
        }
    }

    @Override // androidx.paging.DataSource
    public final <V> PositionalDataSource<V> mapByPage(Function<List<T>, List<V>> function) {
        function.getClass();
        return new WrapperPositionalDataSource(this, function);
    }

    @Override // androidx.paging.DataSource
    public final <V> PositionalDataSource<V> map(nl3<? super T, ? extends V> nl3Var) {
        nl3Var.getClass();
        return mapByPage((Function) new x90(nl3Var, 2));
    }
}
