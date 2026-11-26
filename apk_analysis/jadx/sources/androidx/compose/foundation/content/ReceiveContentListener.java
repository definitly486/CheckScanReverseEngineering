package androidx.compose.foundation.content;

/* JADX INFO: loaded from: classes.dex */
public interface ReceiveContentListener {
    default void onDragEnd() {
    }

    default void onDragEnter() {
    }

    default void onDragExit() {
    }

    default void onDragStart() {
    }

    TransferableContent onReceive(TransferableContent transferableContent);
}
