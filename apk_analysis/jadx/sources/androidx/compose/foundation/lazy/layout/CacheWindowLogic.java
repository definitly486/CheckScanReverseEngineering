package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntIntMapKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CacheWindowLogic {
    public static final int $stable = 8;
    private final LazyLayoutCacheWindow cacheWindow;
    private final boolean enableInitialPrefetch;
    private boolean hasUpdatedVisibleItemsOnce;
    private final MutableIntSet indicesToRemove;
    private int itemsCount;
    private int prefetchWindowEndExtraSpace;
    private int prefetchWindowEndLine;
    private final MutableIntObjectMap<List<LazyLayoutPrefetchState.PrefetchHandle>> prefetchWindowHandles;
    private int prefetchWindowStartExtraSpace;
    private int prefetchWindowStartLine;
    private float previousPassDelta;
    private int previousPassItemCount;
    private boolean shouldRefillWindow;
    private final MutableIntIntMap windowCache;
    private final MutableIntObjectMap<CachedItem> windowCacheWithItems;

    public CacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, boolean z) {
        this.cacheWindow = lazyLayoutCacheWindow;
        this.enableInitialPrefetch = z;
        this.prefetchWindowHandles = IntObjectMapKt.mutableIntObjectMapOf();
        this.indicesToRemove = IntSetKt.mutableIntSetOf();
        this.windowCache = IntIntMapKt.mutableIntIntMapOf();
        this.windowCacheWithItems = IntObjectMapKt.mutableIntObjectMapOf();
        this.previousPassItemCount = -1;
        this.prefetchWindowStartLine = Integer.MAX_VALUE;
        this.prefetchWindowEndLine = Integer.MIN_VALUE;
    }

    private final void cachePrefetchedItem(int i, int i2) {
        if (ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
            this.windowCacheWithItems.set(i, updateOrCreateCachedItem(i, i2, CachedItem.NoKey));
        } else {
            this.windowCache.set(i, i2);
        }
        if (i > this.prefetchWindowEndLine) {
            this.prefetchWindowEndLine = i;
            this.prefetchWindowEndExtraSpace -= i2;
        } else if (i < this.prefetchWindowStartLine) {
            this.prefetchWindowStartLine = i;
            this.prefetchWindowStartExtraSpace -= i2;
        }
    }

    private final void cacheVisibleItemsInfo(int i, Object obj, int i2) {
        if (this.windowCacheWithItems.containsKey(i)) {
            CachedItem cachedItem = this.windowCacheWithItems.get(i);
            cachedItem.getClass();
            int mainAxisSize = cachedItem.getMainAxisSize();
            CachedItem cachedItem2 = this.windowCacheWithItems.get(i);
            cachedItem2.getClass();
            Object key = cachedItem2.getKey();
            if (mainAxisSize != i2 || !aa4.e(key, obj)) {
                this.shouldRefillWindow = true;
            }
        }
        this.windowCacheWithItems.set(i, updateOrCreateCachedItem(i, i2, obj));
        this.prefetchWindowStartLine = Math.min(this.prefetchWindowStartLine, i);
        this.prefetchWindowEndLine = Math.max(this.prefetchWindowEndLine, i);
        List<LazyLayoutPrefetchState.PrefetchHandle> listRemove = this.prefetchWindowHandles.remove(i);
        if (listRemove != null) {
            int size = listRemove.size();
            for (int i3 = 0; i3 < size; i3++) {
                listRemove.get(i3).cancel();
            }
        }
    }

    private final void cacheVisibleItemsInfoWithoutFix(int i, int i2) {
        if (this.windowCache.containsKey(i) && this.windowCache.get(i) != i2) {
            this.shouldRefillWindow = true;
        }
        this.windowCache.set(i, i2);
        this.prefetchWindowStartLine = Math.min(this.prefetchWindowStartLine, i);
        this.prefetchWindowEndLine = Math.max(this.prefetchWindowEndLine, i);
        List<LazyLayoutPrefetchState.PrefetchHandle> listRemove = this.prefetchWindowHandles.remove(i);
        if (listRemove != null) {
            int size = listRemove.size();
            for (int i3 = 0; i3 < size; i3++) {
                listRemove.get(i3).cancel();
            }
        }
    }

    private final void fillCacheWindowBackward(CacheWindowScope cacheWindowScope, float f) {
        if (cacheWindowScope.getHasVisibleItems()) {
            int mainAxisViewportSize = cacheWindowScope.getMainAxisViewportSize();
            LazyLayoutCacheWindow lazyLayoutCacheWindow = this.cacheWindow;
            Density density = cacheWindowScope.getDensity();
            int iCalculateBehindWindow = density != null ? lazyLayoutCacheWindow.calculateBehindWindow(density, mainAxisViewportSize) : 0;
            this.itemsCount = cacheWindowScope.getTotalItemsCount();
            onKeepAround(cacheWindowScope.getFirstVisibleLineIndex(), cacheWindowScope.getLastVisibleLineIndex(), cacheWindowScope.getMainAxisExtraSpaceEnd(), cacheWindowScope.getMainAxisExtraSpaceStart(), iCalculateBehindWindow, f, cacheWindowScope.getTotalItemsCount());
        }
    }

    private final void fillCacheWindowForward(CacheWindowScope cacheWindowScope, float f) {
        if (cacheWindowScope.getHasVisibleItems()) {
            int mainAxisViewportSize = cacheWindowScope.getMainAxisViewportSize();
            LazyLayoutCacheWindow lazyLayoutCacheWindow = this.cacheWindow;
            Density density = cacheWindowScope.getDensity();
            int iCalculateAheadWindow = density != null ? lazyLayoutCacheWindow.calculateAheadWindow(density, mainAxisViewportSize) : 0;
            onPrefetchForward(cacheWindowScope, cacheWindowScope.getFirstVisibleLineIndex(), cacheWindowScope.getLastVisibleLineIndex(), iCalculateAheadWindow, cacheWindowScope.getMainAxisExtraSpaceEnd(), cacheWindowScope.getMainAxisExtraSpaceStart(), f, f <= 0.0f);
        }
    }

    private final int getItemSizeOrPrefetch(final CacheWindowScope cacheWindowScope, int i, boolean z) {
        List<LazyLayoutPrefetchState.PrefetchHandle> list;
        List<LazyLayoutPrefetchState.PrefetchHandle> list2;
        List<LazyLayoutPrefetchState.PrefetchHandle> list3;
        List<LazyLayoutPrefetchState.PrefetchHandle> list4;
        int i2 = 0;
        if (!ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
            if (this.windowCache.containsKey(i)) {
                return this.windowCache.get(i);
            }
            if (this.prefetchWindowHandles.containsKey(i)) {
                if (!z || (list2 = this.prefetchWindowHandles.get(i)) == null) {
                    return -1;
                }
                int size = list2.size();
                while (i2 < size) {
                    list2.get(i2).markAsUrgent();
                    i2++;
                }
                return -1;
            }
            this.prefetchWindowHandles.set(i, cacheWindowScope.schedulePrefetch(i, new bm3() { // from class: wx0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return CacheWindowLogic.getItemSizeOrPrefetch$lambda$10(this.b, cacheWindowScope, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            }));
            if (!z || (list = this.prefetchWindowHandles.get(i)) == null) {
                return -1;
            }
            int size2 = list.size();
            while (i2 < size2) {
                list.get(i2).markAsUrgent();
                i2++;
            }
            return -1;
        }
        if (this.windowCacheWithItems.containsKey(i)) {
            CachedItem cachedItem = this.windowCacheWithItems.get(i);
            cachedItem.getClass();
            return cachedItem.getMainAxisSize();
        }
        if (this.prefetchWindowHandles.containsKey(i)) {
            if (!z || (list4 = this.prefetchWindowHandles.get(i)) == null) {
                return -1;
            }
            int size3 = list4.size();
            while (i2 < size3) {
                list4.get(i2).markAsUrgent();
                i2++;
            }
            return -1;
        }
        this.prefetchWindowHandles.set(i, cacheWindowScope.schedulePrefetch(i, new bm3() { // from class: vx0
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return CacheWindowLogic.getItemSizeOrPrefetch$lambda$4(this.b, cacheWindowScope, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        }));
        if (!z || (list3 = this.prefetchWindowHandles.get(i)) == null) {
            return -1;
        }
        int size4 = list3.size();
        while (i2 < size4) {
            list3.get(i2).markAsUrgent();
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 getItemSizeOrPrefetch$lambda$10(CacheWindowLogic cacheWindowLogic, CacheWindowScope cacheWindowScope, int i, int i2) {
        cacheWindowLogic.onItemPrefetched(cacheWindowScope, i, i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 getItemSizeOrPrefetch$lambda$4(CacheWindowLogic cacheWindowLogic, CacheWindowScope cacheWindowScope, int i, int i2) {
        cacheWindowLogic.onItemPrefetched(cacheWindowScope, i, i2);
        return j59.a;
    }

    private final void onDatasetChanged(CacheWindowScope cacheWindowScope) {
        this.shouldRefillWindow = true;
        if (cacheWindowScope.getHasVisibleItems()) {
            int i = this.prefetchWindowStartLine;
            if (i < 0) {
                i = 0;
            }
            this.prefetchWindowStartLine = i;
            int lastLineIndex = cacheWindowScope.getLastLineIndex();
            if (lastLineIndex != -1) {
                int i2 = this.prefetchWindowEndLine;
                if (i2 <= lastLineIndex) {
                    lastLineIndex = i2;
                }
                this.prefetchWindowEndLine = lastLineIndex;
            }
            if (this.previousPassDelta <= 0.0f) {
                removeOutOfBoundsItems(cacheWindowScope.getLastVisibleLineIndex(), this.itemsCount - 1);
            } else {
                removeOutOfBoundsItems(0, cacheWindowScope.getFirstVisibleLineIndex());
            }
        }
    }

    private final void onDatasetChangedWithoutFix(CacheWindowScope cacheWindowScope) {
        this.shouldRefillWindow = true;
        int i = this.prefetchWindowStartLine;
        if (i < 0) {
            i = 0;
        }
        this.prefetchWindowStartLine = i;
        int lastLineIndex = cacheWindowScope.getLastLineIndex();
        if (lastLineIndex != -1) {
            int i2 = this.prefetchWindowEndLine;
            if (i2 <= lastLineIndex) {
                lastLineIndex = i2;
            }
            this.prefetchWindowEndLine = lastLineIndex;
        }
        removeOutOfBoundsItems(this.prefetchWindowEndLine, this.itemsCount - 1);
    }

    private final void onItemPrefetched(CacheWindowScope cacheWindowScope, int i, int i2) {
        cachePrefetchedItem(i, i2);
        scheduleNextItemIfNeeded(cacheWindowScope);
        traceWindowInfo();
    }

    private final void onKeepAround(int i, int i2, int i3, int i4, int i5, float f, int i6) {
        int i7;
        int mainAxisSize;
        int i8;
        int mainAxisSize2;
        if (f <= 0.0f) {
            this.prefetchWindowStartExtraSpace = i5 - i4;
            this.prefetchWindowStartLine = i;
            while (this.prefetchWindowStartExtraSpace > 0 && (i8 = this.prefetchWindowStartLine) > 0) {
                if (!ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
                    if (!this.windowCache.containsKey(i8 - 1)) {
                        break;
                    }
                    mainAxisSize2 = this.windowCache.get(this.prefetchWindowStartLine - 1);
                    this.prefetchWindowStartLine--;
                    this.prefetchWindowStartExtraSpace -= mainAxisSize2;
                } else {
                    if (!this.windowCacheWithItems.containsKey(i8 - 1)) {
                        break;
                    }
                    CachedItem cachedItem = this.windowCacheWithItems.get(this.prefetchWindowStartLine - 1);
                    cachedItem.getClass();
                    mainAxisSize2 = cachedItem.getMainAxisSize();
                    this.prefetchWindowStartLine--;
                    this.prefetchWindowStartExtraSpace -= mainAxisSize2;
                }
            }
            removeOutOfBoundsItems(0, this.prefetchWindowStartLine - 1);
            return;
        }
        this.prefetchWindowEndExtraSpace = i5 - i3;
        this.prefetchWindowEndLine = i2;
        while (this.prefetchWindowEndExtraSpace > 0 && (i7 = this.prefetchWindowEndLine) < i6 - 1) {
            if (!ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
                if (!this.windowCache.containsKey(i7 + 1)) {
                    break;
                }
                mainAxisSize = this.windowCache.get(this.prefetchWindowEndLine + 1);
                this.prefetchWindowEndLine++;
                this.prefetchWindowEndExtraSpace -= mainAxisSize;
            } else {
                if (!this.windowCacheWithItems.containsKey(i7 + 1)) {
                    break;
                }
                CachedItem cachedItem2 = this.windowCacheWithItems.get(this.prefetchWindowEndLine + 1);
                cachedItem2.getClass();
                mainAxisSize = cachedItem2.getMainAxisSize();
                this.prefetchWindowEndLine++;
                this.prefetchWindowEndExtraSpace -= mainAxisSize;
            }
        }
        removeOutOfBoundsItems(this.prefetchWindowEndLine + 1, i6 - 1);
    }

    private final void onPrefetchForward(CacheWindowScope cacheWindowScope, int i, int i2, int i3, int i4, int i5, float f, boolean z) {
        int i6;
        boolean z2 = Math.signum(f) == Math.signum(this.previousPassDelta);
        if (!z) {
            if (!z2 || this.shouldRefillWindow) {
                this.prefetchWindowStartExtraSpace = i3 - i5;
                this.prefetchWindowStartLine = i;
            } else {
                int iB = w65.b(Math.abs(f)) + this.prefetchWindowStartExtraSpace;
                int i7 = i3 - i5;
                if (iB > i7) {
                    iB = i7;
                }
                this.prefetchWindowStartExtraSpace = iB;
            }
            while (this.prefetchWindowStartExtraSpace > 0 && (i6 = this.prefetchWindowStartLine) > 0) {
                int itemSizeOrPrefetch = getItemSizeOrPrefetch(cacheWindowScope, this.prefetchWindowStartLine - 1, i6 + (-1) == i + (-1) && (!ComposeFoundationFlags.isCacheWindowRefillFixEnabled || (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1)) != 0) && Math.abs(f) >= ((float) i5));
                if (itemSizeOrPrefetch == -1) {
                    return;
                }
                this.prefetchWindowStartLine--;
                this.prefetchWindowStartExtraSpace -= itemSizeOrPrefetch;
            }
            return;
        }
        if (!z2 || this.shouldRefillWindow) {
            this.prefetchWindowEndExtraSpace = i3 - i4;
            this.prefetchWindowEndLine = i2;
        } else {
            int iB2 = w65.b(Math.abs(f)) + this.prefetchWindowEndExtraSpace;
            int i8 = i3 - i4;
            if (iB2 > i8) {
                iB2 = i8;
            }
            this.prefetchWindowEndExtraSpace = iB2;
        }
        while (this.prefetchWindowEndExtraSpace > 0 && cacheWindowScope.getLastIndexInLine(this.prefetchWindowEndLine) != -1 && cacheWindowScope.getLastIndexInLine(this.prefetchWindowEndLine) < this.itemsCount - 1) {
            int itemSizeOrPrefetch2 = getItemSizeOrPrefetch(cacheWindowScope, this.prefetchWindowEndLine + 1, this.prefetchWindowEndLine + 1 == i2 + 1 && (!ComposeFoundationFlags.isCacheWindowRefillFixEnabled || (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1)) != 0) && Math.abs(f) >= ((float) i4));
            if (itemSizeOrPrefetch2 == -1) {
                return;
            }
            this.prefetchWindowEndLine++;
            this.prefetchWindowEndExtraSpace -= itemSizeOrPrefetch2;
        }
    }

    private final void refillWindow(CacheWindowScope cacheWindowScope, boolean z) {
        if (cacheWindowScope.getHasVisibleItems()) {
            int mainAxisViewportSize = cacheWindowScope.getMainAxisViewportSize();
            LazyLayoutCacheWindow lazyLayoutCacheWindow = this.cacheWindow;
            Density density = cacheWindowScope.getDensity();
            onPrefetchForward(cacheWindowScope, cacheWindowScope.getFirstVisibleLineIndex(), cacheWindowScope.getLastVisibleLineIndex(), density != null ? lazyLayoutCacheWindow.calculateAheadWindow(density, mainAxisViewportSize) : 0, cacheWindowScope.getMainAxisExtraSpaceEnd(), cacheWindowScope.getMainAxisExtraSpaceStart(), 0.0f, z);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8 A[LOOP:2: B:28:0x0086->B:41:0x00b8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9 A[LOOP:4: B:45:0x00c7->B:58:0x00f9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:85:0x00bb A[EDGE_INSN: B:85:0x00bb->B:42:0x00bb BREAK  A[LOOP:2: B:28:0x0086->B:41:0x00b8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00fc A[EDGE_INSN: B:92:0x00fc->B:59:0x00fc BREAK  A[LOOP:4: B:45:0x00c7->B:58:0x00f9], SYNTHETIC] */
    private final void removeOutOfBoundsItems(int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        int i3;
        int i4;
        char c2;
        this.indicesToRemove.clear();
        MutableIntObjectMap<List<LazyLayoutPrefetchState.PrefetchHandle>> mutableIntObjectMap = this.prefetchWindowHandles;
        int[] iArr = mutableIntObjectMap.keys;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        char c3 = 7;
        long j4 = -9187201950435737472L;
        if (length >= 0) {
            int i5 = 0;
            j2 = 128;
            while (true) {
                long j5 = jArr[i5];
                j3 = 255;
                if ((((~j5) << c3) & j5 & j4) != j4) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j5 & 255) < 128) {
                            c2 = c3;
                            int i8 = iArr[(i5 << 3) + i7];
                            if (i <= i8 && i8 <= i2) {
                                this.indicesToRemove.add(i8);
                            }
                            j5 >>= 8;
                            i7++;
                            c3 = c2;
                            j4 = j4;
                        } else {
                            c2 = c3;
                        }
                        j5 >>= 8;
                        i7++;
                        c3 = c2;
                        j4 = j4;
                    }
                    c = c3;
                    j = j4;
                    if (i6 != 8) {
                        break;
                    }
                } else {
                    c = c3;
                    j = j4;
                }
                if (i5 == length) {
                    break;
                }
                i5++;
                c3 = c;
                j4 = j;
            }
        } else {
            c = 7;
            j = -9187201950435737472L;
            j2 = 128;
            j3 = 255;
        }
        MutableIntIntMap mutableIntIntMap = this.windowCache;
        int[] iArr2 = mutableIntIntMap.keys;
        long[] jArr2 = mutableIntIntMap.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i9 = 0;
            while (true) {
                long j6 = jArr2[i9];
                if ((((~j6) << c) & j6 & j) == j) {
                    if (i9 != length2) {
                        break;
                        break;
                    }
                    i9++;
                } else {
                    int i10 = 8 - ((~(i9 - length2)) >>> 31);
                    for (int i11 = 0; i11 < i10; i11++) {
                        if ((j6 & j3) < j2 && i <= (i4 = iArr2[(i9 << 3) + i11]) && i4 <= i2) {
                            this.indicesToRemove.add(i4);
                        }
                        j6 >>= 8;
                    }
                    if (i10 != 8) {
                        break;
                    } else if (i9 != length2) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
        }
        MutableIntObjectMap<CachedItem> mutableIntObjectMap2 = this.windowCacheWithItems;
        int[] iArr3 = mutableIntObjectMap2.keys;
        long[] jArr3 = mutableIntObjectMap2.metadata;
        int length3 = jArr3.length - 2;
        if (length3 >= 0) {
            int i12 = 0;
            while (true) {
                long j7 = jArr3[i12];
                if ((((~j7) << c) & j7 & j) == j) {
                    if (i12 != length3) {
                        break;
                        break;
                    }
                    i12++;
                } else {
                    int i13 = 8 - ((~(i12 - length3)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((j7 & j3) < j2 && i <= (i3 = iArr3[(i12 << 3) + i14]) && i3 <= i2) {
                            this.indicesToRemove.add(i3);
                        }
                        j7 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    } else if (i12 != length3) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
        }
        MutableIntSet mutableIntSet = this.indicesToRemove;
        int[] iArr4 = mutableIntSet.elements;
        long[] jArr4 = mutableIntSet.metadata;
        int length4 = jArr4.length - 2;
        if (length4 < 0) {
            return;
        }
        int i15 = 0;
        while (true) {
            long j8 = jArr4[i15];
            if ((((~j8) << c) & j8 & j) != j) {
                int i16 = 8 - ((~(i15 - length4)) >>> 31);
                for (int i17 = 0; i17 < i16; i17++) {
                    if ((j8 & j3) < j2) {
                        int i18 = iArr4[(i15 << 3) + i17];
                        List<LazyLayoutPrefetchState.PrefetchHandle> listRemove = this.prefetchWindowHandles.remove(i18);
                        if (listRemove != null) {
                            int size = listRemove.size();
                            for (int i19 = 0; i19 < size; i19++) {
                                listRemove.get(i19).cancel();
                            }
                        }
                        this.windowCache.remove(i18);
                        this.windowCacheWithItems.remove(i18);
                    }
                    j8 >>= 8;
                }
                if (i16 != 8) {
                    return;
                }
            }
            if (i15 == length4) {
                return;
            } else {
                i15++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    private final void scheduleNextItemIfNeeded(final CacheWindowScope cacheWindowScope) {
        int i;
        if (Math.signum(this.previousPassDelta) <= 0.0f) {
            if (this.prefetchWindowEndExtraSpace > 0) {
                i = this.prefetchWindowEndLine + 1;
            } else {
                i = -1;
            }
        } else if (Math.signum(this.previousPassDelta) <= 0.0f || this.prefetchWindowStartExtraSpace <= 0) {
            i = -1;
        } else {
            i = this.prefetchWindowStartLine - 1;
        }
        if (i <= 0 || cacheWindowScope.getLastIndexInLine(i) == -1 || cacheWindowScope.getLastIndexInLine(i) >= this.itemsCount) {
            return;
        }
        this.prefetchWindowHandles.set(i, cacheWindowScope.schedulePrefetch(i, new bm3() { // from class: xx0
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return CacheWindowLogic.scheduleNextItemIfNeeded$lambda$1(this.b, cacheWindowScope, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 scheduleNextItemIfNeeded$lambda$1(CacheWindowLogic cacheWindowLogic, CacheWindowScope cacheWindowScope, int i, int i2) {
        cacheWindowLogic.onItemPrefetched(cacheWindowScope, i, i2);
        return j59.a;
    }

    private final void traceWindowInfo() {
        AndroidTrace_androidKt.traceValue("prefetchWindowStartExtraSpace", this.prefetchWindowStartExtraSpace);
        AndroidTrace_androidKt.traceValue("prefetchWindowEndExtraSpace", this.prefetchWindowEndExtraSpace);
        AndroidTrace_androidKt.traceValue("prefetchWindowStartIndex", this.prefetchWindowStartLine);
        AndroidTrace_androidKt.traceValue("prefetchWindowEndIndex", this.prefetchWindowEndLine);
    }

    private final CachedItem updateOrCreateCachedItem(int i, int i2, Object obj) {
        CachedItem cachedItem = this.windowCacheWithItems.get(i);
        if (cachedItem == null) {
            return new CachedItem(obj, i2);
        }
        cachedItem.setMainAxisSize(i2);
        cachedItem.setKey(obj);
        return cachedItem;
    }

    public final int getPrefetchWindowEndLine$foundation() {
        return this.prefetchWindowEndLine;
    }

    public final int getPrefetchWindowStartLine$foundation() {
        return this.prefetchWindowStartLine;
    }

    public final boolean hasValidBounds() {
        return (this.prefetchWindowStartLine == Integer.MAX_VALUE || this.prefetchWindowEndLine == Integer.MIN_VALUE) ? false : true;
    }

    public final void onScroll(CacheWindowScope cacheWindowScope, float f) {
        traceWindowInfo();
        fillCacheWindowBackward(cacheWindowScope, f);
        fillCacheWindowForward(cacheWindowScope, f);
        this.previousPassDelta = f;
        traceWindowInfo();
    }

    public final void onVisibleItemsUpdated(CacheWindowScope cacheWindowScope) {
        if (!this.hasUpdatedVisibleItemsOnce && this.enableInitialPrefetch) {
            LazyLayoutCacheWindow lazyLayoutCacheWindow = this.cacheWindow;
            Density density = cacheWindowScope.getDensity();
            if ((density != null ? lazyLayoutCacheWindow.calculateAheadWindow(density, cacheWindowScope.getMainAxisViewportSize()) : 0) != 0) {
                this.shouldRefillWindow = true;
            }
            this.hasUpdatedVisibleItemsOnce = true;
        }
        int i = this.previousPassItemCount;
        if (i != -1 && i != cacheWindowScope.getTotalItemsCount()) {
            if (ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
                onDatasetChanged(cacheWindowScope);
            } else {
                onDatasetChangedWithoutFix(cacheWindowScope);
            }
        }
        this.itemsCount = cacheWindowScope.getTotalItemsCount();
        if (cacheWindowScope.getHasVisibleItems()) {
            int visibleLineCount = cacheWindowScope.getVisibleLineCount();
            for (int i2 = 0; i2 < visibleLineCount; i2++) {
                int visibleItemLine = cacheWindowScope.getVisibleItemLine(i2);
                Object visibleLineKey = cacheWindowScope.getVisibleLineKey(i2);
                int visibleItemSize = cacheWindowScope.getVisibleItemSize(i2);
                if (ComposeFoundationFlags.isCacheWindowRefillFixEnabled) {
                    if (visibleItemLine != -1) {
                        cacheVisibleItemsInfo(visibleItemLine, visibleLineKey, visibleItemSize);
                    }
                } else if (visibleItemLine != -1) {
                    cacheVisibleItemsInfoWithoutFix(visibleItemLine, visibleItemSize);
                }
            }
            if (this.shouldRefillWindow) {
                refillWindow(cacheWindowScope, this.previousPassDelta <= 0.0f);
                this.shouldRefillWindow = false;
            }
        } else {
            resetStrategy();
        }
        this.previousPassItemCount = cacheWindowScope.getTotalItemsCount();
    }

    public final void resetStrategy() {
        this.prefetchWindowStartLine = Integer.MAX_VALUE;
        this.prefetchWindowEndLine = Integer.MIN_VALUE;
        this.prefetchWindowStartExtraSpace = 0;
        this.prefetchWindowEndExtraSpace = 0;
        this.shouldRefillWindow = false;
        this.windowCache.clear();
        this.windowCacheWithItems.clear();
        MutableIntObjectMap<List<LazyLayoutPrefetchState.PrefetchHandle>> mutableIntObjectMap = this.prefetchWindowHandles;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = mutableIntObjectMap.keys[i4];
                        List list = (List) mutableIntObjectMap.values[i4];
                        int size = list.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i6)).cancel();
                        }
                        mutableIntObjectMap.removeValueAt(i4);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public /* synthetic */ CacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, boolean z, int i, jh2 jh2Var) {
        this(lazyLayoutCacheWindow, (i & 2) != 0 ? true : z);
    }
}
