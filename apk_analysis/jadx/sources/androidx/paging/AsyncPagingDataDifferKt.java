package androidx.paging;

import defpackage.bj;
import defpackage.n7;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class AsyncPagingDataDifferKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T get(PlaceholderPaddedList<T> placeholderPaddedList, int i) {
        if (i < 0 || i >= placeholderPaddedList.getSize()) {
            bj.d(placeholderPaddedList.getSize(), n7.c(i, "Index: ", ", Size: "));
            return null;
        }
        int placeholdersBefore = i - placeholderPaddedList.getPlaceholdersBefore();
        if (placeholdersBefore < 0 || placeholdersBefore >= placeholderPaddedList.getDataCount()) {
            return null;
        }
        return placeholderPaddedList.getItem(placeholdersBefore);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T peek(PlaceholderPaddedList<T> placeholderPaddedList, int i) {
        return (T) get(placeholderPaddedList, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> ItemSnapshotList<T> snapshot(PlaceholderPaddedList<T> placeholderPaddedList) {
        int dataCount = placeholderPaddedList.getDataCount() - 1;
        ArrayList arrayList = new ArrayList();
        if (dataCount >= 0) {
            int i = 0;
            while (true) {
                arrayList.add(placeholderPaddedList.getItem(i));
                if (i == dataCount) {
                    break;
                }
                i++;
            }
        }
        return new ItemSnapshotList<>(placeholderPaddedList.getPlaceholdersBefore(), placeholderPaddedList.getPlaceholdersAfter(), arrayList);
    }
}
