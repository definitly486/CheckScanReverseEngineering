package androidx.paging;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cm3;
import defpackage.cw3;
import defpackage.e02;
import defpackage.j2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.mm3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.qm3;
import defpackage.r57;
import defpackage.rg;
import defpackage.u96;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyPagingSource<Key, Value> extends PagingSource<Key, Value> implements CompatLegacyPagingSource {
    private static final Companion Companion = new Companion(null);
    private static final int PAGE_SIZE_NOT_SET = Integer.MIN_VALUE;
    private final DataSource<Key, Value> dataSource;
    private final o22 fetchContext;
    private int pageSize;

    /* JADX INFO: renamed from: androidx.paging.LegacyPagingSource$1, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass1 implements DataSource.InvalidatedCallback, mm3 {
        final /* synthetic */ LegacyPagingSource<Key, Value> $tmp0;

        public AnonymousClass1(LegacyPagingSource<Key, Value> legacyPagingSource) {
            this.$tmp0 = legacyPagingSource;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof DataSource.InvalidatedCallback) && (obj instanceof mm3)) {
                return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return new qm3(0, this.$tmp0, LegacyPagingSource.class, "invalidate", "invalidate()V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.paging.DataSource.InvalidatedCallback
        public final void onInvalidated() {
            this.$tmp0.invalidate();
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.KeyType.values().length];
            try {
                iArr[DataSource.KeyType.POSITIONAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSource.KeyType.PAGE_KEYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataSource.KeyType.ITEM_KEYED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.LegacyPagingSource$load$2, reason: invalid class name */
    @bd2(c = "androidx.paging.LegacyPagingSource$load$2", f = "LegacyPagingSource.jvmAndAndroid.kt", l = {103}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super PagingSource.LoadResult.Page<Key, Value>>, Object> {
        final /* synthetic */ DataSource.Params<Key> $dataSourceParams;
        final /* synthetic */ PagingSource.LoadParams<Key> $params;
        int label;
        final /* synthetic */ LegacyPagingSource<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(LegacyPagingSource<Key, Value> legacyPagingSource, DataSource.Params<Key> params, PagingSource.LoadParams<Key> loadParams, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = legacyPagingSource;
            this.$dataSourceParams = params;
            this.$params = loadParams;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$dataSourceParams, this.$params, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super PagingSource.LoadResult.Page<Key, Value>> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                DataSource<Key, Value> dataSource$paging_common = this.this$0.getDataSource$paging_common();
                DataSource.Params<Key> params = this.$dataSourceParams;
                this.label = 1;
                obj = dataSource$paging_common.load$paging_common(params, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            PagingSource.LoadParams<Key> loadParams = this.$params;
            DataSource.BaseResult baseResult = (DataSource.BaseResult) obj;
            List<Value> list = baseResult.data;
            return new PagingSource.LoadResult.Page(list, (list.isEmpty() && (loadParams instanceof PagingSource.LoadParams.Prepend)) ? null : baseResult.getPrevKey(), (baseResult.data.isEmpty() && (loadParams instanceof PagingSource.LoadParams.Append)) ? null : baseResult.getNextKey(), baseResult.getItemsBefore(), baseResult.getItemsAfter());
        }
    }

    public LegacyPagingSource(o22 o22Var, DataSource<Key, Value> dataSource) {
        o22Var.getClass();
        dataSource.getClass();
        this.fetchContext = o22Var;
        this.dataSource = dataSource;
        this.pageSize = Integer.MIN_VALUE;
        dataSource.addInvalidatedCallback(new AnonymousClass1(this));
        registerInvalidatedCallback(new cw3(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(LegacyPagingSource legacyPagingSource) {
        legacyPagingSource.dataSource.removeInvalidatedCallback(new LegacyPagingSource$2$1(legacyPagingSource));
        legacyPagingSource.dataSource.invalidate();
        return j59.a;
    }

    private final int guessPageSize(PagingSource.LoadParams<Key> loadParams) {
        if (loadParams instanceof PagingSource.LoadParams.Refresh) {
            PagingSource.LoadParams.Refresh refresh = (PagingSource.LoadParams.Refresh) loadParams;
            if (refresh.getLoadSize() % 3 == 0) {
                return refresh.getLoadSize() / 3;
            }
        }
        return loadParams.getLoadSize();
    }

    public final DataSource<Key, Value> getDataSource$paging_common() {
        return this.dataSource;
    }

    @Override // androidx.paging.PagingSource
    public boolean getJumpingSupported() {
        return this.dataSource.getType$paging_common() == DataSource.KeyType.POSITIONAL;
    }

    @Override // androidx.paging.PagingSource
    public Key getRefreshKey(PagingState<Key, Value> pagingState) {
        Key prevKey;
        Value valueClosestItemToPosition;
        pagingState.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[this.dataSource.getType$paging_common().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    Integer anchorPosition = pagingState.getAnchorPosition();
                    if (anchorPosition == null || (valueClosestItemToPosition = pagingState.closestItemToPosition(anchorPosition.intValue())) == null) {
                        return null;
                    }
                    return this.dataSource.getKeyInternal$paging_common(valueClosestItemToPosition);
                }
                me0.e();
            }
            return null;
        }
        Integer anchorPosition2 = pagingState.getAnchorPosition();
        if (anchorPosition2 == null) {
            return null;
        }
        int iIntValue = anchorPosition2.intValue();
        int size = iIntValue - ((PagingState) pagingState).leadingPlaceholderCount;
        for (int i2 = 0; i2 < u96.g(pagingState.getPages()) && size > u96.g(pagingState.getPages().get(i2).getData()); i2++) {
            size -= pagingState.getPages().get(i2).getData().size();
        }
        PagingSource.LoadResult.Page<Key, Value> pageClosestPageToPosition = pagingState.closestPageToPosition(iIntValue);
        if (pageClosestPageToPosition == null || (prevKey = pageClosestPageToPosition.getPrevKey()) == null) {
            prevKey = (Key) 0;
        }
        return (Key) Integer.valueOf(prevKey.intValue() + size);
    }

    @Override // androidx.paging.PagingSource
    public Object load(PagingSource.LoadParams<Key> loadParams, e02<? super PagingSource.LoadResult<Key, Value>> e02Var) {
        LoadType loadType;
        if (loadParams instanceof PagingSource.LoadParams.Refresh) {
            loadType = LoadType.REFRESH;
        } else if (loadParams instanceof PagingSource.LoadParams.Append) {
            loadType = LoadType.APPEND;
        } else {
            if (!(loadParams instanceof PagingSource.LoadParams.Prepend)) {
                me0.e();
                return null;
            }
            loadType = LoadType.PREPEND;
        }
        LoadType loadType2 = loadType;
        if (this.pageSize == Integer.MIN_VALUE) {
            System.out.println((Object) "WARNING: pageSize on the LegacyPagingSource is not set.\nWhen using legacy DataSource / DataSourceFactory with Paging3, page size\nshould've been set by the paging library but it is not set yet.\n\nIf you are seeing this message in tests where you are testing DataSource\nin isolation (without a Pager), it is expected and page size will be estimated\nbased on parameters.\n\nIf you are seeing this message despite using a Pager, please file a bug:\nhttps://issuetracker.google.com/issues/new?component=413106");
            this.pageSize = guessPageSize(loadParams);
        }
        return av0.d(this.fetchContext, new AnonymousClass2(this, new DataSource.Params(loadType2, loadParams.getKey(), loadParams.getLoadSize(), loadParams.getPlaceholdersEnabled(), this.pageSize), loadParams, null), e02Var);
    }

    @Override // androidx.paging.CompatLegacyPagingSource
    public void setPageSize(int i) {
        int i2 = this.pageSize;
        if (i2 == Integer.MIN_VALUE || i == i2) {
            this.pageSize = i;
        } else {
            j2.d(rg.h(new StringBuilder("Page size is already set to "), this.pageSize, '.'));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
