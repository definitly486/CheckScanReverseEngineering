package androidx.paging;

import defpackage.aa4;
import defpackage.ag;
import defpackage.bm3;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.rg;
import defpackage.u96;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingState<Key, Value> {
    private final Integer anchorPosition;
    private final PagingConfig config;
    private final int leadingPlaceholderCount;
    private final List<PagingSource.LoadResult.Page<Key, Value>> pages;

    public PagingState(List<PagingSource.LoadResult.Page<Key, Value>> list, Integer num, PagingConfig pagingConfig, int i) {
        list.getClass();
        pagingConfig.getClass();
        this.pages = list;
        this.anchorPosition = num;
        this.config = pagingConfig;
        this.leadingPlaceholderCount = i;
    }

    public final <T> T anchorPositionToPagedIndices$paging_common(int i, bm3<? super Integer, ? super Integer, ? extends T> bm3Var) {
        bm3Var.getClass();
        int size = i - this.leadingPlaceholderCount;
        int i2 = 0;
        while (i2 < u96.g(getPages()) && size > u96.g(getPages().get(i2).getData())) {
            size -= getPages().get(i2).getData().size();
            i2++;
        }
        return bm3Var.invoke(Integer.valueOf(i2), Integer.valueOf(size));
    }

    /* JADX WARN: Type inference failed for: r10v5, types: [Value, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v9, types: [Value, java.lang.Object] */
    public final Value closestItemAroundPosition(int i, nl3<? super Value, Boolean> nl3Var) {
        int i2;
        int iNextIndex;
        PagingSource.LoadResult.Page<Key, Value> page;
        PagingSource.LoadResult.Page<Key, Value> page2;
        int i3;
        boolean z;
        boolean z2;
        nl3Var.getClass();
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((PagingSource.LoadResult.Page) it.next()).getData().isEmpty()) {
                    int iG = i - this.leadingPlaceholderCount;
                    int i4 = 0;
                    while (i4 < u96.g(getPages()) && iG > u96.g(getPages().get(i4).getData())) {
                        iG -= getPages().get(i4).getData().size();
                        i4++;
                    }
                    Iterator<PagingSource.LoadResult.Page<Key, Value>> it2 = this.pages.iterator();
                    int i5 = 0;
                    while (true) {
                        i2 = -1;
                        if (!it2.hasNext()) {
                            i5 = -1;
                            break;
                        }
                        if (!it2.next().getData().isEmpty()) {
                            break;
                        }
                        i5++;
                    }
                    List<PagingSource.LoadResult.Page<Key, Value>> list2 = this.pages;
                    ListIterator<PagingSource.LoadResult.Page<Key, Value>> listIterator = list2.listIterator(list2.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            iNextIndex = -1;
                            break;
                        }
                        if (!listIterator.previous().getData().isEmpty()) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    }
                    List<PagingSource.LoadResult.Page<Key, Value>> list3 = this.pages;
                    if (iG < 0) {
                        PagingSource.LoadResult.Page<Key, Value> page3 = list3.get(i5);
                        z2 = false;
                        page = null;
                        i3 = i5;
                        i4 = -1;
                        z = true;
                        page2 = page3;
                        i2 = 0;
                        iG = -1;
                    } else if (i4 != u96.g(list3) || iG <= u96.g(((PagingSource.LoadResult.Page) qn1.b0(this.pages)).getData())) {
                        page = this.pages.get(i4);
                        page2 = this.pages.get(i4);
                        i2 = iG;
                        i3 = i4;
                        z = false;
                        z2 = false;
                    } else {
                        PagingSource.LoadResult.Page<Key, Value> page4 = this.pages.get(iNextIndex);
                        int i6 = iNextIndex;
                        page = page4;
                        iG = u96.g(page4.getData());
                        i4 = i6;
                        z = false;
                        page2 = null;
                        i3 = -1;
                        z2 = true;
                    }
                    while (true) {
                        if (z && z2) {
                            return null;
                        }
                        if (!z) {
                            while (iG < 0) {
                                i4--;
                                if (i4 < 0) {
                                    break;
                                }
                                page = this.pages.get(i4);
                                iG = u96.g(page.getData());
                            }
                            if (i4 < 0) {
                                z = true;
                            } else {
                                page.getClass();
                                Value value = page.getData().get(iG);
                                if (nl3Var.invoke(value).booleanValue()) {
                                    return value;
                                }
                                iG--;
                            }
                        }
                        if (!z2) {
                            while (true) {
                                page2.getClass();
                                if (i2 <= u96.g(page2.getData()) || (i3 = i3 + 1) > u96.g(this.pages)) {
                                    break;
                                }
                                page2 = this.pages.get(i3);
                                i2 = page2.getData().isEmpty() ? Integer.MAX_VALUE : 0;
                            }
                            if (i3 > u96.g(this.pages)) {
                                z2 = true;
                            } else {
                                Value value2 = page2.getData().get(i2);
                                if (nl3Var.invoke(value2).booleanValue()) {
                                    return value2;
                                }
                                i2++;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final Value closestItemToPosition(int i) {
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((PagingSource.LoadResult.Page) it.next()).getData().isEmpty()) {
                    int size = i - this.leadingPlaceholderCount;
                    int i2 = 0;
                    while (i2 < u96.g(getPages()) && size > u96.g(getPages().get(i2).getData())) {
                        size -= getPages().get(i2).getData().size();
                        i2++;
                    }
                    Iterator<T> it2 = this.pages.iterator();
                    while (it2.hasNext()) {
                        PagingSource.LoadResult.Page page = (PagingSource.LoadResult.Page) it2.next();
                        if (!page.getData().isEmpty()) {
                            List<PagingSource.LoadResult.Page<Key, Value>> list2 = this.pages;
                            ListIterator<PagingSource.LoadResult.Page<Key, Value>> listIterator = list2.listIterator(list2.size());
                            while (listIterator.hasPrevious()) {
                                PagingSource.LoadResult.Page<Key, Value> pagePrevious = listIterator.previous();
                                if (!pagePrevious.getData().isEmpty()) {
                                    if (size < 0) {
                                        return (Value) qn1.T(page.getData());
                                    }
                                    return (i2 != u96.g(this.pages) || size <= u96.g(((PagingSource.LoadResult.Page) qn1.b0(this.pages)).getData())) ? this.pages.get(i2).getData().get(size) : (Value) qn1.b0(pagePrevious.getData());
                                }
                            }
                            ag.g("List contains no element matching the predicate.");
                            return null;
                        }
                    }
                    ag.g("Collection contains no element matching the predicate.");
                    break;
                }
            }
        }
        return null;
    }

    public final PagingSource.LoadResult.Page<Key, Value> closestPageToPosition(int i) {
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        if ((list instanceof Collection) && list.isEmpty()) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((PagingSource.LoadResult.Page) it.next()).getData().isEmpty()) {
                int size = i - this.leadingPlaceholderCount;
                int i2 = 0;
                while (i2 < u96.g(getPages()) && size > u96.g(getPages().get(i2).getData())) {
                    size -= getPages().get(i2).getData().size();
                    i2++;
                }
                List<PagingSource.LoadResult.Page<Key, Value>> list2 = this.pages;
                return size < 0 ? (PagingSource.LoadResult.Page) qn1.T(list2) : list2.get(i2);
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PagingState)) {
            return false;
        }
        PagingState pagingState = (PagingState) obj;
        return aa4.e(this.pages, pagingState.pages) && aa4.e(this.anchorPosition, pagingState.anchorPosition) && aa4.e(this.config, pagingState.config) && this.leadingPlaceholderCount == pagingState.leadingPlaceholderCount;
    }

    public final Value firstItemOrNull() {
        Object next;
        List<Value> data;
        Iterator<T> it = this.pages.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((PagingSource.LoadResult.Page) next).getData().isEmpty());
        PagingSource.LoadResult.Page page = (PagingSource.LoadResult.Page) next;
        if (page == null || (data = page.getData()) == null) {
            return null;
        }
        return (Value) qn1.V(data);
    }

    public final Integer getAnchorPosition() {
        return this.anchorPosition;
    }

    public final PagingConfig getConfig() {
        return this.config;
    }

    public final List<PagingSource.LoadResult.Page<Key, Value>> getPages() {
        return this.pages;
    }

    public int hashCode() {
        int iHashCode = this.pages.hashCode();
        Integer num = this.anchorPosition;
        return Integer.hashCode(this.leadingPlaceholderCount) + this.config.hashCode() + iHashCode + (num != null ? num.hashCode() : 0);
    }

    public final boolean isEmpty() {
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((PagingSource.LoadResult.Page) it.next()).getData().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public final Value lastItemOrNull() {
        PagingSource.LoadResult.Page<Key, Value> pagePrevious;
        List<Value> data;
        List<PagingSource.LoadResult.Page<Key, Value>> list = this.pages;
        ListIterator<PagingSource.LoadResult.Page<Key, Value>> listIterator = list.listIterator(list.size());
        do {
            if (!listIterator.hasPrevious()) {
                pagePrevious = null;
                break;
            }
            pagePrevious = listIterator.previous();
        } while (pagePrevious.getData().isEmpty());
        PagingSource.LoadResult.Page<Key, Value> page = pagePrevious;
        if (page == null || (data = page.getData()) == null) {
            return null;
        }
        return (Value) qn1.c0(data);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PagingState(pages=");
        sb.append(this.pages);
        sb.append(", anchorPosition=");
        sb.append(this.anchorPosition);
        sb.append(", config=");
        sb.append(this.config);
        sb.append(", leadingPlaceholderCount=");
        return rg.h(sb, this.leadingPlaceholderCount, ')');
    }
}
