package androidx.compose.foundation.lazy;

/* JADX INFO: loaded from: classes.dex */
public interface LazyListItemInfo {
    default Object getContentType() {
        return null;
    }

    int getIndex();

    Object getKey();

    int getOffset();

    int getSize();
}
