package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.eg;
import defpackage.fg;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l91;
import defpackage.me0;
import defpackage.mz0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.sd3;
import defpackage.u96;
import defpackage.x81;
import defpackage.yg5;
import defpackage.yq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class PageFetcherSnapshotState<Key, Value> {
    private final List<PagingSource.LoadResult.Page<Key, Value>> _pages;
    private int _placeholdersAfter;
    private int _placeholdersBefore;
    private int appendGenerationId;
    private final x81<Integer> appendGenerationIdCh;
    private final PagingConfig config;
    private final Map<LoadType, ViewportHint> failedHintsByLoadType;
    private int initialPageIndex;
    private final Map<Integer, Key> pageKeys;
    private final List<PagingSource.LoadResult.Page<Key, Value>> pages;
    private int prependGenerationId;
    private final x81<Integer> prependGenerationIdCh;
    private MutableLoadStateCollection sourceLoadStates;

    public static final class Holder<Key, Value> {
        private final PagingConfig config;
        private final yg5 lock;
        private final PageFetcherSnapshotState<Key, Value> state;

        public Holder(PagingConfig pagingConfig) {
            pagingConfig.getClass();
            this.config = pagingConfig;
            this.lock = new ch5();
            this.state = new PageFetcherSnapshotState<>(pagingConfig, null);
        }

        private final <T> Object withLock$$forInline(nl3<? super PageFetcherSnapshotState<Key, Value>, ? extends T> nl3Var, e02<? super T> e02Var) {
            yg5 yg5Var = this.lock;
            yg5Var.lock(null, e02Var);
            try {
                return nl3Var.invoke(this.state);
            } finally {
                yg5Var.unlock(null);
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final <T> Object withLock(nl3<? super PageFetcherSnapshotState<Key, Value>, ? extends T> nl3Var, e02<? super T> e02Var) {
            PageFetcherSnapshotState$Holder$withLock$1 pageFetcherSnapshotState$Holder$withLock$1;
            yg5 yg5Var;
            if (e02Var instanceof PageFetcherSnapshotState$Holder$withLock$1) {
                pageFetcherSnapshotState$Holder$withLock$1 = (PageFetcherSnapshotState$Holder$withLock$1) e02Var;
                int i = pageFetcherSnapshotState$Holder$withLock$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    pageFetcherSnapshotState$Holder$withLock$1.label = i - Integer.MIN_VALUE;
                } else {
                    pageFetcherSnapshotState$Holder$withLock$1 = new PageFetcherSnapshotState$Holder$withLock$1(this, e02Var);
                }
            } else {
                pageFetcherSnapshotState$Holder$withLock$1 = new PageFetcherSnapshotState$Holder$withLock$1(this, e02Var);
            }
            Object obj = pageFetcherSnapshotState$Holder$withLock$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = pageFetcherSnapshotState$Holder$withLock$1.label;
            if (i2 == 0) {
                r57.b(obj);
                yg5Var = this.lock;
                pageFetcherSnapshotState$Holder$withLock$1.L$0 = nl3Var;
                pageFetcherSnapshotState$Holder$withLock$1.L$1 = yg5Var;
                pageFetcherSnapshotState$Holder$withLock$1.label = 1;
                if (yg5Var.lock(null, pageFetcherSnapshotState$Holder$withLock$1) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                yg5 yg5Var2 = (yg5) pageFetcherSnapshotState$Holder$withLock$1.L$1;
                nl3<? super PageFetcherSnapshotState<Key, Value>, ? extends T> nl3Var2 = (nl3) pageFetcherSnapshotState$Holder$withLock$1.L$0;
                r57.b(obj);
                yg5Var = yg5Var2;
                nl3Var = nl3Var2;
            }
            try {
                return nl3Var.invoke(this.state);
            } finally {
                yg5Var.unlock(null);
            }
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

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1", f = "PageFetcherSnapshotState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<id3<? super Integer>, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ PageFetcherSnapshotState<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshotState;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Integer> id3Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((PageFetcherSnapshotState) this.this$0).appendGenerationIdCh.mo0trySendJP2dKIU(new Integer(((PageFetcherSnapshotState) this.this$0).appendGenerationId));
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1", f = "PageFetcherSnapshotState.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C07081 extends pg8 implements bm3<id3<? super Integer>, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ PageFetcherSnapshotState<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07081(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, e02<? super C07081> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshotState;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07081(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super Integer> id3Var, e02<? super j59> e02Var) {
            return ((C07081) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            ((PageFetcherSnapshotState) this.this$0).prependGenerationIdCh.mo0trySendJP2dKIU(new Integer(((PageFetcherSnapshotState) this.this$0).prependGenerationId));
            return j59.a;
        }
    }

    private PageFetcherSnapshotState(PagingConfig pagingConfig) {
        this.config = pagingConfig;
        ArrayList arrayList = new ArrayList();
        this._pages = arrayList;
        this.pages = arrayList;
        this.pageKeys = new LinkedHashMap();
        this.prependGenerationIdCh = l91.a(-1, null, null, 6);
        this.appendGenerationIdCh = l91.a(-1, null, null, 6);
        this.failedHintsByLoadType = new LinkedHashMap();
        MutableLoadStateCollection mutableLoadStateCollection = new MutableLoadStateCollection();
        mutableLoadStateCollection.set(LoadType.REFRESH, LoadState.Loading.INSTANCE);
        this.sourceLoadStates = mutableLoadStateCollection;
    }

    public final hd3<Integer> consumeAppendGenerationIdAsFlow() {
        return new ce3(sd3.a(this.appendGenerationIdCh), new AnonymousClass1(this, null));
    }

    public final hd3<Integer> consumePrependGenerationIdAsFlow() {
        return new ce3(sd3.a(this.prependGenerationIdCh), new C07081(this, null));
    }

    public final PagingState<Key, Value> currentPagingState$paging_common(ViewportHint.Access access) {
        Integer numValueOf;
        List listT0 = qn1.t0(this.pages);
        if (access != null) {
            int placeholdersBefore$paging_common = getPlaceholdersBefore$paging_common();
            int i = -this.initialPageIndex;
            int iG = u96.g(this.pages) - this.initialPageIndex;
            int pageOffset = access.getPageOffset();
            int i2 = i;
            while (i2 < pageOffset) {
                placeholdersBefore$paging_common += i2 > iG ? this.config.pageSize : this.pages.get(this.initialPageIndex + i2).getData().size();
                i2++;
            }
            int indexInPage = access.getIndexInPage() + placeholdersBefore$paging_common;
            if (access.getPageOffset() < i) {
                indexInPage -= this.config.pageSize;
            }
            numValueOf = Integer.valueOf(indexInPage);
        } else {
            numValueOf = null;
        }
        return new PagingState<>(listT0, numValueOf, this.config, getPlaceholdersBefore$paging_common());
    }

    public final void drop(PageEvent.Drop<Value> drop) {
        drop.getClass();
        if (drop.getPageCount() > this.pages.size()) {
            throw new IllegalStateException(("invalid drop count. have " + this.pages.size() + " but wanted to drop " + drop.getPageCount()).toString());
        }
        this.failedHintsByLoadType.remove(drop.getLoadType());
        this.sourceLoadStates.set(drop.getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
        int i = WhenMappings.$EnumSwitchMapping$0[drop.getLoadType().ordinal()];
        if (i == 2) {
            int pageCount = drop.getPageCount();
            for (int i2 = 0; i2 < pageCount; i2++) {
                this.pageKeys.remove(Integer.valueOf(this._pages.remove(0).hashCode()));
            }
            this.initialPageIndex -= drop.getPageCount();
            setPlaceholdersBefore$paging_common(drop.getPlaceholdersRemaining());
            int i3 = this.prependGenerationId + 1;
            this.prependGenerationId = i3;
            this.prependGenerationIdCh.mo0trySendJP2dKIU(Integer.valueOf(i3));
            return;
        }
        if (i != 3) {
            mz0.c(drop.getLoadType(), "cannot drop ");
            return;
        }
        int pageCount2 = drop.getPageCount();
        for (int i4 = 0; i4 < pageCount2; i4++) {
            this.pageKeys.remove(Integer.valueOf(this._pages.remove(this.pages.size() - 1).hashCode()));
        }
        setPlaceholdersAfter$paging_common(drop.getPlaceholdersRemaining());
        int i5 = this.appendGenerationId + 1;
        this.appendGenerationId = i5;
        this.appendGenerationIdCh.mo0trySendJP2dKIU(Integer.valueOf(i5));
    }

    public final PageEvent.Drop<Value> dropEventOrNull(LoadType loadType, ViewportHint viewportHint) {
        loadType.getClass();
        viewportHint.getClass();
        if (this.config.maxSize == Integer.MAX_VALUE || this.pages.size() <= 2 || getStorageCount$paging_common() <= this.config.maxSize) {
            return null;
        }
        if (loadType == LoadType.REFRESH) {
            eg.d(loadType, "Drop LoadType must be PREPEND or APPEND, but got ");
            return null;
        }
        int placeholdersBefore$paging_common = 0;
        int i = 0;
        int i2 = 0;
        while (i < this.pages.size() && getStorageCount$paging_common() - i2 > this.config.maxSize) {
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i3 = iArr[loadType.ordinal()];
            List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
            int size = i3 == 2 ? list.get(i).getData().size() : list.get(u96.g(list) - i).getData().size();
            if (((iArr[loadType.ordinal()] == 2 ? viewportHint.getPresentedItemsBefore() : viewportHint.getPresentedItemsAfter()) - i2) - size < this.config.prefetchDistance) {
                break;
            }
            i2 += size;
            i++;
        }
        if (i == 0) {
            return null;
        }
        int[] iArr2 = WhenMappings.$EnumSwitchMapping$0;
        int iG = iArr2[loadType.ordinal()] == 2 ? -this.initialPageIndex : (u96.g(this.pages) - this.initialPageIndex) - (i - 1);
        int iG2 = iArr2[loadType.ordinal()] == 2 ? (i - 1) - this.initialPageIndex : u96.g(this.pages) - this.initialPageIndex;
        if (this.config.enablePlaceholders) {
            placeholdersBefore$paging_common = (loadType == LoadType.PREPEND ? getPlaceholdersBefore$paging_common() : getPlaceholdersAfter$paging_common()) + i2;
        }
        return new PageEvent.Drop<>(loadType, iG, iG2, placeholdersBefore$paging_common);
    }

    public final int generationId$paging_common(LoadType loadType) {
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            fg.c("Cannot get loadId for loadType: REFRESH");
            return 0;
        }
        if (i == 2) {
            return this.prependGenerationId;
        }
        if (i == 3) {
            return this.appendGenerationId;
        }
        me0.e();
        return 0;
    }

    public final Map<LoadType, ViewportHint> getFailedHintsByLoadType$paging_common() {
        return this.failedHintsByLoadType;
    }

    public final int getInitialPageIndex$paging_common() {
        return this.initialPageIndex;
    }

    public final Key getLoadKey(PagingSource.LoadResult.Page<Key, Value> page) {
        page.getClass();
        int iHashCode = page.hashCode();
        if (this.pageKeys.containsKey(Integer.valueOf(iHashCode))) {
            return this.pageKeys.get(Integer.valueOf(iHashCode));
        }
        yq.c(page, "Load key not found for Page ", ". This likely indicates an error in the library. Please file a bug in the Buganizer.");
        return null;
    }

    public final List<PagingSource.LoadResult.Page<Key, Value>> getPages$paging_common() {
        return this.pages;
    }

    public final int getPlaceholdersAfter$paging_common() {
        if (this.config.enablePlaceholders) {
            return this._placeholdersAfter;
        }
        return 0;
    }

    public final int getPlaceholdersBefore$paging_common() {
        if (this.config.enablePlaceholders) {
            return this._placeholdersBefore;
        }
        return 0;
    }

    public final MutableLoadStateCollection getSourceLoadStates$paging_common() {
        return this.sourceLoadStates;
    }

    public final int getStorageCount$paging_common() {
        Iterator<T> it = this.pages.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((PagingSource.LoadResult.Page) it.next()).getData().size();
        }
        return size;
    }

    public final boolean insert(int i, LoadType loadType, PagingSource.LoadResult.Page<Key, Value> page, Key key) {
        loadType.getClass();
        page.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        int itemsBefore = 0;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    me0.e();
                    return false;
                }
                if (this.pages.isEmpty()) {
                    ah.f("should've received an init before append");
                    return false;
                }
                if (i != this.appendGenerationId) {
                    return false;
                }
                this._pages.add(page);
                this.pageKeys.put(Integer.valueOf(page.hashCode()), key);
                if (page.getItemsAfter() == Integer.MIN_VALUE) {
                    int placeholdersAfter$paging_common = getPlaceholdersAfter$paging_common() - page.getData().size();
                    if (placeholdersAfter$paging_common >= 0) {
                        itemsBefore = placeholdersAfter$paging_common;
                    }
                } else {
                    itemsBefore = page.getItemsAfter();
                }
                setPlaceholdersAfter$paging_common(itemsBefore);
                this.failedHintsByLoadType.remove(LoadType.APPEND);
            } else {
                if (this.pages.isEmpty()) {
                    ah.f("should've received an init before prepend");
                    return false;
                }
                if (i != this.prependGenerationId) {
                    return false;
                }
                this._pages.add(0, page);
                this.pageKeys.put(Integer.valueOf(page.hashCode()), key);
                this.initialPageIndex++;
                if (page.getItemsBefore() == Integer.MIN_VALUE) {
                    int placeholdersBefore$paging_common = getPlaceholdersBefore$paging_common() - page.getData().size();
                    if (placeholdersBefore$paging_common >= 0) {
                        itemsBefore = placeholdersBefore$paging_common;
                    }
                } else {
                    itemsBefore = page.getItemsBefore();
                }
                setPlaceholdersBefore$paging_common(itemsBefore);
                this.failedHintsByLoadType.remove(LoadType.PREPEND);
            }
        } else {
            if (!this.pages.isEmpty()) {
                ah.f("cannot receive multiple init calls");
                return false;
            }
            if (i != 0) {
                ah.f("init loadId must be the initial value, 0");
                return false;
            }
            this._pages.add(page);
            this.pageKeys.put(Integer.valueOf(page.hashCode()), key);
            this.initialPageIndex = 0;
            setPlaceholdersAfter$paging_common(page.getItemsAfter());
            setPlaceholdersBefore$paging_common(page.getItemsBefore());
            j59 j59Var = j59.a;
        }
        return true;
    }

    public final void setPlaceholdersAfter$paging_common(int i) {
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        this._placeholdersAfter = i;
    }

    public final void setPlaceholdersBefore$paging_common(int i) {
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        this._placeholdersBefore = i;
    }

    public final PageEvent<Value> toPageEvent$paging_common(PagingSource.LoadResult.Page<Key, Value> page, LoadType loadType) {
        page.getClass();
        loadType.getClass();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[loadType.ordinal()];
        int size = 0;
        if (i != 1) {
            if (i == 2) {
                size = 0 - this.initialPageIndex;
            } else {
                if (i != 3) {
                    me0.e();
                    return null;
                }
                size = (this.pages.size() - this.initialPageIndex) - 1;
            }
        }
        List listH = u96.h(new TransformablePage(size, page.getData()));
        int i2 = iArr[loadType.ordinal()];
        if (i2 == 1) {
            return PageEvent.Insert.Companion.Refresh(listH, getPlaceholdersBefore$paging_common(), getPlaceholdersAfter$paging_common(), this.sourceLoadStates.snapshot(), null);
        }
        if (i2 == 2) {
            return PageEvent.Insert.Companion.Prepend(listH, getPlaceholdersBefore$paging_common(), this.sourceLoadStates.snapshot(), null);
        }
        if (i2 == 3) {
            return PageEvent.Insert.Companion.Append(listH, getPlaceholdersAfter$paging_common(), this.sourceLoadStates.snapshot(), null);
        }
        me0.e();
        return null;
    }

    public /* synthetic */ PageFetcherSnapshotState(PagingConfig pagingConfig, jh2 jh2Var) {
        this(pagingConfig);
    }
}
