package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarMenuState {
    public static final int $stable = 0;
    private final MutableState isExpanded$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);

    private final void setExpanded(boolean z) {
        this.isExpanded$delegate.setValue(Boolean.valueOf(z));
    }

    public final void dismiss() {
        setExpanded(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isExpanded() {
        return ((Boolean) this.isExpanded$delegate.getValue()).booleanValue();
    }

    public final void show() {
        setExpanded(true);
    }
}
