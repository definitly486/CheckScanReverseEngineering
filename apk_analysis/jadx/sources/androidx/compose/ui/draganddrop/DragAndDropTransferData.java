package androidx.compose.ui.draganddrop;

import android.content.ClipData;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropTransferData {
    public static final int $stable = 8;
    private final ClipData clipData;
    private final int flags;
    private final Object localState;

    public /* synthetic */ DragAndDropTransferData(ClipData clipData, Object obj, int i, int i2, jh2 jh2Var) {
        this(clipData, (i2 & 2) != 0 ? null : obj, (i2 & 4) != 0 ? 0 : i);
    }

    public final ClipData getClipData() {
        return this.clipData;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final Object getLocalState() {
        return this.localState;
    }

    public DragAndDropTransferData(ClipData clipData, Object obj, int i) {
        this.clipData = clipData;
        this.localState = obj;
        this.flags = i;
    }
}
