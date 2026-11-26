package androidx.compose.ui.platform;

import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class AndroidComposeView$dragAndDropManager$1 extends qm3 implements dm3<DragAndDropTransferData, Size, nl3<? super DrawScope, ? extends j59>, Boolean> {
    public AndroidComposeView$dragAndDropManager$1(Object obj) {
        super(3, obj, AndroidComposeView.class, "startDrag", "startDrag-12SF9DM(Landroidx/compose/ui/draganddrop/DragAndDropTransferData;JLkotlin/jvm/functions/Function1;)Z", 0);
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Boolean invoke(DragAndDropTransferData dragAndDropTransferData, Size size, nl3<? super DrawScope, ? extends j59> nl3Var) {
        return m8140invoke12SF9DM(dragAndDropTransferData, size.m6061unboximpl(), nl3Var);
    }

    /* JADX INFO: renamed from: invoke-12SF9DM, reason: not valid java name */
    public final Boolean m8140invoke12SF9DM(DragAndDropTransferData dragAndDropTransferData, long j, nl3<? super DrawScope, j59> nl3Var) {
        return Boolean.valueOf(((AndroidComposeView) this.receiver).m8137startDrag12SF9DM(dragAndDropTransferData, j, nl3Var));
    }
}
