package androidx.compose.foundation;

import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;

/* JADX INFO: loaded from: classes.dex */
public interface GestureConnection {
    default boolean isInterested(IndirectPointerInputChange indirectPointerInputChange) {
        return false;
    }

    default boolean isInterested(PointerInputChange pointerInputChange) {
        return false;
    }
}
