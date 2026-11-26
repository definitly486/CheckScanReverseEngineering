package androidx.compose.ui.draganddrop;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDropNode$drag$1 extends gh4 implements bm3<DragAndDropStartTransferScope, Offset, j59> {
    final /* synthetic */ long $decorationSize;
    final /* synthetic */ nl3<DrawScope, j59> $drawDragDecoration;
    final /* synthetic */ DragAndDropTransferData $transferData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropNode$drag$1(DragAndDropTransferData dragAndDropTransferData, long j, nl3<? super DrawScope, j59> nl3Var) {
        super(2);
        this.$transferData = dragAndDropTransferData;
        this.$decorationSize = j;
        this.$drawDragDecoration = nl3Var;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(DragAndDropStartTransferScope dragAndDropStartTransferScope, Offset offset) {
        m5743invokeUv8p0NA(dragAndDropStartTransferScope, offset.m5997unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-Uv8p0NA, reason: not valid java name */
    public final void m5743invokeUv8p0NA(DragAndDropStartTransferScope dragAndDropStartTransferScope, long j) {
        dragAndDropStartTransferScope.mo5737startDragAndDropTransfer12SF9DM(this.$transferData, this.$decorationSize, this.$drawDragDecoration);
    }
}
