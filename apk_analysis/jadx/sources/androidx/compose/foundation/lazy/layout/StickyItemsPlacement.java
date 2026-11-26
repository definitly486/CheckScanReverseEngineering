package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import defpackage.kx6;
import defpackage.y74;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface StickyItemsPlacement {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final StickyItemsPlacement StickToTopPlacement = new StickyItemsPlacement() { // from class: androidx.compose.foundation.lazy.layout.StickyItemsPlacement$Companion$StickToTopPlacement$1
            @Override // androidx.compose.foundation.lazy.layout.StickyItemsPlacement
            public int calculateStickingItemOffset(List<? extends LazyLayoutMeasuredItem> list, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem;
                int size = list.size();
                int i8 = 0;
                while (true) {
                    if (i8 >= size) {
                        lazyLayoutMeasuredItem = null;
                        break;
                    }
                    lazyLayoutMeasuredItem = list.get(i8);
                    if (lazyLayoutMeasuredItem.getIndex() != i) {
                        break;
                    }
                    i8++;
                }
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem2 = lazyLayoutMeasuredItem;
                int mainAxisOffset = lazyLayoutMeasuredItem2 != null ? LazyLayoutStickyItemsKt.getMainAxisOffset(lazyLayoutMeasuredItem2) : Integer.MIN_VALUE;
                int iMax = i3 == Integer.MIN_VALUE ? -i4 : Math.max(-i4, i3);
                return mainAxisOffset != Integer.MIN_VALUE ? Math.min(iMax, mainAxisOffset - i2) : iMax;
            }

            @Override // androidx.compose.foundation.lazy.layout.StickyItemsPlacement
            public IntList getStickingIndices(int i, int i2, IntList intList) {
                int i3;
                if (i2 - i < 0 || (i3 = intList._size) == 0) {
                    return IntListKt.emptyIntList();
                }
                y74 y74VarN = kx6.n(0, i3);
                int i4 = y74VarN.b;
                int i5 = y74VarN.c;
                int i6 = -1;
                if (i4 <= i5) {
                    while (intList.get(i4) <= i) {
                        i6 = intList.get(i4);
                        if (i4 == i5) {
                            break;
                        }
                        i4++;
                    }
                }
                return i6 == -1 ? IntListKt.emptyIntList() : IntListKt.intListOf(i6);
            }
        };

        private Companion() {
        }

        public final StickyItemsPlacement getStickToTopPlacement() {
            return StickToTopPlacement;
        }
    }

    int calculateStickingItemOffset(List<? extends LazyLayoutMeasuredItem> list, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    IntList getStickingIndices(int i, int i2, IntList intList);
}
