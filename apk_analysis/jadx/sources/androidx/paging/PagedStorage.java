package androidx.paging;

import defpackage.bj;
import defpackage.bm3;
import defpackage.kx6;
import defpackage.n7;
import defpackage.qn1;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class PagedStorage<T> extends AbstractList<T> implements LegacyPageFetcher.KeyProvider<Object>, PlaceholderPaddedList<T> {
    private boolean counted;
    private int dataCount;
    private int lastLoadAroundLocalIndex;
    private final List<PagingSource.LoadResult.Page<?, T>> pages;
    private int placeholdersAfter;
    private int placeholdersBefore;
    private int positionOffset;

    public interface Callback {
        void onInitialized(int i);

        void onPageAppended(int i, int i2, int i3);

        void onPagePrepended(int i, int i2, int i3);

        void onPagesRemoved(int i, int i2);

        void onPagesSwappedToPlaceholder(int i, int i2);
    }

    private PagedStorage(PagedStorage<T> pagedStorage) {
        ArrayList arrayList = new ArrayList();
        this.pages = arrayList;
        this.counted = true;
        arrayList.addAll(pagedStorage.pages);
        this.placeholdersBefore = pagedStorage.getPlaceholdersBefore();
        this.placeholdersAfter = pagedStorage.getPlaceholdersAfter();
        this.positionOffset = pagedStorage.positionOffset;
        this.counted = pagedStorage.counted;
        this.dataCount = pagedStorage.getDataCount();
        this.lastLoadAroundLocalIndex = pagedStorage.lastLoadAroundLocalIndex;
    }

    public static /* synthetic */ void appendPage$paging_common$default(PagedStorage pagedStorage, PagingSource.LoadResult.Page page, Callback callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callback = null;
        }
        pagedStorage.appendPage$paging_common(page, callback);
    }

    private final void init(int i, PagingSource.LoadResult.Page<?, T> page, int i2, int i3, boolean z) {
        this.placeholdersBefore = i;
        this.pages.clear();
        this.pages.add(page);
        this.placeholdersAfter = i2;
        this.positionOffset = i3;
        this.dataCount = page.getData().size();
        this.counted = z;
        this.lastLoadAroundLocalIndex = page.getData().size() / 2;
    }

    public static /* synthetic */ void init$default(PagedStorage pagedStorage, int i, PagingSource.LoadResult.Page page, int i2, int i3, Callback callback, boolean z, int i4, Object obj) {
        if ((i4 & 32) != 0) {
            z = true;
        }
        pagedStorage.init(i, page, i2, i3, callback, z);
    }

    private final boolean needsTrim(int i, int i2, int i3) {
        return getDataCount() > i && this.pages.size() > 2 && getDataCount() - this.pages.get(i3).getData().size() >= i2;
    }

    public static /* synthetic */ void prependPage$paging_common$default(PagedStorage pagedStorage, PagingSource.LoadResult.Page page, Callback callback, int i, Object obj) {
        if ((i & 2) != 0) {
            callback = null;
        }
        pagedStorage.prependPage$paging_common(page, callback);
    }

    private final <V> V traversePages(int i, bm3<? super PagingSource.LoadResult.Page<?, T>, ? super Integer, ? extends V> bm3Var) {
        int size = this.pages.size();
        int i2 = 0;
        while (i2 < size) {
            int size2 = this.pages.get(i2).getData().size();
            if (size2 > i) {
                break;
            }
            i -= size2;
            i2++;
        }
        return bm3Var.invoke(this.pages.get(i2), Integer.valueOf(i));
    }

    public final void appendPage$paging_common(PagingSource.LoadResult.Page<?, T> page, Callback callback) {
        page.getClass();
        int size = page.getData().size();
        if (size == 0) {
            return;
        }
        this.pages.add(page);
        this.dataCount = getDataCount() + size;
        int iMin = Math.min(getPlaceholdersAfter(), size);
        int i = size - iMin;
        if (iMin != 0) {
            this.placeholdersAfter = getPlaceholdersAfter() - iMin;
        }
        if (callback != null) {
            callback.onPageAppended((getDataCount() + getPlaceholdersBefore()) - size, iMin, i);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        int placeholdersBefore = i - getPlaceholdersBefore();
        if (i < 0 || i >= size()) {
            bj.d(size(), n7.c(i, "Index: ", ", Size: "));
            return null;
        }
        if (placeholdersBefore < 0 || placeholdersBefore >= getDataCount()) {
            return null;
        }
        return getItem(placeholdersBefore);
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getDataCount() {
        return this.dataCount;
    }

    public final T getFirstLoadedItem$paging_common() {
        return (T) qn1.T(((PagingSource.LoadResult.Page) qn1.T(this.pages)).getData());
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public T getItem(int i) {
        int size = this.pages.size();
        int i2 = 0;
        while (i2 < size) {
            int size2 = this.pages.get(i2).getData().size();
            if (size2 > i) {
                break;
            }
            i -= size2;
            i2++;
        }
        return this.pages.get(i2).getData().get(i);
    }

    public final int getLastLoadAroundIndex() {
        return getPlaceholdersBefore() + this.lastLoadAroundLocalIndex;
    }

    public final T getLastLoadedItem$paging_common() {
        return (T) qn1.b0(((PagingSource.LoadResult.Page) qn1.b0(this.pages)).getData());
    }

    public final int getMiddleOfLoadedRange() {
        return (getDataCount() / 2) + getPlaceholdersBefore();
    }

    @Override // androidx.paging.LegacyPageFetcher.KeyProvider
    public Object getNextKey() {
        if (!this.counted || getPlaceholdersAfter() > 0) {
            return ((PagingSource.LoadResult.Page) qn1.b0(this.pages)).getNextKey();
        }
        return null;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getPlaceholdersAfter() {
        return this.placeholdersAfter;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getPlaceholdersBefore() {
        return this.placeholdersBefore;
    }

    public final int getPositionOffset() {
        return this.positionOffset;
    }

    @Override // androidx.paging.LegacyPageFetcher.KeyProvider
    public Object getPrevKey() {
        if (!this.counted || getPlaceholdersBefore() + this.positionOffset > 0) {
            return ((PagingSource.LoadResult.Page) qn1.T(this.pages)).getPrevKey();
        }
        return null;
    }

    public final PagingState<?, T> getRefreshKeyInfo(PagedList.Config config) {
        config.getClass();
        if (this.pages.isEmpty()) {
            return null;
        }
        return new PagingState<>(qn1.t0(this.pages), Integer.valueOf(getLastLoadAroundIndex()), new PagingConfig(config.pageSize, config.prefetchDistance, config.enablePlaceholders, config.initialLoadSizeHint, config.maxSize, 0, 32, null), getPlaceholdersBefore());
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getSize() {
        return getPlaceholdersAfter() + getDataCount() + getPlaceholdersBefore();
    }

    public final boolean needsTrimFromEnd(int i, int i2) {
        return needsTrim(i, i2, this.pages.size() - 1);
    }

    public final boolean needsTrimFromFront(int i, int i2) {
        return needsTrim(i, i2, 0);
    }

    public final void prependPage$paging_common(PagingSource.LoadResult.Page<?, T> page, Callback callback) {
        page.getClass();
        int size = page.getData().size();
        if (size == 0) {
            return;
        }
        this.pages.add(0, page);
        this.dataCount = getDataCount() + size;
        int iMin = Math.min(getPlaceholdersBefore(), size);
        int i = size - iMin;
        if (iMin != 0) {
            this.placeholdersBefore = getPlaceholdersBefore() - iMin;
        }
        this.positionOffset -= i;
        if (callback != null) {
            callback.onPagePrepended(getPlaceholdersBefore(), iMin, i);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i) {
        return (T) removeAt(i);
    }

    public /* bridge */ Object removeAt(int i) {
        return super.remove(i);
    }

    public final void setLastLoadAroundIndex(int i) {
        this.lastLoadAroundLocalIndex = kx6.f(i - getPlaceholdersBefore(), 0, getDataCount() - 1);
    }

    public final boolean shouldPreTrimNewPage(int i, int i2, int i3) {
        return getDataCount() + i3 > i && this.pages.size() > 1 && getDataCount() >= i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    public final PagedStorage<T> snapshot() {
        return new PagedStorage<>(this);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "leading " + getPlaceholdersBefore() + ", dataCount " + getDataCount() + ", trailing " + getPlaceholdersAfter() + ' ' + qn1.a0(this.pages, " ", null, null, 0, null, 62);
    }

    public final boolean trimFromEnd$paging_common(boolean z, int i, int i2, Callback callback) {
        callback.getClass();
        int i3 = 0;
        while (needsTrimFromEnd(i, i2)) {
            List<PagingSource.LoadResult.Page<?, T>> list = this.pages;
            int size = list.remove(list.size() - 1).getData().size();
            i3 += size;
            this.dataCount = getDataCount() - size;
        }
        int i4 = this.lastLoadAroundLocalIndex;
        int dataCount = getDataCount() - 1;
        if (i4 > dataCount) {
            i4 = dataCount;
        }
        this.lastLoadAroundLocalIndex = i4;
        if (i3 > 0) {
            int dataCount2 = getDataCount() + getPlaceholdersBefore();
            if (z) {
                this.placeholdersAfter = getPlaceholdersAfter() + i3;
                callback.onPagesSwappedToPlaceholder(dataCount2, i3);
            } else {
                callback.onPagesRemoved(dataCount2, i3);
            }
        }
        return i3 > 0;
    }

    public final boolean trimFromFront$paging_common(boolean z, int i, int i2, Callback callback) {
        callback.getClass();
        int i3 = 0;
        while (needsTrimFromFront(i, i2)) {
            int size = this.pages.remove(0).getData().size();
            i3 += size;
            this.dataCount = getDataCount() - size;
        }
        int i4 = this.lastLoadAroundLocalIndex - i3;
        if (i4 < 0) {
            i4 = 0;
        }
        this.lastLoadAroundLocalIndex = i4;
        if (i3 > 0) {
            if (z) {
                int placeholdersBefore = getPlaceholdersBefore();
                this.placeholdersBefore = getPlaceholdersBefore() + i3;
                callback.onPagesSwappedToPlaceholder(placeholdersBefore, i3);
            } else {
                this.positionOffset += i3;
                callback.onPagesRemoved(getPlaceholdersBefore(), i3);
            }
        }
        return i3 > 0;
    }

    public final void init(int i, PagingSource.LoadResult.Page<?, T> page, int i2, int i3, Callback callback, boolean z) {
        page.getClass();
        callback.getClass();
        init(i, page, i2, i3, z);
        callback.onInitialized(size());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PagedStorage(int i, PagingSource.LoadResult.Page<?, T> page, int i2) {
        this();
        page.getClass();
        init(i, page, i2, 0, true);
    }

    public PagedStorage() {
        this.pages = new ArrayList();
        this.counted = true;
    }
}
