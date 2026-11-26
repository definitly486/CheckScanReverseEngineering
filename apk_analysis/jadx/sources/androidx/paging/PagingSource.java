package androidx.paging;

import defpackage.aa4;
import defpackage.e02;
import defpackage.ej0;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.me0;
import defpackage.na8;
import defpackage.p12;
import defpackage.qn1;
import defpackage.re4;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PagingSource<Key, Value> {
    private final InvalidateCallbackTracker<ll3<j59>> invalidateCallbackTracker = new InvalidateCallbackTracker<>(new p12(3), null, 2, 0 == true ? 1 : 0);

    public static abstract class LoadResult<Key, Value> {

        public static final class Error<Key, Value> extends LoadResult<Key, Value> {
            private final Throwable throwable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(Throwable th) {
                super(null);
                th.getClass();
                this.throwable = th;
            }

            public static /* synthetic */ Error copy$default(Error error, Throwable th, int i, Object obj) {
                if ((i & 1) != 0) {
                    th = error.throwable;
                }
                return error.copy(th);
            }

            public final Throwable component1() {
                return this.throwable;
            }

            public final Error<Key, Value> copy(Throwable th) {
                th.getClass();
                return new Error<>(th);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && aa4.e(this.throwable, ((Error) obj).throwable);
            }

            public final Throwable getThrowable() {
                return this.throwable;
            }

            public int hashCode() {
                return this.throwable.hashCode();
            }

            public String toString() {
                return na8.j("LoadResult.Error(\n                    |   throwable: " + this.throwable + "\n                    |) ");
            }
        }

        public static final class Invalid<Key, Value> extends LoadResult<Key, Value> {
            public Invalid() {
                super(null);
            }

            public String toString() {
                return "LoadResult.Invalid";
            }
        }

        public /* synthetic */ LoadResult(jh2 jh2Var) {
            this();
        }

        public static final class Page<Key, Value> extends LoadResult<Key, Value> implements Iterable<Value>, re4 {
            public static final int COUNT_UNDEFINED = Integer.MIN_VALUE;
            public static final Companion Companion = new Companion(null);
            private static final Page EMPTY = new Page(kx2.b, null, null, 0, 0);
            private final List<Value> data;
            private final int itemsAfter;
            private final int itemsBefore;
            private final Key nextKey;
            private final Key prevKey;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Page(List<? extends Value> list, Key key, Key key2, int i, int i2) {
                super(null);
                list.getClass();
                this.data = list;
                this.prevKey = key;
                this.nextKey = key2;
                this.itemsBefore = i;
                this.itemsAfter = i2;
                if (i != Integer.MIN_VALUE && i < 0) {
                    fg.c("itemsBefore cannot be negative");
                    throw null;
                }
                if (i2 == Integer.MIN_VALUE || i2 >= 0) {
                    return;
                }
                fg.c("itemsAfter cannot be negative");
                throw null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Page copy$default(Page page, List list, Object obj, Object obj2, int i, int i2, int i3, Object obj3) {
                if ((i3 & 1) != 0) {
                    list = page.data;
                }
                if ((i3 & 2) != 0) {
                    obj = page.prevKey;
                }
                if ((i3 & 4) != 0) {
                    obj2 = page.nextKey;
                }
                if ((i3 & 8) != 0) {
                    i = page.itemsBefore;
                }
                if ((i3 & 16) != 0) {
                    i2 = page.itemsAfter;
                }
                int i4 = i2;
                Object obj4 = obj2;
                return page.copy(list, obj, obj4, i, i4);
            }

            public final List<Value> component1() {
                return this.data;
            }

            public final Key component2() {
                return this.prevKey;
            }

            public final Key component3() {
                return this.nextKey;
            }

            public final int component4() {
                return this.itemsBefore;
            }

            public final int component5() {
                return this.itemsAfter;
            }

            public final Page<Key, Value> copy(List<? extends Value> list, Key key, Key key2, int i, int i2) {
                list.getClass();
                return new Page<>(list, key, key2, i, i2);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Page)) {
                    return false;
                }
                Page page = (Page) obj;
                return aa4.e(this.data, page.data) && aa4.e(this.prevKey, page.prevKey) && aa4.e(this.nextKey, page.nextKey) && this.itemsBefore == page.itemsBefore && this.itemsAfter == page.itemsAfter;
            }

            public final List<Value> getData() {
                return this.data;
            }

            public final int getItemsAfter() {
                return this.itemsAfter;
            }

            public final int getItemsBefore() {
                return this.itemsBefore;
            }

            public final Key getNextKey() {
                return this.nextKey;
            }

            public final Key getPrevKey() {
                return this.prevKey;
            }

            public int hashCode() {
                int iHashCode = this.data.hashCode() * 31;
                Key key = this.prevKey;
                int iHashCode2 = (iHashCode + (key == null ? 0 : key.hashCode())) * 31;
                Key key2 = this.nextKey;
                return Integer.hashCode(this.itemsAfter) + ej0.b(this.itemsBefore, (iHashCode2 + (key2 != null ? key2.hashCode() : 0)) * 31, 31);
            }

            @Override // java.lang.Iterable
            public Iterator<Value> iterator() {
                return this.data.listIterator();
            }

            public String toString() {
                return na8.j("LoadResult.Page(\n                    |   data size: " + this.data.size() + "\n                    |   first Item: " + qn1.V(this.data) + "\n                    |   last Item: " + qn1.c0(this.data) + "\n                    |   nextKey: " + this.nextKey + "\n                    |   prevKey: " + this.prevKey + "\n                    |   itemsBefore: " + this.itemsBefore + "\n                    |   itemsAfter: " + this.itemsAfter + "\n                    |) ");
            }

            public static final class Companion {
                public /* synthetic */ Companion(jh2 jh2Var) {
                    this();
                }

                public static /* synthetic */ void getEMPTY$paging_common$annotations() {
                }

                public final <Key, Value> Page<Key, Value> empty$paging_common() {
                    Page<Key, Value> eMPTY$paging_common = getEMPTY$paging_common();
                    eMPTY$paging_common.getClass();
                    return eMPTY$paging_common;
                }

                public final Page getEMPTY$paging_common() {
                    return Page.EMPTY;
                }

                private Companion() {
                }
            }

            public /* synthetic */ Page(List list, Object obj, Object obj2, int i, int i2, int i3, jh2 jh2Var) {
                this(list, obj, obj2, (i3 & 8) != 0 ? Integer.MIN_VALUE : i, (i3 & 16) != 0 ? Integer.MIN_VALUE : i2);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Page(List<? extends Value> list, Key key, Key key2) {
                this(list, key, key2, Integer.MIN_VALUE, Integer.MIN_VALUE);
                list.getClass();
            }
        }

        private LoadResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invalidateCallbackTracker$lambda$0(ll3 ll3Var) {
        ll3Var.getClass();
        ll3Var.invoke();
        return j59.a;
    }

    public final boolean getInvalid() {
        return this.invalidateCallbackTracker.getInvalid$paging_common();
    }

    public final int getInvalidateCallbackCount$paging_common() {
        return this.invalidateCallbackTracker.callbackCount$paging_common();
    }

    public boolean getJumpingSupported() {
        return false;
    }

    public boolean getKeyReuseSupported() {
        return false;
    }

    public abstract Key getRefreshKey(PagingState<Key, Value> pagingState);

    public final void invalidate() {
        if (this.invalidateCallbackTracker.invalidate$paging_common()) {
            PagingLogger pagingLogger = PagingLogger.INSTANCE;
            if (pagingLogger.isLoggable(3)) {
                pagingLogger.log(3, "Invalidated PagingSource " + this, null);
            }
        }
    }

    public abstract Object load(LoadParams<Key> loadParams, e02<? super LoadResult<Key, Value>> e02Var);

    public final void registerInvalidatedCallback(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.invalidateCallbackTracker.registerInvalidatedCallback$paging_common(ll3Var);
    }

    public final void unregisterInvalidatedCallback(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.invalidateCallbackTracker.unregisterInvalidatedCallback$paging_common(ll3Var);
    }

    public static abstract class LoadParams<Key> {
        public static final Companion Companion = new Companion(null);
        private final int loadSize;
        private final boolean placeholdersEnabled;

        public static final class Append<Key> extends LoadParams<Key> {
            private final Key key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Append(Key key, int i, boolean z) {
                super(i, z, null);
                key.getClass();
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public Key getKey() {
                return this.key;
            }
        }

        public static final class Prepend<Key> extends LoadParams<Key> {
            private final Key key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Prepend(Key key, int i, boolean z) {
                super(i, z, null);
                key.getClass();
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public Key getKey() {
                return this.key;
            }
        }

        public static final class Refresh<Key> extends LoadParams<Key> {
            private final Key key;

            public Refresh(Key key, int i, boolean z) {
                super(i, z, null);
                this.key = key;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public Key getKey() {
                return this.key;
            }
        }

        private LoadParams(int i, boolean z) {
            this.loadSize = i;
            this.placeholdersEnabled = z;
        }

        public abstract Key getKey();

        public final int getLoadSize() {
            return this.loadSize;
        }

        public final boolean getPlaceholdersEnabled() {
            return this.placeholdersEnabled;
        }

        public static final class Companion {

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

            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final <Key> LoadParams<Key> create(LoadType loadType, Key key, int i, boolean z) {
                loadType.getClass();
                int i2 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
                if (i2 == 1) {
                    return new Refresh(key, i, z);
                }
                if (i2 == 2) {
                    if (key != null) {
                        return new Prepend(key, i, z);
                    }
                    fg.c("key cannot be null for prepend");
                    return null;
                }
                if (i2 != 3) {
                    me0.e();
                    return null;
                }
                if (key != null) {
                    return new Append(key, i, z);
                }
                fg.c("key cannot be null for append");
                return null;
            }

            private Companion() {
            }
        }

        public /* synthetic */ LoadParams(int i, boolean z, jh2 jh2Var) {
            this(i, z);
        }
    }
}
