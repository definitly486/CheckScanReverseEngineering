package androidx.paging;

import androidx.recyclerview.widget.ListUpdateCallback;

/* JADX INFO: loaded from: classes3.dex */
public final class DistinctListsDiffDispatcher {
    public static final DistinctListsDiffDispatcher INSTANCE = new DistinctListsDiffDispatcher();

    private DistinctListsDiffDispatcher() {
    }

    private final void dispatchChange(ListUpdateCallback listUpdateCallback, int i, int i2, int i3, int i4, Object obj) {
        int i5 = i - i3;
        if (i5 > 0) {
            listUpdateCallback.onChanged(i3, i5, obj);
        }
        int i6 = i4 - i2;
        if (i6 > 0) {
            listUpdateCallback.onChanged(i2, i6, obj);
        }
    }

    public final <T> void dispatchDiff(ListUpdateCallback listUpdateCallback, PlaceholderPaddedList<T> placeholderPaddedList, PlaceholderPaddedList<T> placeholderPaddedList2) {
        listUpdateCallback.getClass();
        placeholderPaddedList.getClass();
        placeholderPaddedList2.getClass();
        int iMax = Math.max(placeholderPaddedList.getPlaceholdersBefore(), placeholderPaddedList2.getPlaceholdersBefore());
        int iMin = Math.min(placeholderPaddedList.getDataCount() + placeholderPaddedList.getPlaceholdersBefore(), placeholderPaddedList2.getDataCount() + placeholderPaddedList2.getPlaceholdersBefore());
        int i = iMin - iMax;
        if (i > 0) {
            listUpdateCallback.onRemoved(iMax, i);
            listUpdateCallback.onInserted(iMax, i);
        }
        int iMin2 = Math.min(iMax, iMin);
        int iMax2 = Math.max(iMax, iMin);
        int placeholdersBefore = placeholderPaddedList.getPlaceholdersBefore();
        int size = placeholderPaddedList2.getSize();
        int i2 = placeholdersBefore > size ? size : placeholdersBefore;
        int dataCount = placeholderPaddedList.getDataCount() + placeholderPaddedList.getPlaceholdersBefore();
        int size2 = placeholderPaddedList2.getSize();
        dispatchChange(listUpdateCallback, iMin2, iMax2, i2, dataCount > size2 ? size2 : dataCount, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
        int placeholdersBefore2 = placeholderPaddedList2.getPlaceholdersBefore();
        int size3 = placeholderPaddedList.getSize();
        int i3 = placeholdersBefore2 > size3 ? size3 : placeholdersBefore2;
        int dataCount2 = placeholderPaddedList2.getDataCount() + placeholderPaddedList2.getPlaceholdersBefore();
        int size4 = placeholderPaddedList.getSize();
        dispatchChange(listUpdateCallback, iMin2, iMax2, i3, dataCount2 > size4 ? size4 : dataCount2, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
        int size5 = placeholderPaddedList2.getSize() - placeholderPaddedList.getSize();
        if (size5 > 0) {
            listUpdateCallback.onInserted(placeholderPaddedList.getSize(), size5);
        } else if (size5 < 0) {
            listUpdateCallback.onRemoved(placeholderPaddedList.getSize() + size5, -size5);
        }
    }
}
