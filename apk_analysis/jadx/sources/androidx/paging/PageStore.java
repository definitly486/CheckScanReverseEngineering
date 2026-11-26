package androidx.paging;

import defpackage.aa4;
import defpackage.ah;
import defpackage.bj;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n7;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.u96;
import defpackage.y74;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class PageStore<T> implements PlaceholderPaddedList<T> {
    public static final Companion Companion = new Companion(null);
    private static final PageStore<Object> INITIAL;
    private int dataCount;
    private final List<TransformablePage<T>> pages;
    private int placeholdersAfter;
    private int placeholdersBefore;

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

    static {
        PageEvent.Insert.Companion companion = PageEvent.Insert.Companion;
        List listH = u96.h(TransformablePage.Companion.empty());
        LoadState.NotLoading.Companion companion2 = LoadState.NotLoading.Companion;
        INITIAL = new PageStore<>(PageEvent.Insert.Companion.Refresh$default(companion, listH, 0, 0, new LoadStates(companion2.getIncomplete$paging_common(), companion2.getComplete$paging_common(), companion2.getComplete$paging_common()), null, 16, null));
    }

    public PageStore(List<TransformablePage<T>> list, int i, int i2) {
        list.getClass();
        this.pages = new ArrayList(list);
        this.dataCount = fullCount(list);
        this.placeholdersBefore = i;
        this.placeholdersAfter = i2;
    }

    private final void checkIndex(int i) {
        if (i < 0 || i >= getSize()) {
            bj.d(getSize(), n7.c(i, "Index: ", ", Size: "));
        }
    }

    private final PagingDataEvent<T> dropPages(PageEvent.Drop<T> drop) {
        int iDropPagesWithOffsets = dropPagesWithOffsets(new y74(drop.getMinPageOffset(), drop.getMaxPageOffset(), 1));
        this.dataCount = getDataCount() - iDropPagesWithOffsets;
        if (drop.getLoadType() == LoadType.PREPEND) {
            int placeholdersBefore = getPlaceholdersBefore();
            this.placeholdersBefore = drop.getPlaceholdersRemaining();
            return new PagingDataEvent.DropPrepend(iDropPagesWithOffsets, getPlaceholdersBefore(), placeholdersBefore);
        }
        int placeholdersAfter = getPlaceholdersAfter();
        this.placeholdersAfter = drop.getPlaceholdersRemaining();
        return new PagingDataEvent.DropAppend(getDataCount() + getPlaceholdersBefore(), iDropPagesWithOffsets, drop.getPlaceholdersRemaining(), placeholdersAfter);
    }

    private final int dropPagesWithOffsets(y74 y74Var) {
        Iterator<TransformablePage<T>> it = this.pages.iterator();
        int size = 0;
        while (it.hasNext()) {
            TransformablePage<T> next = it.next();
            for (int i : next.getOriginalPageOffsets()) {
                if (y74Var.c(i)) {
                    size += next.getData().size();
                    it.remove();
                    break;
                }
            }
        }
        return size;
    }

    private final int fullCount(List<TransformablePage<T>> list) {
        Iterator<T> it = list.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((TransformablePage) it.next()).getData().size();
        }
        return size;
    }

    private final int getOriginalPageOffsetFirst() {
        Integer numY = yr.Y(((TransformablePage) qn1.T(this.pages)).getOriginalPageOffsets());
        numY.getClass();
        return numY.intValue();
    }

    private final int getOriginalPageOffsetLast() {
        Integer numValueOf;
        int[] originalPageOffsets = ((TransformablePage) qn1.b0(this.pages)).getOriginalPageOffsets();
        originalPageOffsets.getClass();
        if (originalPageOffsets.length == 0) {
            numValueOf = null;
        } else {
            int i = originalPageOffsets[0];
            int i2 = 1;
            int length = originalPageOffsets.length - 1;
            if (1 <= length) {
                while (true) {
                    int i3 = originalPageOffsets[i2];
                    if (i < i3) {
                        i = i3;
                    }
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            numValueOf = Integer.valueOf(i);
        }
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    private final PagingDataEvent<T> insertPage(PageEvent.Insert<T> insert) {
        int iFullCount = fullCount(insert.getPages());
        int i = WhenMappings.$EnumSwitchMapping$0[insert.getLoadType().ordinal()];
        if (i == 1) {
            ah.f("Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
            return null;
        }
        if (i == 2) {
            int placeholdersBefore = getPlaceholdersBefore();
            this.pages.addAll(0, insert.getPages());
            this.dataCount = getDataCount() + iFullCount;
            this.placeholdersBefore = insert.getPlaceholdersBefore();
            List<TransformablePage<T>> pages = insert.getPages();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = pages.iterator();
            while (it.hasNext()) {
                nn1.s(((TransformablePage) it.next()).getData(), arrayList);
            }
            return new PagingDataEvent.Prepend(arrayList, getPlaceholdersBefore(), placeholdersBefore);
        }
        if (i != 3) {
            me0.e();
            return null;
        }
        int placeholdersAfter = getPlaceholdersAfter();
        int dataCount = getDataCount();
        List<TransformablePage<T>> list = this.pages;
        list.addAll(list.size(), insert.getPages());
        this.dataCount = getDataCount() + iFullCount;
        this.placeholdersAfter = insert.getPlaceholdersAfter();
        int placeholdersBefore2 = getPlaceholdersBefore() + dataCount;
        List<TransformablePage<T>> pages2 = insert.getPages();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = pages2.iterator();
        while (it2.hasNext()) {
            nn1.s(((TransformablePage) it2.next()).getData(), arrayList2);
        }
        return new PagingDataEvent.Append(placeholdersBefore2, arrayList2, getPlaceholdersAfter(), placeholdersAfter);
    }

    public final ViewportHint.Access createAccessHintForIndex(int i) {
        int i2 = 0;
        int placeholdersBefore = i - getPlaceholdersBefore();
        while (placeholdersBefore >= this.pages.get(i2).getData().size() && i2 < u96.g(this.pages)) {
            placeholdersBefore -= this.pages.get(i2).getData().size();
            i2++;
        }
        return this.pages.get(i2).viewportHintFor(placeholdersBefore, i - getPlaceholdersBefore(), ((getSize() - i) - getPlaceholdersAfter()) - 1, getOriginalPageOffsetFirst(), getOriginalPageOffsetLast());
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PageStore)) {
            return false;
        }
        PageStore pageStore = (PageStore) obj;
        return getOriginalPageOffsetFirst() == pageStore.getOriginalPageOffsetFirst() && getOriginalPageOffsetLast() == pageStore.getOriginalPageOffsetLast() && getPlaceholdersBefore() == pageStore.getPlaceholdersBefore() && getPlaceholdersAfter() == pageStore.getPlaceholdersAfter() && aa4.e(this.pages, pageStore.pages);
    }

    public final T get(int i) {
        checkIndex(i);
        int placeholdersBefore = i - getPlaceholdersBefore();
        if (placeholdersBefore < 0 || placeholdersBefore >= getDataCount()) {
            return null;
        }
        return getItem(placeholdersBefore);
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getDataCount() {
        return this.dataCount;
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

    @Override // androidx.paging.PlaceholderPaddedList
    public int getPlaceholdersAfter() {
        return this.placeholdersAfter;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getPlaceholdersBefore() {
        return this.placeholdersBefore;
    }

    @Override // androidx.paging.PlaceholderPaddedList
    public int getSize() {
        return getPlaceholdersAfter() + getDataCount() + getPlaceholdersBefore();
    }

    public int hashCode() {
        return (this.pages.hashCode() * 31) + (getPlaceholdersAfter() * 31) + (getPlaceholdersBefore() * 31) + (getOriginalPageOffsetLast() * 31) + (getOriginalPageOffsetFirst() * 31);
    }

    public final ViewportHint.Initial initializeHint() {
        int dataCount = getDataCount() / 2;
        return new ViewportHint.Initial(dataCount, dataCount, getOriginalPageOffsetFirst(), getOriginalPageOffsetLast());
    }

    public final PagingDataEvent<T> processEvent(PageEvent<T> pageEvent) {
        pageEvent.getClass();
        if (pageEvent instanceof PageEvent.Insert) {
            return insertPage((PageEvent.Insert) pageEvent);
        }
        if (pageEvent instanceof PageEvent.Drop) {
            return dropPages((PageEvent.Drop) pageEvent);
        }
        ah.f("Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106");
        return null;
    }

    public final ItemSnapshotList<T> snapshot() {
        int placeholdersBefore = getPlaceholdersBefore();
        int placeholdersAfter = getPlaceholdersAfter();
        List<TransformablePage<T>> list = this.pages;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            nn1.s(((TransformablePage) it.next()).getData(), arrayList);
        }
        return new ItemSnapshotList<>(placeholdersBefore, placeholdersAfter, arrayList);
    }

    public String toString() {
        int dataCount = getDataCount();
        ArrayList arrayList = new ArrayList(dataCount);
        for (int i = 0; i < dataCount; i++) {
            arrayList.add(getItem(i));
        }
        return "[(" + getPlaceholdersBefore() + " placeholders), " + qn1.a0(arrayList, null, null, null, 0, null, 63) + ", (" + getPlaceholdersAfter() + " placeholders)]";
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final <T> PageStore<T> initial$paging_common(PageEvent.Insert<T> insert) {
            if (insert != null) {
                return new PageStore<>(insert);
            }
            PageStore<T> pageStore = PageStore.INITIAL;
            pageStore.getClass();
            return pageStore;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageStore(PageEvent.Insert<T> insert) {
        this(insert.getPages(), insert.getPlaceholdersBefore(), insert.getPlaceholdersAfter());
        insert.getClass();
    }
}
