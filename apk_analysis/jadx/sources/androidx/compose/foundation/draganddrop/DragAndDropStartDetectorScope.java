package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface DragAndDropStartDetectorScope extends PointerInputScope {
    /* JADX INFO: renamed from: requestDragAndDropTransfer-k-4lQ0M$default, reason: not valid java name */
    static /* synthetic */ void m1439requestDragAndDropTransferk4lQ0M$default(DragAndDropStartDetectorScope dragAndDropStartDetectorScope, long j, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: requestDragAndDropTransfer-k-4lQ0M");
            return;
        }
        if ((i & 1) != 0) {
            j = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        dragAndDropStartDetectorScope.mo1426requestDragAndDropTransferk4lQ0M(j);
    }

    /* JADX INFO: renamed from: requestDragAndDropTransfer-k-4lQ0M */
    void mo1426requestDragAndDropTransferk4lQ0M(long j);
}
