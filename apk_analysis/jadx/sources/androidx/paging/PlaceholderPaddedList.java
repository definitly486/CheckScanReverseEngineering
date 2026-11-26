package androidx.paging;

/* JADX INFO: loaded from: classes3.dex */
public interface PlaceholderPaddedList<T> {
    int getDataCount();

    T getItem(int i);

    int getPlaceholdersAfter();

    int getPlaceholdersBefore();

    int getSize();
}
