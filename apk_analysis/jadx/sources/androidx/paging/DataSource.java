package androidx.paging;

import androidx.arch.core.util.Function;
import androidx.paging.DataSource;
import defpackage.aa4;
import defpackage.ah;
import defpackage.ap1;
import defpackage.c9;
import defpackage.e02;
import defpackage.eq;
import defpackage.fg;
import defpackage.g03;
import defpackage.gg;
import defpackage.h03;
import defpackage.if1;
import defpackage.j59;
import defpackage.jf1;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.ln;
import defpackage.n1;
import defpackage.nl3;
import defpackage.oi2;
import defpackage.q5;
import defpackage.qo2;
import defpackage.r22;
import defpackage.r5;
import defpackage.sh2;
import defpackage.v82;
import defpackage.w82;
import defpackage.zu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DataSource<Key, Value> {
    public static final Companion Companion = new Companion(null);
    private final InvalidateCallbackTracker<InvalidatedCallback> invalidateCallbackTracker;
    private final boolean isContiguous;
    private final boolean supportsPageDropping;
    private final KeyType type;

    public interface InvalidatedCallback {
        void onInvalidated();
    }

    public enum KeyType {
        POSITIONAL,
        PAGE_KEYED,
        ITEM_KEYED;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<KeyType> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class Params<K> {
        private final int initialLoadSize;
        private final K key;
        private final int pageSize;
        private final boolean placeholdersEnabled;
        private final LoadType type;

        public Params(LoadType loadType, K k, int i, boolean z, int i2) {
            loadType.getClass();
            this.type = loadType;
            this.key = k;
            this.initialLoadSize = i;
            this.placeholdersEnabled = z;
            this.pageSize = i2;
            if (loadType == LoadType.REFRESH || k != null) {
                return;
            }
            fg.c("Key must be non-null for prepend/append");
            throw null;
        }

        public final int getInitialLoadSize() {
            return this.initialLoadSize;
        }

        public final K getKey() {
            return this.key;
        }

        public final int getPageSize() {
            return this.pageSize;
        }

        public final boolean getPlaceholdersEnabled() {
            return this.placeholdersEnabled;
        }

        public final LoadType getType$paging_common() {
            return this.type;
        }
    }

    public DataSource(KeyType keyType) {
        keyType.getClass();
        this.type = keyType;
        this.invalidateCallbackTracker = new InvalidateCallbackTracker<>(new w82(0), new ap1(this, 1));
        this.isContiguous = true;
        this.supportsPageDropping = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invalidateCallbackTracker$lambda$0(InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        invalidatedCallback.onInvalidated();
        return j59.a;
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
    public static final Object map$lambda$1(nl3 nl3Var, Object obj) {
        obj.getClass();
        return nl3Var.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List mapByPage$lambda$0(nl3 nl3Var, List list) {
        list.getClass();
        return (List) nl3Var.invoke(list);
    }

    public void addInvalidatedCallback(InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.invalidateCallbackTracker.registerInvalidatedCallback$paging_common(invalidatedCallback);
    }

    public final int getInvalidateCallbackCount$paging_common() {
        return this.invalidateCallbackTracker.callbackCount$paging_common();
    }

    public abstract Key getKeyInternal$paging_common(Value value);

    public boolean getSupportsPageDropping$paging_common() {
        return this.supportsPageDropping;
    }

    public final KeyType getType$paging_common() {
        return this.type;
    }

    public void invalidate() {
        this.invalidateCallbackTracker.invalidate$paging_common();
    }

    public boolean isContiguous$paging_common() {
        return this.isContiguous;
    }

    public boolean isInvalid() {
        return this.invalidateCallbackTracker.getInvalid$paging_common();
    }

    public abstract Object load$paging_common(Params<Key> params, e02<? super BaseResult<Value>> e02Var);

    public <ToValue> DataSource<Key, ToValue> map(Function<Value, ToValue> function) {
        function.getClass();
        return mapByPage(new v82(function, 0));
    }

    public /* synthetic */ DataSource mapByPage(nl3 nl3Var) {
        nl3Var.getClass();
        return mapByPage(new jf1(nl3Var, 1));
    }

    public void removeInvalidatedCallback(InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.invalidateCallbackTracker.unregisterInvalidatedCallback$paging_common(invalidatedCallback);
    }

    public static final class BaseResult<Value> {
        public static final Companion Companion = new Companion(null);
        public final List<Value> data;
        private final int itemsAfter;
        private final int itemsBefore;
        private final Object nextKey;
        private final Object prevKey;

        /* JADX WARN: Multi-variable type inference failed */
        public BaseResult(List<? extends Value> list, Object obj, Object obj2, int i, int i2) {
            list.getClass();
            this.data = list;
            this.prevKey = obj;
            this.nextKey = obj2;
            this.itemsBefore = i;
            this.itemsAfter = i2;
            if (i < 0 && i != Integer.MIN_VALUE) {
                fg.c("Position must be non-negative");
                throw null;
            }
            if (list.isEmpty() && (i > 0 || i2 > 0)) {
                fg.c("Initial result cannot be empty if items are present in data set.");
                throw null;
            }
            if (i2 >= 0 || i2 == Integer.MIN_VALUE) {
                return;
            }
            fg.c("List size + position too large, last item in list beyond totalCount.");
            throw null;
        }

        public boolean equals(Object obj) {
            if (obj instanceof BaseResult) {
                BaseResult baseResult = (BaseResult) obj;
                if (aa4.e(this.data, baseResult.data) && aa4.e(this.prevKey, baseResult.prevKey) && aa4.e(this.nextKey, baseResult.nextKey) && this.itemsBefore == baseResult.itemsBefore && this.itemsAfter == baseResult.itemsAfter) {
                    return true;
                }
            }
            return false;
        }

        public final int getItemsAfter() {
            return this.itemsAfter;
        }

        public final int getItemsBefore() {
            return this.itemsBefore;
        }

        public final Object getNextKey() {
            return this.nextKey;
        }

        public final Object getPrevKey() {
            return this.prevKey;
        }

        public final void validateForInitialTiling$paging_common(int i) {
            int i2;
            if (this.itemsBefore == Integer.MIN_VALUE || (i2 = this.itemsAfter) == Integer.MIN_VALUE) {
                ah.f("Placeholders requested, but totalCount not provided. Please call the three-parameter onResult method, or disable placeholders in the PagedList.Config");
                return;
            }
            if (i2 <= 0 || this.data.size() % i == 0) {
                if (this.itemsBefore % i == 0) {
                    return;
                }
                eq.d(", pageSize = ", this.itemsBefore, i, "Initial load must be pageSize aligned.Position = ");
            } else {
                int size = this.data.size() + this.itemsBefore + this.itemsAfter;
                StringBuilder sb = new StringBuilder("PositionalDataSource requires initial load size to be a multiple of page size to support internal tiling. loadSize ");
                sb.append(this.data.size());
                sb.append(", position ");
                gg.e(sb, this.itemsBefore, ", totalCount ", size, ", pageSize ");
                ln.f(i, sb);
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final <ToValue, Value> BaseResult<Value> convert$paging_common(BaseResult<ToValue> baseResult, Function<List<ToValue>, List<Value>> function) {
                baseResult.getClass();
                function.getClass();
                return new BaseResult<>(DataSource.Companion.convert$paging_common(function, baseResult.data), baseResult.getPrevKey(), baseResult.getNextKey(), baseResult.getItemsBefore(), baseResult.getItemsAfter());
            }

            public final <T> BaseResult<T> empty$paging_common() {
                return new BaseResult<>(kx2.b, null, null, 0, 0);
            }

            private Companion() {
            }
        }

        public /* synthetic */ BaseResult(List list, Object obj, Object obj2, int i, int i2, int i3, jh2 jh2Var) {
            this(list, obj, obj2, (i3 & 8) != 0 ? Integer.MIN_VALUE : i, (i3 & 16) != 0 ? Integer.MIN_VALUE : i2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <A, B> List<B> convert$paging_common(Function<List<A>, List<B>> function, List<? extends A> list) {
            function.getClass();
            list.getClass();
            List<B> listApply = function.apply(list);
            if (listApply.size() == list.size()) {
                return listApply;
            }
            c9.g(function, "Invalid Function ", " changed return size. This is not supported.");
            return null;
        }

        private Companion() {
        }
    }

    public static abstract class Factory<Key, Value> {
        public static ll3 asPagingSourceFactory$default(Factory factory, r22 r22Var, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: asPagingSourceFactory");
                return null;
            }
            if ((i & 1) != 0) {
                oi2 oi2Var = qo2.a;
                r22Var = sh2.c;
            }
            return factory.asPagingSourceFactory(r22Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PagingSource asPagingSourceFactory$lambda$0(r22 r22Var, Factory factory) {
            return new LegacyPagingSource(r22Var, factory.create());
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

        public final ll3<PagingSource<Key, Value>> asPagingSourceFactory(final r22 r22Var) {
            r22Var.getClass();
            return new SuspendingPagingSourceFactory(r22Var, new ll3() { // from class: x82
                @Override // defpackage.ll3
                public final Object invoke() {
                    return DataSource.Factory.asPagingSourceFactory$lambda$0(r22Var, this);
                }
            });
        }

        public abstract DataSource<Key, Value> create();

        public /* synthetic */ Factory map(nl3 nl3Var) {
            nl3Var.getClass();
            return mapByPage(new q5(nl3Var, 1));
        }

        public /* synthetic */ Factory mapByPage(nl3 nl3Var) {
            nl3Var.getClass();
            return mapByPage(new r5(nl3Var, 1));
        }

        public final ll3<PagingSource<Key, Value>> asPagingSourceFactory() {
            return asPagingSourceFactory$default(this, null, 1, null);
        }

        public <ToValue> Factory<Key, ToValue> map(Function<Value, ToValue> function) {
            function.getClass();
            return mapByPage(new zu(function));
        }

        public <ToValue> Factory<Key, ToValue> mapByPage(final Function<List<Value>, List<ToValue>> function) {
            function.getClass();
            return new Factory<Key, ToValue>(this) { // from class: androidx.paging.DataSource$Factory$mapByPage$1
                final /* synthetic */ DataSource.Factory<Key, Value> this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.paging.DataSource.Factory
                public DataSource<Key, ToValue> create() {
                    return this.this$0.create().mapByPage((Function) function);
                }
            };
        }
    }

    public /* synthetic */ DataSource map(nl3 nl3Var) {
        nl3Var.getClass();
        return map(new if1(nl3Var, 1));
    }

    public <ToValue> DataSource<Key, ToValue> mapByPage(Function<List<Value>, List<ToValue>> function) {
        function.getClass();
        return new WrapperDataSource(this, function);
    }
}
